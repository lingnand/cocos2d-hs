{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Audio (
  AudioEngineValue (..),
  AudioEngineConstPtr (..),
  AudioEnginePtr (..),
  audioEngine_lazyInit,
  audioEngine_end,
  audioEngine_play2d,
  audioEngine_play2dWithAudioProfile,
  audioEngine_setLoop,
  audioEngine_isLoop,
  audioEngine_setVolume,
  audioEngine_getVolume,
  audioEngine_pause,
  audioEngine_pauseAll,
  audioEngine_resume,
  audioEngine_resumeAll,
  audioEngine_stop,
  audioEngine_stopAll,
  audioEngine_setCurrentTime,
  audioEngine_getCurrentTime,
  audioEngine_getDuration,
  audioEngine_getState,
  audioEngine_setFinishCallback,
  audioEngine_getMaxAudioInstance,
  audioEngine_setMaxAudioInstance,
  audioEngine_uncache,
  audioEngine_uncacheAll,
  audioEngine_getProfile,
  audioEngine_getProfileByName,
  audioEngine_preload,
  audioEngine_preloadWithCallback,
  AudioEngineConst (..),
  castAudioEngineToConst,
  AudioEngine (..),
  castAudioEngineToNonconst,
  AudioEngineSuper (..),
  AudioEngineSuperConst (..),
  audioFinishCallback_newFunPtr,
  audioFinishCallback_new,
  AudioInstanceState (..),
  audioLoadedCallback_newFunPtr,
  audioLoadedCallback_new,
  AudioProfileValue (..),
  AudioProfileConstPtr (..),
  AudioProfilePtr (..),
  AudioProfileConst (..),
  castAudioProfileToConst,
  AudioProfile (..),
  castAudioProfileToNonconst,
  audioProfile_name_get,
  audioProfile_name_set,
  audioProfile_maxInstances_get,
  audioProfile_maxInstances_set,
  audioProfile_minDelay_get,
  audioProfile_minDelay_set,
  audioProfile_new,
  AudioProfileSuper (..),
  AudioProfileSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Std as M1
import Prelude (($), (++), (.), (/=), (==), (>>=))
import qualified Prelude as HoppyP

foreign import ccall "genpop__AudioEngine_lazyInit" audioEngine_lazyInit' ::  HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__AudioEngine_end" audioEngine_end' ::  HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_play2d" audioEngine_play2d' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CBool -> HoppyFC.CFloat -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__AudioEngine_play2dWithAudioProfile" audioEngine_play2dWithAudioProfile' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CBool -> HoppyFC.CFloat -> HoppyF.Ptr AudioProfileConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__AudioEngine_setLoop" audioEngine_setLoop' ::  HoppyFC.CInt -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_isLoop" audioEngine_isLoop' ::  HoppyFC.CInt -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__AudioEngine_setVolume" audioEngine_setVolume' ::  HoppyFC.CInt -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_getVolume" audioEngine_getVolume' ::  HoppyFC.CInt -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__AudioEngine_pause" audioEngine_pause' ::  HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_pauseAll" audioEngine_pauseAll' ::  HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_resume" audioEngine_resume' ::  HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_resumeAll" audioEngine_resumeAll' ::  HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_stop" audioEngine_stop' ::  HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_stopAll" audioEngine_stopAll' ::  HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_setCurrentTime" audioEngine_setCurrentTime' ::  HoppyFC.CInt -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_getCurrentTime" audioEngine_getCurrentTime' ::  HoppyFC.CInt -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__AudioEngine_getDuration" audioEngine_getDuration' ::  HoppyFC.CInt -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__AudioEngine_getState" audioEngine_getState' ::  HoppyFC.CInt -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__AudioEngine_setFinishCallback" audioEngine_setFinishCallback' ::  HoppyFC.CInt -> HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_getMaxAudioInstance" audioEngine_getMaxAudioInstance' ::  HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__AudioEngine_setMaxAudioInstance" audioEngine_setMaxAudioInstance' ::  HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_uncache" audioEngine_uncache' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_uncacheAll" audioEngine_uncacheAll' ::  HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_getProfile" audioEngine_getProfile' ::  HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr AudioProfile)
foreign import ccall "genpop__AudioEngine_getProfileByName" audioEngine_getProfileByName' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr AudioProfile)
foreign import ccall "genpop__AudioEngine_preload" audioEngine_preload' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__AudioEngine_preloadWithCallback" audioEngine_preloadWithCallback' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyFHR.CBool -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "gendel__AudioEngine" delete'AudioEngine :: HoppyF.Ptr AudioEngineConst -> HoppyP.IO ()
foreign import ccall "&gendel__AudioEngine" deletePtr'AudioEngine :: HoppyF.FunPtr (HoppyF.Ptr AudioEngineConst -> HoppyP.IO ())
foreign import ccall "wrapper" audioFinishCallback_new'newFunPtr :: (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()))
foreign import ccall "genpop__AudioFinishCallback" audioFinishCallback_new'newCallback :: HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()))
foreign import ccall "wrapper" audioLoadedCallback_new'newFunPtr :: (HoppyFHR.CBool -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFHR.CBool -> HoppyP.IO ()))
foreign import ccall "genpop__AudioLoadedCallback" audioLoadedCallback_new'newCallback :: HoppyF.FunPtr (HoppyFHR.CBool -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyFHR.CBool -> HoppyP.IO ()))
foreign import ccall "genpop__AudioProfile_name_get" audioProfile_name_get' ::  HoppyF.Ptr AudioProfileConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__AudioProfile_name_set" audioProfile_name_set' ::  HoppyF.Ptr AudioProfile -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__AudioProfile_maxInstances_get" audioProfile_maxInstances_get' ::  HoppyF.Ptr AudioProfileConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__AudioProfile_maxInstances_set" audioProfile_maxInstances_set' ::  HoppyF.Ptr AudioProfile -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__AudioProfile_minDelay_get" audioProfile_minDelay_get' ::  HoppyF.Ptr AudioProfileConst -> HoppyP.IO HoppyFC.CDouble
foreign import ccall "genpop__AudioProfile_minDelay_set" audioProfile_minDelay_set' ::  HoppyF.Ptr AudioProfile -> HoppyFC.CDouble -> HoppyP.IO ()
foreign import ccall "genpop__AudioProfile_new" audioProfile_new' ::  HoppyP.IO (HoppyF.Ptr AudioProfile)
foreign import ccall "gendel__AudioProfile" delete'AudioProfile :: HoppyF.Ptr AudioProfileConst -> HoppyP.IO ()
foreign import ccall "&gendel__AudioProfile" deletePtr'AudioProfile :: HoppyF.FunPtr (HoppyF.Ptr AudioProfileConst -> HoppyP.IO ())

class AudioEngineValue a where
  withAudioEnginePtr :: a -> (AudioEngineConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} AudioEngineConstPtr a => AudioEngineValue a where
#else
instance AudioEngineConstPtr a => AudioEngineValue a where
#endif
  withAudioEnginePtr = HoppyP.flip ($) . toAudioEngineConst

class (HoppyFHR.CppPtr this) => AudioEngineConstPtr this where
  toAudioEngineConst :: this -> AudioEngineConst

class (AudioEngineConstPtr this) => AudioEnginePtr this where
  toAudioEngine :: this -> AudioEngine

audioEngine_lazyInit ::  HoppyP.IO HoppyP.Bool
audioEngine_lazyInit =
  HoppyP.fmap (/= 0)
  (audioEngine_lazyInit')

audioEngine_end ::  HoppyP.IO ()
audioEngine_end =
  (audioEngine_end')

audioEngine_play2d :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.Float -> HoppyP.IO HoppyP.Int
audioEngine_play2d arg'1 arg'2 arg'3 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap HoppyFHR.coerceIntegral
  (audioEngine_play2d' arg'1' arg'2' arg'3')

audioEngine_play2dWithAudioProfile :: (M1.StdStringValue arg'1, AudioProfileValue arg'4) => arg'1 -> HoppyP.Bool -> HoppyP.Float -> arg'4 -> HoppyP.IO HoppyP.Int
audioEngine_play2dWithAudioProfile arg'1 arg'2 arg'3 arg'4 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  withAudioProfilePtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (audioEngine_play2dWithAudioProfile' arg'1' arg'2' arg'3' arg'4')

audioEngine_setLoop ::  HoppyP.Int -> HoppyP.Bool -> HoppyP.IO ()
audioEngine_setLoop arg'1 arg'2 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  let arg'2' = if arg'2 then 1 else 0 in
  (audioEngine_setLoop' arg'1' arg'2')

audioEngine_isLoop ::  HoppyP.Int -> HoppyP.IO HoppyP.Bool
audioEngine_isLoop arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap (/= 0)
  (audioEngine_isLoop' arg'1')

audioEngine_setVolume ::  HoppyP.Int -> HoppyP.Float -> HoppyP.IO ()
audioEngine_setVolume arg'1 arg'2 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  (audioEngine_setVolume' arg'1' arg'2')

audioEngine_getVolume ::  HoppyP.Int -> HoppyP.IO HoppyP.Float
audioEngine_getVolume arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap HoppyP.realToFrac
  (audioEngine_getVolume' arg'1')

audioEngine_pause ::  HoppyP.Int -> HoppyP.IO ()
audioEngine_pause arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  (audioEngine_pause' arg'1')

audioEngine_pauseAll ::  HoppyP.IO ()
audioEngine_pauseAll =
  (audioEngine_pauseAll')

audioEngine_resume ::  HoppyP.Int -> HoppyP.IO ()
audioEngine_resume arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  (audioEngine_resume' arg'1')

audioEngine_resumeAll ::  HoppyP.IO ()
audioEngine_resumeAll =
  (audioEngine_resumeAll')

audioEngine_stop ::  HoppyP.Int -> HoppyP.IO ()
audioEngine_stop arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  (audioEngine_stop' arg'1')

audioEngine_stopAll ::  HoppyP.IO ()
audioEngine_stopAll =
  (audioEngine_stopAll')

audioEngine_setCurrentTime ::  HoppyP.Int -> HoppyP.Float -> HoppyP.IO ()
audioEngine_setCurrentTime arg'1 arg'2 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  (audioEngine_setCurrentTime' arg'1' arg'2')

audioEngine_getCurrentTime ::  HoppyP.Int -> HoppyP.IO HoppyP.Float
audioEngine_getCurrentTime arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap HoppyP.realToFrac
  (audioEngine_getCurrentTime' arg'1')

audioEngine_getDuration ::  HoppyP.Int -> HoppyP.IO HoppyP.Float
audioEngine_getDuration arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap HoppyP.realToFrac
  (audioEngine_getDuration' arg'1')

audioEngine_getState ::  HoppyP.Int -> HoppyP.IO AudioInstanceState
audioEngine_getState arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (audioEngine_getState' arg'1')

audioEngine_setFinishCallback ::  HoppyP.Int -> (HoppyP.Int -> M1.StdStringConst -> HoppyP.IO ()) -> HoppyP.IO ()
audioEngine_setFinishCallback arg'1 arg'2 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  audioFinishCallback_new arg'2 >>= \arg'2' ->
  (audioEngine_setFinishCallback' arg'1' arg'2')

audioEngine_getMaxAudioInstance ::  HoppyP.IO HoppyP.Int
audioEngine_getMaxAudioInstance =
  HoppyP.fmap HoppyFHR.coerceIntegral
  (audioEngine_getMaxAudioInstance')

audioEngine_setMaxAudioInstance ::  HoppyP.Int -> HoppyP.IO ()
audioEngine_setMaxAudioInstance arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  (audioEngine_setMaxAudioInstance' arg'1')

audioEngine_uncache :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO ()
audioEngine_uncache arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (audioEngine_uncache' arg'1')

audioEngine_uncacheAll ::  HoppyP.IO ()
audioEngine_uncacheAll =
  (audioEngine_uncacheAll')

audioEngine_getProfile ::  HoppyP.Int -> HoppyP.IO AudioProfile
audioEngine_getProfile arg'1 =
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  HoppyP.fmap AudioProfile
  (audioEngine_getProfile' arg'1')

audioEngine_getProfileByName :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO AudioProfile
audioEngine_getProfileByName arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap AudioProfile
  (audioEngine_getProfileByName' arg'1')

audioEngine_preload :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO ()
audioEngine_preload arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (audioEngine_preload' arg'1')

audioEngine_preloadWithCallback :: (M1.StdStringValue arg'1) => arg'1 -> (HoppyP.Bool -> HoppyP.IO ()) -> HoppyP.IO ()
audioEngine_preloadWithCallback arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  audioLoadedCallback_new arg'2 >>= \arg'2' ->
  (audioEngine_preloadWithCallback' arg'1' arg'2')

data AudioEngineConst =
    AudioEngineConst (HoppyF.Ptr AudioEngineConst)
  | AudioEngineConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AudioEngineConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq AudioEngineConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AudioEngineConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAudioEngineToConst :: AudioEngine -> AudioEngineConst
castAudioEngineToConst (AudioEngine ptr') = AudioEngineConst $ HoppyF.castPtr ptr'
castAudioEngineToConst (AudioEngineGc fptr' ptr') = AudioEngineConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AudioEngineConst where
  nullptr = AudioEngineConst HoppyF.nullPtr
  
  withCppPtr (AudioEngineConst ptr') f' = f' ptr'
  withCppPtr (AudioEngineConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AudioEngineConst ptr') = ptr'
  toPtr (AudioEngineConstGc _ ptr') = ptr'
  
  touchCppPtr (AudioEngineConst _) = HoppyP.return ()
  touchCppPtr (AudioEngineConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AudioEngineConst where
  delete (AudioEngineConst ptr') = delete'AudioEngine ptr'
  delete (AudioEngineConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AudioEngineConst", " object."]
  
  toGc this'@(AudioEngineConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AudioEngineConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AudioEngine :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AudioEngineConstGc {}) = HoppyP.return this'

instance AudioEngineConstPtr AudioEngineConst where
  toAudioEngineConst = HoppyP.id

data AudioEngine =
    AudioEngine (HoppyF.Ptr AudioEngine)
  | AudioEngineGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AudioEngine)
  deriving (HoppyP.Show)

instance HoppyP.Eq AudioEngine where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AudioEngine where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAudioEngineToNonconst :: AudioEngineConst -> AudioEngine
castAudioEngineToNonconst (AudioEngineConst ptr') = AudioEngine $ HoppyF.castPtr ptr'
castAudioEngineToNonconst (AudioEngineConstGc fptr' ptr') = AudioEngineGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AudioEngine where
  nullptr = AudioEngine HoppyF.nullPtr
  
  withCppPtr (AudioEngine ptr') f' = f' ptr'
  withCppPtr (AudioEngineGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AudioEngine ptr') = ptr'
  toPtr (AudioEngineGc _ ptr') = ptr'
  
  touchCppPtr (AudioEngine _) = HoppyP.return ()
  touchCppPtr (AudioEngineGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AudioEngine where
  delete (AudioEngine ptr') = delete'AudioEngine $ (HoppyF.castPtr ptr' :: HoppyF.Ptr AudioEngineConst)
  delete (AudioEngineGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AudioEngine", " object."]
  
  toGc this'@(AudioEngine ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AudioEngineGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AudioEngine :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AudioEngineGc {}) = HoppyP.return this'

instance AudioEngineConstPtr AudioEngine where
  toAudioEngineConst (AudioEngine ptr') = AudioEngineConst $ (HoppyF.castPtr :: HoppyF.Ptr AudioEngine -> HoppyF.Ptr AudioEngineConst) ptr'
  toAudioEngineConst (AudioEngineGc fptr' ptr') = AudioEngineConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr AudioEngine -> HoppyF.Ptr AudioEngineConst) ptr'

instance AudioEnginePtr AudioEngine where
  toAudioEngine = HoppyP.id

class AudioEngineSuper a where
  downToAudioEngine :: a -> AudioEngine


class AudioEngineSuperConst a where
  downToAudioEngineConst :: a -> AudioEngineConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr AudioEngine)) AudioEngine where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr AudioEngine)) AudioEngine where
  decode = HoppyP.fmap AudioEngine . HoppyF.peek

audioFinishCallback_newFunPtr :: (HoppyP.Int -> M1.StdStringConst -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()))
audioFinishCallback_newFunPtr f'hs = audioFinishCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = HoppyFHR.coerceIntegral arg'1 in
  let arg'2' = M1.StdStringConst arg'2 in
  (f'hs arg'1' arg'2')

audioFinishCallback_new :: (HoppyP.Int -> M1.StdStringConst -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()))
audioFinishCallback_new f'hs = do
  f'p <- audioFinishCallback_newFunPtr f'hs
  audioFinishCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

data AudioInstanceState =
  AudioInstanceState_Error
  | AudioInstanceState_Initializing
  | AudioInstanceState_Playing
  | AudioInstanceState_Paused
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum AudioInstanceState where
  fromEnum AudioInstanceState_Error = -1
  fromEnum AudioInstanceState_Initializing = 0
  fromEnum AudioInstanceState_Playing = 2
  fromEnum AudioInstanceState_Paused = 3
  
  toEnum (-1) = AudioInstanceState_Error
  toEnum (0) = AudioInstanceState_Initializing
  toEnum (2) = AudioInstanceState_Playing
  toEnum (3) = AudioInstanceState_Paused
  toEnum n' = HoppyP.error $ "Unknown AudioInstanceState numeric value: " ++ HoppyP.show n'

audioLoadedCallback_newFunPtr :: (HoppyP.Bool -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFHR.CBool -> HoppyP.IO ()))
audioLoadedCallback_newFunPtr f'hs = audioLoadedCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = arg'1 /= 0 in
  (f'hs arg'1')

audioLoadedCallback_new :: (HoppyP.Bool -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyFHR.CBool -> HoppyP.IO ()))
audioLoadedCallback_new f'hs = do
  f'p <- audioLoadedCallback_newFunPtr f'hs
  audioLoadedCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class AudioProfileValue a where
  withAudioProfilePtr :: a -> (AudioProfileConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} AudioProfileConstPtr a => AudioProfileValue a where
#else
instance AudioProfileConstPtr a => AudioProfileValue a where
#endif
  withAudioProfilePtr = HoppyP.flip ($) . toAudioProfileConst

class (HoppyFHR.CppPtr this) => AudioProfileConstPtr this where
  toAudioProfileConst :: this -> AudioProfileConst

class (AudioProfileConstPtr this) => AudioProfilePtr this where
  toAudioProfile :: this -> AudioProfile

data AudioProfileConst =
    AudioProfileConst (HoppyF.Ptr AudioProfileConst)
  | AudioProfileConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AudioProfileConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq AudioProfileConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AudioProfileConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAudioProfileToConst :: AudioProfile -> AudioProfileConst
castAudioProfileToConst (AudioProfile ptr') = AudioProfileConst $ HoppyF.castPtr ptr'
castAudioProfileToConst (AudioProfileGc fptr' ptr') = AudioProfileConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AudioProfileConst where
  nullptr = AudioProfileConst HoppyF.nullPtr
  
  withCppPtr (AudioProfileConst ptr') f' = f' ptr'
  withCppPtr (AudioProfileConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AudioProfileConst ptr') = ptr'
  toPtr (AudioProfileConstGc _ ptr') = ptr'
  
  touchCppPtr (AudioProfileConst _) = HoppyP.return ()
  touchCppPtr (AudioProfileConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AudioProfileConst where
  delete (AudioProfileConst ptr') = delete'AudioProfile ptr'
  delete (AudioProfileConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AudioProfileConst", " object."]
  
  toGc this'@(AudioProfileConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AudioProfileConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AudioProfile :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AudioProfileConstGc {}) = HoppyP.return this'

instance AudioProfileConstPtr AudioProfileConst where
  toAudioProfileConst = HoppyP.id

data AudioProfile =
    AudioProfile (HoppyF.Ptr AudioProfile)
  | AudioProfileGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AudioProfile)
  deriving (HoppyP.Show)

instance HoppyP.Eq AudioProfile where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AudioProfile where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAudioProfileToNonconst :: AudioProfileConst -> AudioProfile
castAudioProfileToNonconst (AudioProfileConst ptr') = AudioProfile $ HoppyF.castPtr ptr'
castAudioProfileToNonconst (AudioProfileConstGc fptr' ptr') = AudioProfileGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AudioProfile where
  nullptr = AudioProfile HoppyF.nullPtr
  
  withCppPtr (AudioProfile ptr') f' = f' ptr'
  withCppPtr (AudioProfileGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AudioProfile ptr') = ptr'
  toPtr (AudioProfileGc _ ptr') = ptr'
  
  touchCppPtr (AudioProfile _) = HoppyP.return ()
  touchCppPtr (AudioProfileGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AudioProfile where
  delete (AudioProfile ptr') = delete'AudioProfile $ (HoppyF.castPtr ptr' :: HoppyF.Ptr AudioProfileConst)
  delete (AudioProfileGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AudioProfile", " object."]
  
  toGc this'@(AudioProfile ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AudioProfileGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AudioProfile :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AudioProfileGc {}) = HoppyP.return this'

instance AudioProfileConstPtr AudioProfile where
  toAudioProfileConst (AudioProfile ptr') = AudioProfileConst $ (HoppyF.castPtr :: HoppyF.Ptr AudioProfile -> HoppyF.Ptr AudioProfileConst) ptr'
  toAudioProfileConst (AudioProfileGc fptr' ptr') = AudioProfileConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr AudioProfile -> HoppyF.Ptr AudioProfileConst) ptr'

instance AudioProfilePtr AudioProfile where
  toAudioProfile = HoppyP.id

audioProfile_name_get :: (AudioProfileValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
audioProfile_name_get arg'1 =
  withAudioProfilePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (audioProfile_name_get' arg'1')

audioProfile_name_set :: (AudioProfilePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
audioProfile_name_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toAudioProfile arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (audioProfile_name_set' arg'1' arg'2')

audioProfile_maxInstances_get :: (AudioProfileValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
audioProfile_maxInstances_get arg'1 =
  withAudioProfilePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (audioProfile_maxInstances_get' arg'1')

audioProfile_maxInstances_set :: (AudioProfilePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
audioProfile_maxInstances_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toAudioProfile arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (audioProfile_maxInstances_set' arg'1' arg'2')

audioProfile_minDelay_get :: (AudioProfileValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Double
audioProfile_minDelay_get arg'1 =
  withAudioProfilePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (audioProfile_minDelay_get' arg'1')

audioProfile_minDelay_set :: (AudioProfilePtr arg'1) => arg'1 -> HoppyP.Double -> HoppyP.IO ()
audioProfile_minDelay_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toAudioProfile arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (audioProfile_minDelay_set' arg'1' arg'2')

audioProfile_new ::  HoppyP.IO AudioProfile
audioProfile_new =
  HoppyP.fmap AudioProfile
  (audioProfile_new')

class AudioProfileSuper a where
  downToAudioProfile :: a -> AudioProfile


class AudioProfileSuperConst a where
  downToAudioProfileConst :: a -> AudioProfileConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr AudioProfile)) AudioProfile where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr AudioProfile)) AudioProfile where
  decode = HoppyP.fmap AudioProfile . HoppyF.peek