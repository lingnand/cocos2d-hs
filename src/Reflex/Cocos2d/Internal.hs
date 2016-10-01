{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE ImpredicativeTypes #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecursiveDo #-}
module Reflex.Cocos2d.Internal
    (
      mainScene
    ) where

import Data.Dependent.Sum (DSum, (==>))
import Data.IORef
import Control.Monad
import Control.Monad.Trans.Class
import Control.Monad.Trans.Reader
import Control.Monad.Trans.State.Strict
import Control.Monad.IO.Class
import Control.Monad.Fix
import Control.Monad.Ref
import Control.Monad.Exception
import Control.Lens
import Reflex
import Reflex.Host.Class

import Graphics.UI.Cocos2d.Node
import Graphics.UI.Cocos2d.Scene
import Graphics.UI.Cocos2d.Director

import Reflex.Cocos2d.Class

-- mostly borrowed from Reflex.Dom.Internal
data GraphEnv t = GraphEnv { _graphParent :: !Node
                           , _graphPostBuildEvent :: !(Event t ())
                           , _graphRunWithActions :: !(([DSum (EventTrigger t) Identity], IO ()) -> IO ())
                           }

makeLenses ''GraphEnv

data GraphState t = GraphState { _graphVoidActions :: ![Event t (HostFrame t ())] }

makeLenses ''GraphState

newtype Graph t a = Graph (ReaderT (GraphEnv t) (StateT (GraphState t) (HostFrame t)) a)

deriving instance Functor (HostFrame t) => Functor (Graph t)
deriving instance Monad (HostFrame t) => Applicative (Graph t)
deriving instance Monad (HostFrame t) => Monad (Graph t)
deriving instance MonadFix (HostFrame t) => MonadFix (Graph t)
deriving instance MonadIO (HostFrame t) => MonadIO (Graph t)
deriving instance MonadException (HostFrame t) => MonadException (Graph t)
deriving instance MonadAsyncException (HostFrame t) => MonadAsyncException (Graph t)

instance (Reflex t, MonadSample t (HostFrame t)) => MonadSample t (Graph t) where
    sample = Graph . lift . lift . sample

instance (Reflex t, MonadHold t (HostFrame t)) => MonadHold t (Graph t) where
    hold v0 = Graph . lift . lift . hold v0
    holdDyn v0 = Graph . lift . lift . holdDyn v0
    holdIncremental v0 = Graph . lift . lift . holdIncremental v0

instance MonadReflexCreateTrigger t (HostFrame t) => MonadReflexCreateTrigger t (Graph t) where
    newEventWithTrigger = Graph . lift . lift . newEventWithTrigger
    newFanEventWithTrigger = Graph . lift . lift . newFanEventWithTrigger

instance (Reflex t, MonadSubscribeEvent t (HostFrame t)) => MonadSubscribeEvent t (Graph t) where
    subscribeEvent = Graph . lift . lift . subscribeEvent

instance MonadRef (HostFrame t) => MonadRef (Graph t) where
    type Ref (Graph t) = Ref (HostFrame t)
    newRef = Graph . lift . lift . newRef
    readRef = Graph . lift . lift . readRef
    writeRef r = Graph . lift . lift . writeRef r

instance ( MonadIO (HostFrame t), Functor (HostFrame t)
         , MonadRef (HostFrame t), Ref (HostFrame t) ~ Ref IO
         , MonadException (HostFrame t), MonadAsyncException (HostFrame t)
         , ReflexHost t ) => NodeGraph t (Graph t) where
    askParent = Graph $ view graphParent
    askPostBuildEvent = Graph $ view graphPostBuildEvent
    subGraph n (Graph c) = Graph $ local (graphParent .~ toNode n) c
    holdGraph p child0 newChild = do
        let p' = toNode p
        vas <- Graph $ use graphVoidActions <* (graphVoidActions .= [])
        result0 <- subGraph p' child0
        vas' <- Graph $ use graphVoidActions <* (graphVoidActions .= vas)
        let voidAction0 = mergeWith (flip (>>)) vas'
        (newChildBuilt, newChildBuiltTriggerRef) <- newEventWithTriggerRef
        runEvent_ =<< switchPromptly voidAction0 (snd <$> newChildBuilt)
        runWithActions <- askRunWithActions
        onEvent_ newChild $ \(Graph g) -> do
            liftIO $ node_removeAllChildren p'
            (postBuildE, postBuildTr) <- newEventWithTriggerRef
            let firePostBuild = readRef postBuildTr >>= mapM_ (\t -> runWithActions ([t ==> ()], return ()))
            (r, GraphState vas) <- runStateT (runReaderT g (GraphEnv p' postBuildE runWithActions)) (GraphState [])
            liftIO $ readRef newChildBuiltTriggerRef
                      >>= mapM_ (\t -> runWithActions ([t ==> (r, mergeWith (flip (>>)) vas)], firePostBuild))
        return (result0, fst <$> newChildBuilt)
    buildEvent newChild = do
        p <- askParent
        (newChildBuilt, newChildBuiltTriggerRef) <- newEventWithTriggerRef
        let onNewChildBuilt :: Event t (HostFrame t ()) -> (a, [Event t (HostFrame t ())]) -> Maybe (Event t (HostFrame t ()))
            onNewChildBuilt _ (_, []) = Nothing
            onNewChildBuilt acc (_, vas) = Just $ mergeWith (>>) (acc:reverse vas)
        runEvent_ . switch =<< accumMaybe onNewChildBuilt (never :: Event t (HostFrame t ())) newChildBuilt
        runWithActions <- askRunWithActions
        onEvent_ newChild $ \(Graph g) -> do
            (postBuildE, postBuildTr) <- newEventWithTriggerRef
            let firePostBuild = readRef postBuildTr >>= mapM_ (\t -> runWithActions ([t ==> ()], return ()))
            (r, GraphState vas) <- runStateT (runReaderT g (GraphEnv p postBuildE runWithActions)) (GraphState [])
            liftIO $ readRef newChildBuiltTriggerRef
                      >>= mapM_ (\t -> runWithActions ([t ==> (r, vas)], firePostBuild))
        return $ fst <$> newChildBuilt
    buildEvent_ = void . buildEvent
    runEvent_ a = Graph $ graphVoidActions %= (a:)
    runEventMaybe e = do
      runWithActions <- askRunWithActions
      (eResult, trigger) <- newEventWithTriggerRef
      onEvent_ e $ \o -> do
          o >>= \case
            Just x -> liftIO $ readRef trigger >>= mapM_ (\t -> runWithActions ([t ==> x], return ()))
            _ -> return ()
      return eResult
    runEvent = runEventMaybe . fmap (Just <$>)
    -- | Generate a new Event that delays the input Event by some frame
    -- (normally fired in the immediate next frame); similar to
    -- setTimeout(0)
    -- this works because it forces a nested runWithActions call which has
    -- to be pushed pending and only fired when the current runWithActions
    -- finishes
    -- delay' = runEvent . fmap return
    askRunWithActions = Graph $ view graphRunWithActions
    askRunWithActionsAsync = Graph $ do
      runWithActions <- view graphRunWithActions
      sch <- liftIO $ director_getInstance >>= director_getScheduler
      return $ scheduler_performFunctionInCocosThread sch . runWithActions

-- | Construct a new scene with a NodeGraph
mainScene :: Graph Spider a -> IO ()
mainScene (Graph g) = do
    scene <- scene_create
    recRef <- newIORef (False, [], []) -- (running, saved_dm)
    runSpiderHost $ mdo
        let processTrigger [] [] = writeIORef recRef (False, [], [])
            processTrigger [] aft = do
              writeIORef recRef (True, [], [])
              foldl (flip (>>)) (return ()) aft
              (_, saved, savedAft) <- readIORef recRef
              processTrigger saved savedAft
            processTrigger es aft = do
              writeIORef recRef (True, [], [])
              runSpiderHost $ do
                  va <- fireEventsAndRead es $ sequence =<< readEvent voidActionHandle
                  runHostFrame $ sequence_ va
              (_, saved, savedAft) <- readIORef recRef
              processTrigger saved (aft++savedAft)
            runWithActions (dm, aft) = do
              (running, saved, savedAft) <- readIORef recRef
              if running
                then writeIORef recRef (running, dm++saved, aft:savedAft)
                else processTrigger dm [aft]
        (postBuildE, postBuildTr) <- newEventWithTriggerRef
        GraphState vas <- runHostFrame $ execStateT (runReaderT g (GraphEnv (toNode scene) postBuildE runWithActions)) (GraphState [])
        voidActionHandle <- subscribeEvent $ mergeWith (flip (>>)) vas
        liftIO $ readRef postBuildTr >>= mapM_ (\t -> runWithActions ([t ==> ()], return ()))
    director_getInstance >>= flip director_runWithScene scene
