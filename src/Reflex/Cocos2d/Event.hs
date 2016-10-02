{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecursiveDo #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE GADTs #-}
module Reflex.Cocos2d.Event
    (
    -- * UI events
      MouseEvents(MouseEvents)
    , mouseDown
    , mouseUp
    , mouseMoved
    , mouseScrolled

    , TouchEvents(TouchEvents)
    , touchBegan
    , touchMoved
    , touchEnded
    , touchCancelled
    , MultiTouchEvents(MultiTouchEvents)
    , multiTouchBegan
    , multiTouchMoved
    , multiTouchEnded
    , multiTouchCancelled

    , KeyboardEvents(KeyboardEvents)
    , keyPressed
    , keyReleased

    , getMouseEvents
    , getTouchEvents
    , getMultiTouchEvents
    , getKeyboardEvents
    , getAccelerations

    , accumKeysDown

    -- , DragEvent
    -- , dragBegan
    -- , dragMoved
    -- , dragEnded
    -- , dragged

    -- * Time
    , modulate
    -- * Rand
    , runRandEvent
    -- * Reflex Utilities
    , switchF
    -- * Async
    , loadTexture
    -- , load
    -- * Utility
    -- , nodeContains
    -- * Widget
    -- , WidgetTouchEvents(WidgetTouchEvents)
    -- , HasWidgetTouchEvents(..)
    -- , WidgetEvents(WidgetEvents)
    -- , widgetClicked
    -- , widgetEvents
    -- , pageViewEvents
    -- , listViewEvents
    -- , scrollViewEvents
    -- , sliderEvents
    -- , textFieldEvents
    -- * Armature
    -- , addArmatures
    -- * re-export the lower level
    , KeyCode(..)

    -- , PageView
    -- , ListView
    -- , ScrollView
    -- , Slider
    -- , TextField
    -- , PageViewEvent(..)
    -- , ListViewEvent(..)
    -- , ScrollViewPos(..)
    -- , ScrollViewEvent(..)
    -- , SliderEvent(..)
    -- , TextFieldEvent(..)
    -- , loadCCS
    -- , loadCCS'
    ) where

-- import Diagrams.BoundingBox
import Data.Tuple (swap)
import Data.Dependent.Sum ((==>))
import qualified Data.Set as S
import Control.Monad
import Control.Monad.Random
import Control.Monad.Trans.Free
import Control.Monad.Fix
import Control.Monad.Trans
import Control.Monad.Ref
import Control.Lens hiding (contains)

import Foreign.Hoppy.Runtime (Decodable(..), HasContents(..))

import Reflex
import Reflex.Extra
import Reflex.Host.Class

import Graphics.UI.Cocos2d.Event hiding (Event)
import Graphics.UI.Cocos2d.Director
import Graphics.UI.Cocos2d.Texture

import Reflex.Cocos2d.Class
import Reflex.Cocos2d.Types

-- Event Packages
data MouseEvents t = MouseEvents
    { _mouseDown     :: Event t Mouse
    , _mouseUp       :: Event t Mouse
    , _mouseMoved    :: Event t Mouse
    , _mouseScrolled :: Event t Mouse
    }
makeLenses ''MouseEvents

data TouchEvents t = TouchEvents
    { _touchBegan     :: Event t Touch
    , _touchMoved     :: Event t Touch
    , _touchEnded     :: Event t Touch
    , _touchCancelled :: Event t Touch
    }
makeLenses ''TouchEvents

data MultiTouchEvents t = MultiTouchEvents
    { _multiTouchBegan     :: Event t [Touch]
    , _multiTouchMoved     :: Event t [Touch]
    , _multiTouchEnded     :: Event t [Touch]
    , _multiTouchCancelled :: Event t [Touch]
    }
makeLenses ''MultiTouchEvents

data KeyboardEvents t = KeyboardEvents
    { _keyPressed  :: Event t KeyCode
    , _keyReleased :: Event t KeyCode
    }
makeLenses ''KeyboardEvents

-- Event listeners
-- We generally put the listener to priority > scene graph (negative numbers)
getMouseEvents :: NodeGraph t m => m (MouseEvents t)
getMouseEvents = do
    run <- view runWithActions
    ed <- liftIO $ director_getInstance >>= director_getEventDispatcher
    let handleTrigger callbackSetter tr = do
          l <- eventListenerMouse_create
          callbackSetter l $ \em -> do
            m <- decode em
            run ([tr ==> m], return ())
          eventDispatcher_addEventListenerWithFixedPriority ed l (-1)
          return $ eventDispatcher_removeEventListener ed l
    MouseEvents <$> newEventWithTrigger (handleTrigger eventListenerMouse_onMouseDown_set)
                <*> newEventWithTrigger (handleTrigger eventListenerMouse_onMouseUp_set)
                <*> newEventWithTrigger (handleTrigger eventListenerMouse_onMouseMove_set)
                <*> newEventWithTrigger (handleTrigger eventListenerMouse_onMouseScroll_set)

getTouchEvents :: NodeGraph t m => m (TouchEvents t)
getTouchEvents = do
    run <- view runWithActions
    ed <- liftIO $ director_getInstance >>= director_getEventDispatcher
    let handleTrigger callbackSetter tr = do
          l <- eventListenerTouchOneByOne_create
          callbackSetter l $ \(et :: EventTouch) _ -> do
            t <- decode et
            run ([tr ==> t], return ())
          eventDispatcher_addEventListenerWithFixedPriority ed l (-1)
          return $ eventDispatcher_removeEventListener ed l
        setOnTouchBegan l cb = do
          -- always return True (handles the Touch)
          eventListenerTouchOneByOne_onTouchBegan_set l $ \et evt -> cb et evt >> return True
    TouchEvents <$> newEventWithTrigger (handleTrigger setOnTouchBegan)
                <*> newEventWithTrigger (handleTrigger eventListenerTouchOneByOne_onTouchMoved_set)
                <*> newEventWithTrigger (handleTrigger eventListenerTouchOneByOne_onTouchEnded_set)
                <*> newEventWithTrigger (handleTrigger eventListenerTouchOneByOne_onTouchCancelled_set)

getMultiTouchEvents :: NodeGraph t m => m (MultiTouchEvents t)
getMultiTouchEvents = do
    run <- view runWithActions
    ed <- liftIO $ director_getInstance >>= director_getEventDispatcher
    let handleTrigger callbackSetter tr = do
          l <- eventListenerTouchAllAtOnce_create
          callbackSetter l $ \ets _ -> do
            -- convert ets to a list of Touches
            ts <- toContents ets >>= mapM decode
            run ([tr ==> ts], return ())
          eventDispatcher_addEventListenerWithFixedPriority ed l (-1)
          return $ eventDispatcher_removeEventListener ed l
    MultiTouchEvents <$> newEventWithTrigger (handleTrigger eventListenerTouchAllAtOnce_onTouchesBegan_set)
                     <*> newEventWithTrigger (handleTrigger eventListenerTouchAllAtOnce_onTouchesMoved_set)
                     <*> newEventWithTrigger (handleTrigger eventListenerTouchAllAtOnce_onTouchesEnded_set)
                     <*> newEventWithTrigger (handleTrigger eventListenerTouchAllAtOnce_onTouchesCancelled_set)

getKeyboardEvents :: NodeGraph t m => m (KeyboardEvents t)
getKeyboardEvents = do
    run <- view runWithActions
    ed <- liftIO $ director_getInstance >>= director_getEventDispatcher
    let handleTrigger callbackSetter tr = do
          l <- eventListenerKeyboard_create
          callbackSetter l $ \kc _ -> run ([tr ==> kc], return ())
          eventDispatcher_addEventListenerWithFixedPriority ed l (-1)
          return $ eventDispatcher_removeEventListener ed l
    KeyboardEvents <$> newEventWithTrigger (handleTrigger eventListenerKeyboard_onKeyPressed_set)
                   <*> newEventWithTrigger (handleTrigger eventListenerKeyboard_onKeyReleased_set)

getAccelerations :: NodeGraph t m => m (Event t Acceleration)
getAccelerations = do
    run <- view runWithActions
    newEventWithTrigger $ \tr -> do
      ed <- director_getInstance >>= director_getEventDispatcher
      l <- eventListenerAcceleration_create $ \ea _ -> do
              a <- decode ea
              run ([tr ==> a], return ())
      eventDispatcher_addEventListenerWithFixedPriority ed l (-1)
      return $ eventDispatcher_removeEventListener ed l

-- | Convenience function to obtain currently held keys
accumKeysDown :: (Reflex t, MonadHold t m, MonadFix m) => KeyboardEvents t -> m (Dynamic t (S.Set KeyCode))
accumKeysDown (KeyboardEvents pressedE releasedE) = do
    let insertE = ffor pressedE $ \k m -> do
                    -- since KeyPressed event can keep firing
                    -- we block non-changing events
                    guard . not $ k `S.member` m
                    return $ S.insert k m
        deleteE = ffor releasedE $ fmap Just . S.delete
    accumMaybe (&) S.empty $ leftmost [ insertE, deleteE ]

-- nodeContains :: (MonadIO m, IsNode n) => n -> (P2 Double) -> m Bool
-- nodeContains n p = do
--     sz <- get n size
--     p' <- convertToNodeSpace n p
--     return $ fromCorners 0 (0.+^sz) `contains` p'

-- a datatype representing the necessary information regarding a drag event
-- data DragEvent t = DragEvent { _dragBegan :: Touch
--                              , _dragMoved :: Event t Touch
--                              , _dragEnded :: Event t Touch
--                              }
-- makeLenses ''DragEvent
--
-- -- return Event (dragStart, Event dragging, Event dragEnd)
-- dragged :: NodeGraph t m => SingleTouchEvents t -> m (Event t (DragEvent t))
-- dragged (SingleTouchEvents began moved ended _) = do
--     let mstream = leftmost [ (True,) <$> moved
--                            , (False,) <$> ended
--                            ]
--     rec e' <- onEvent began $ \t -> do
--           (ms, _) <- sample b'
--           (movedSeg, ms') <- breakE fst ms
--           (endedSeg, ms'') <- headTailE ms'
--           return (ms'', Just $ DragEvent t (snd <$> movedSeg) (snd <$> endedSeg))
--         b' <- hold (mstream, Nothing) e'
--     return $ fmapMaybe snd e'

-- | Locally modulate the ticks in the environment
modulate :: (Reflex t, MonadHold t m, MonadFix m, Num a, Ord a) => a -> Event t a -> m (Event t a)
modulate limit = mapAccumMaybe_ f (0, limit)
    where
      f (acc, l) d = let sum = acc + d in
        if sum > l then (Just (0  , limit-(sum-l)) , Just sum)
                   else (Just (sum, l            ) , Nothing )

-- ticks' :: NodeGraph t m => NominalDiffTime -> m (Event t NominalDiffTime)
-- ticks' interval = do
--     runWithActions <- askRunWithActions
--     newEventWithTrigger $ \et ->
--         scheduleUpdate' interval True $ \d -> runWithActions [et :=> Identity d]

runRandEvent :: NodeGraph t m => Event t (Rand StdGen a) -> m (Event t a)
runRandEvent rands = do
    g <- liftIO newStdGen
    mapAccum_ (\g comp -> swap $ runRand comp g) g rands

-- | Delay an Event by the given amount of seconds
-- TODO: every time this is called the previous "delayed" is invalidated
-- we need to have a unique key for every invocation
-- delay :: NodeGraph t m => Float -> Event t a -> m (Event t a)
-- delay dt e = do
--     runWithActions <- askRunWithActions
--     (e', trigger) <- newEventWithTriggerRef
--     delayedFire <- liftIO $ do
--       dtor <- director_getInstance
--       sch <- director_getScheduler dtor
--       let target = castPtr $ toPtr dtor
--       return $ \a ->
--         scheduler_scheduleWithIntervalAndRepeat sch
--           (\_ -> readRef trigger >>= mapM_ (\t -> runWithActions ([t ==> a], return ())))
--           target 0 0 dt False "delayed"
--     onEvent_ e $ liftIO . delayedFire
--     return e'

-- | Merge a deeply nested Event into a single Event
switchF :: NodeGraph t m => Free (Event t) a -> m (Event t a)
switchF f = switchF' f >>= \case
    Pure a -> fmap (a <$) $ view postBuildEvent
    Free e -> return e

-- | NOTE: we can't return the texture because it's an autoreleased object
loadTexture :: NodeGraph t m => String -> m (Event t ())
loadTexture path = do
    run <- view runWithActions
    -- Since we are not sure if the user would subscribe to the resulting event, we can't just use
    -- newEventWithTrigger
    (e, trigger) <- newEventWithTriggerRef
    liftIO $ do
      tc <- director_getInstance >>= director_getTextureCache
      textureCache_addImageAsync tc path $ \_ -> do
        readRef trigger >>= mapM_ (\tr -> run ([tr ==> ()], return ()))
    return e

-- | Load a list of resources in an async manner
-- returns (Event t (loaded, total), finished)
-- NOTE: we reverse the @loaded@ and @total@ because this makes more sense
-- also, increment the finished by 1 because we are not procedurally
-- looking at how many loaded /last time/ (instead how many /already/
-- loaded)
-- load :: (NodeGraph t m) => [String] -> m (Event t (Int, Int), Event t ())
-- load resources = do
--     o <- A.createLoadOption
--     runWithActions <- askRunWithActions
--     trigger <- newEventWithTrigger $ \et ->
--         A.setLoadTrigger o $ \total loaded ->
--             runWithActions ([et :=> Identity (loaded+1, total)], return ())
--     finished <- newEventWithTrigger $ \et ->
--         A.setLoadFinish o $ runWithActions ([et :=> Identity ()], return ())
--     askPostBuildEvent >>= runEvent_ . (A.load resources o <$)
--     return (trigger, finished)


-------- Armature ----------

-- addArmatures :: NodeGraph t m => [String]
--                               -> m (Event t Double, Event t ()) -- ^ (Event of percentage progress, Event when everything finishes)
-- addArmatures files = do
--     l <- createArmatureFileInfoAsyncListener
--     addArmatureFileInfosAsync files l
--     runWithActions <- askRunWithActions
--     percentE <- newEventWithTrigger $ \et ->
--       setOnArmatureFileInfoAsyncProgress l $ \percent -> runWithActions ([et :=> Identity percent], return ())
--     -- count the number of percentE, all loading is finished when exactly the number of files is fired
--     finished <- dropWhileE (< 1) percentE
--     headFinished <- headE finished
--     return (percentE, () <$ headFinished)
