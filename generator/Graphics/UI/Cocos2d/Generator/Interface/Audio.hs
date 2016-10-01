module Graphics.UI.Cocos2d.Generator.Interface.Audio
    ( mod_audio
    , c_AudioEngine
    , c_AudioProfile
    , cb_AudioFinishCallback
    , cb_AudioLoadedCallback
    , e_AudioInstanceState
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std.String

mod_audio :: Module
mod_audio =
  moduleModify' (makeModule "audio" "Audio.hpp" "Audio.cpp") $
    moduleAddExports $
    [ ExportClass c_AudioEngine
    , ExportClass c_AudioProfile
    , ExportCallback cb_AudioFinishCallback
    , ExportCallback cb_AudioLoadedCallback
    , ExportEnum e_AudioInstanceState
    ]

c_AudioProfile :: Class
c_AudioProfile =
  addReqIncludes [includeStd "audio/include/AudioEngine.h"] $
    makeClass (ident2 "cocos2d" "experimental" "AudioProfile") Nothing []
      [ mkCtor "new" []
      , mkClassVariable "name" $ refT $ constT $ objT c_string -- filePath
      , mkClassVariable "maxInstances" intT                    -- max number of simultaneous audio instance
      , mkClassVariable "minDelay" doubleT                     -- minimum delay in between sounds
      ]

e_AudioInstanceState :: CppEnum
e_AudioInstanceState =
  makeEnum (ident3 "cocos2d" "experimental" "AudioEngine" "AudioState") (Just $ toExtName "AudioInstanceState")
    [ (-1, ["error"])
    , ( 0, ["initializing"])
    , ( 2, ["playing"])
    , ( 3, ["paused"])
    ]

cb_AudioFinishCallback :: Callback
cb_AudioFinishCallback =
  makeCallback (toExtName "AudioFinishCallback") [intT, refT $ constT $ objT c_string] voidT

cb_AudioLoadedCallback :: Callback
cb_AudioLoadedCallback =
  makeCallback (toExtName "AudioLoadedCallback") [boolT {- isSuccessful -} ] voidT

c_AudioEngine :: Class
c_AudioEngine =
  addReqIncludes [includeStd "audio/include/AudioEngine.h"] $
    makeClass (ident2 "cocos2d" "experimental" "AudioEngine") Nothing []
      [ mkStaticMethod "lazyInit" [] boolT
      , mkStaticMethod "end" [] voidT
      , mkStaticMethod "play2d"
          [ refT $ constT $ objT c_string -- filePath
          , boolT                         -- loop
          , floatT                        -- volume (0.0 - 1.0)
          ] intT -- audioId
      , mkStaticMethod' "play2d" "play2dWithAudioProfile"
          [ refT $ constT $ objT c_string -- filePath
          , boolT                         -- loop
          , floatT                        -- volume (0.0 - 1.0)
          , ptrT $ constT $ objT c_AudioProfile
          ] intT -- audioId
      , mkStaticMethod "setLoop"
          [ intT -- audioId
          , boolT -- loop
          ] voidT
      , mkStaticMethod "isLoop" [intT] boolT
      , mkStaticMethod "setVolume" [intT, floatT] voidT
      , mkStaticMethod "getVolume" [intT] floatT
      , mkStaticMethod "pause" [intT] voidT
      , mkStaticMethod "pauseAll" [] voidT
      , mkStaticMethod "resume" [intT] voidT
      , mkStaticMethod "resumeAll" [] voidT
      , mkStaticMethod "stop" [intT] voidT
      , mkStaticMethod "stopAll" [] voidT
      , mkStaticMethod "setCurrentTime"
          [ intT -- audioId
          , floatT -- sec, the offset in seconds from the start to seek to
          ] voidT
      , mkStaticMethod "getCurrentTime" [intT] floatT
      , mkStaticMethod "getDuration" [intT] floatT
      , mkStaticMethod "getState" [intT] $ enumT e_AudioInstanceState
      , mkStaticMethod "setFinishCallback"
          [ intT -- audioId
          , callbackT cb_AudioFinishCallback
          ] voidT
      , mkStaticMethod "getMaxAudioInstance" [] intT
      , mkStaticMethod "setMaxAudioInstance" [intT] voidT
      , mkStaticMethod "uncache"
          [ refT $ constT $ objT c_string -- audio filepath
          ] voidT
      , mkStaticMethod "uncacheAll" [] voidT
      , mkStaticMethod "getProfile" [intT] $ ptrT $ objT c_AudioProfile
      , mkStaticMethod' "getProfile" "getProfileByName"
          [ refT $ constT $ objT c_string
          ] $ ptrT $ objT c_AudioProfile
      , mkStaticMethod "preload"
          [ refT $ constT $ objT c_string -- audio filepath
          ] voidT
      , mkStaticMethod' "preload" "preloadWithCallback"
          [ refT $ constT $ objT c_string -- audio filepath
          , callbackT cb_AudioLoadedCallback
          ] voidT
      ]
