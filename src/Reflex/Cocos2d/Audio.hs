module Reflex.Cocos2d.Audio
    (
      AudioStateCommand(..)
    , AudioInstance
    , playAudio
    , getAudioFinishedEvent
    , preloadAudio
    -- attrs
    , audioState
    , loop
    , volume
    , currentTime
    )
  where

import Data.Dependent.Sum ((==>))
import Control.Monad.IO.Class

import Graphics.UI.Cocos2d.Audio

import Reflex
import Reflex.Host.Class
import Reflex.Cocos2d.Class
import Reflex.Cocos2d.Attributes

data AudioStateCommand = AudioState_Play | AudioState_Pause | AudioState_Stop deriving (Show, Read)

type AudioInstance = Int

playAudio :: MonadIO m => String -> [Prop AudioInstance m] -> m AudioInstance
playAudio filename props = do
    au <- liftIO $ audioEngine_play2d filename False 1.0
    set au props
    return au

getAudioFinishedEvent :: NodeGraph t m => AudioInstance -> m (Event t ())
getAudioFinishedEvent id = do
    runWithActions <- askRunWithActions
    newEventWithTrigger $ \tr -> do
      audioEngine_setFinishCallback id $ \_ _ -> runWithActions ([tr ==> ()], return ())
      return $ pure ()

preloadAudio :: NodeGraph t m => String -> m (Event t Bool)
preloadAudio filename = do
    runWithActions <- askRunWithActions
    newEventWithTrigger $ \tr -> do
      audioEngine_preloadWithCallback filename $ \success -> runWithActions ([tr ==> success], return ())
      return $ pure ()

audioState :: MonadIO m => SetOnlyAttrib AudioInstance m AudioStateCommand
audioState = SetOnlyAttrib $ \id cmd -> liftIO $ case cmd of
              AudioState_Play -> audioEngine_resume id
              AudioState_Pause -> audioEngine_pause id
              AudioState_Stop -> audioEngine_stop id

loop :: MonadIO m => Attrib AudioInstance m Bool
loop = hoistA liftIO $ Attrib' audioEngine_isLoop audioEngine_setLoop

volume :: MonadIO m => Attrib AudioInstance m Float
volume = hoistA liftIO $ Attrib' audioEngine_getVolume audioEngine_setVolume

currentTime :: MonadIO m => Attrib AudioInstance m Float
currentTime = hoistA liftIO $ Attrib' audioEngine_getCurrentTime audioEngine_setCurrentTime
