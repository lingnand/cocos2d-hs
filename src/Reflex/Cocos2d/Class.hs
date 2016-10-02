{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
module Reflex.Cocos2d.Class
    ( NodeGraphEnv(NodeGraphEnv)
    , currentParent
    , windowSize
    , postBuildEvent
    , frameTicks
    , runWithActions
    , NodeGraph(..)
    , (-<)
    , (-|)
    , (-<<)
    , (<-<)
    , postponeCurrent
    , buildDyn
    , buildDyn'
    , runDyn
    , buildF
    , switchFT
    , runF
    )
  where

import Data.Dependent.Sum (DSum (..))
import Data.Functor.Identity
import Diagrams (V2)
import Control.Monad
import Control.Monad.Trans
import Control.Monad.Fix
import Control.Monad.Ref
import Control.Monad.Trans.Free
import Control.Monad.State.Strict
import Control.Monad.Reader
import Control.Monad.Exception
import Control.Lens
import Reflex
import Reflex.State
import Reflex.Host.Class
import Graphics.UI.Cocos2d.Node

data NodeGraphEnv t = NodeGraphEnv
    { _currentParent  :: !Node
    , _windowSize     :: V2 Float
    , _postBuildEvent :: !(Event t ())
    , _frameTicks     :: !(Event t Float) -- ^ Ticks for each frame in seconds
    , _runWithActions :: !(([DSum (EventTrigger t) Identity], IO ()) -> IO ())
    }
makeLenses ''NodeGraphEnv

class ( ReflexHost t, MonadIO m, MonadIO (HostFrame t), MonadFix m, MonadHold t m
      , MonadRef m, Ref m ~ Ref IO, MonadRef (HostFrame t), Ref (HostFrame t) ~ Ref IO
      , MonadReflexCreateTrigger t m, MonadSubscribeEvent t m
      , MonadReader (NodeGraphEnv t) m
      , MonadException m, MonadAsyncException m
      , MonadException (HostFrame t), MonadAsyncException (HostFrame t) )
      => NodeGraph t m where
    -- this one should be thread-safe
    -- askRunWithActionsAsync :: m (([DSum (EventTrigger t) Identity], IO ()) -> IO ())

    -- Composition primitives
    -- | Run a graph under a given node
    subGraph :: NodePtr n => n -> m a -> m a
    -- | Run a graph with the initial content and the updated content
    -- whenever the event updates
    holdGraph :: NodePtr n => n -> m a -> Event t (m b) -> m (a, Event t b)
    -- | sequencing
    buildEvent :: Event t (m a) -> m (Event t a)
    buildEvent_ :: Event t (m a) -> m ()

    -- misc operations
    -- lower in power (no construction power, but performance-wise better)
    -- this is mostly used inside the library to improve performance
    runEventMaybe :: Event t (HostFrame t (Maybe a)) -> m (Event t a)
    runEvent_ :: Event t (HostFrame t ()) -> m ()
    runEvent :: Event t (HostFrame t a) -> m (Event t a)

    filterMEvent :: (a -> HostFrame t Bool) -> Event t a -> m (Event t a)
    filterMEvent f e = runEventMaybe . ffor e $ \v -> do
                            b <- f v
                            return $ guard b >> return v
    onEventMaybe :: Event t a -> (a -> HostFrame t (Maybe b)) -> m (Event t b)
    onEventMaybe e = runEventMaybe . ffor e
    onEvent :: Event t a -> (a -> HostFrame t b) -> m (Event t b)
    onEvent e = runEvent . ffor e
    onEvent_ :: Event t a -> (a -> HostFrame t ()) -> m ()
    onEvent_ e = runEvent_ . ffor e

-- * Compositions
-- | Embed
-- e.g., @nodeBuilder -< child@
infixr 2 -<
(-<) :: (NodeGraph t m, NodePtr n) => m n -> m a -> m (n, a)
(-<) node child = do
    n <- node
    a <- subGraph n child
    return (n, a)

-- | Hold
-- e.g., @newChild & nodeBuilder -| child0@
infixr 2 -|
(-|) :: (NodeGraph t m, NodePtr n) => m n -> m a -> Event t (m a) -> m (n, Dynamic t a)
(-|) node child0 newChild = do
    n <- node
    (result0, newResult) <- holdGraph n child0 newChild
    dyn <- holdDyn result0 newResult
    return (n, dyn)

-- | View
-- e.g., @nodeBuilder -< child@
infixr 2 -<<
(-<<) :: (NodeGraph t m, NodePtr n) => m n -> Dynamic t (m a) -> m (n, Event t a)
(-<<) node child = do
    n <- node
    (_, evt) <- holdGraph n (return ()) =<< postponeCurrent child
    return (n, evt)

-- | Free
infixr 2 <-<
(<-<) :: (NodeGraph t m, NodePtr n) => m n -> FreeT (Event t) m a -> m (n, Event t a)
(<-<) node ft = mdo
    n <- node
    pe <- view postBuildEvent
    let startE = case result0 of
          Pure a -> return a <$ pe
          Free e -> e
    newFs <- switchPromptly startE $ fmapMaybe previewFree newResult
    (result0, newResult) <- holdGraph n (runFreeT ft) (runFreeT <$> newFs)
    return (n, fmapMaybe previewPure newResult)

-- | Convert to an Event that carries the first value in postBuild
postponeCurrent :: NodeGraph t m => Dynamic t a -> m (Event t a)
postponeCurrent d = do
    pe <- view postBuildEvent
    return $ leftmost [ pushAlways (const $ sample (current d)) pe
                      , updated d ]

-- lazy version of building dyn
buildDyn :: NodeGraph t m => Dynamic t (m a) -> m (Event t a)
buildDyn = buildEvent <=< postponeCurrent

-- strict version
buildDyn' :: NodeGraph t m => Dynamic t (m a) -> m (Dynamic t a)
buildDyn' d = do
    a <- join $ sample (current d)
    evt <- buildEvent (updated d)
    holdDyn a evt

runDyn :: NodeGraph t m => Dynamic t (HostFrame t a) -> m (Event t a)
runDyn = runEvent <=< postponeCurrent

buildF :: NodeGraph t m => FreeT (Event t) m a -> m (Event t a)
buildF ft = runFreeT ft >>= \case
    Pure v -> fmap (v <$) $ view postBuildEvent
    Free startE -> mdo
      newFs <- switchPromptly startE $ fmapMaybe previewFree e'
      e' <- buildEvent $ runFreeT <$> newFs
      return $ fmapMaybe previewPure e'

switchFT :: NodeGraph t m => FreeT (Event t) m a -> m (Event t a)
switchFT ft = switchFT' ft >>= \case
    Pure a -> fmap (a <$) $ view postBuildEvent
    Free e -> return e

switchFT' :: NodeGraph t m => FreeT (Event t) m a -> m (FreeF (Event t) a a)
switchFT' ft = runFreeT ft >>= \case
    Pure v -> return $ Pure v
    Free e -> do
      e' <- buildEvent $ ffor e $ switchFT' >=> \case
                Pure a -> return $ a <$ e
                Free ie -> return ie
      Free <$> switchPromptly never e'


runF :: NodeGraph t m => FreeT (Event t) (HostFrame t) a -> m (Event t a)
runF ft = do
    pe <- view postBuildEvent
    rec newFs <- switchPromptly (ft <$ pe) $ fmapMaybe previewFree e'
        e' <- runEvent $ runFreeT <$> newFs
    return $ fmapMaybe previewPure e'


previewPure :: FreeF f a b -> Maybe a
previewPure (Pure a) = Just a
previewPure _ = Nothing

previewFree :: FreeF f a b -> Maybe (f b)
previewFree (Free fb) = Just fb
previewFree _ = Nothing

-- implement NodeGraph instance so that we don't need to keep lifting...
instance NodeGraph t m => NodeGraph t (AccStateT t f s m) where
    -- askRunWithActionsAsync = lift askRunWithActionsAsync
    subGraph n m = AccStateT . StateT $ \ts -> ReaderT $ \d -> subGraph n (_runAccStateT m d ts)
    holdGraph n ma emb = do
      d <- watch
      ((a, tsZ), erb) <- lift $ holdGraph n (_runAccStateT ma d []) $ ffor emb $ \mb -> _runAccStateT mb d []
      let et = (mergeWith composeMaybe . snd) <$> erb
          tz = mergeWith composeMaybe tsZ
      switchPromptly tz et >>= adjustMaybe
      return (a, fst <$> erb)
    buildEvent em = mdo
      d <- watch
      built <- lift . buildEvent $ flip pushAlways em $ \m -> do
                    t <- sample behT
                    return $ _runAccStateT m d [t]
      let et = (mergeWith composeMaybe . snd) <$> built
      behT :: Behavior t (Event t (s -> Maybe s)) <- hold (never :: Event t (s -> Maybe s)) et
      adjustMaybe $ switch behT
      return $ fst <$> built
    buildEvent_ = void . buildEvent
    runEventMaybe = lift . runEventMaybe
    runEvent_ = lift . runEvent_
    runEvent = lift . runEvent
