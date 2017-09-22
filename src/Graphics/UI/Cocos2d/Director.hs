{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Director (
  castDirectorToRef,
  castRefToDirector,
  castEventDispatcherToRef,
  castRefToEventDispatcher,
  castGLViewToRef,
  castRefToGLView,
  castSchedulerToRef,
  castRefToScheduler,
  DirectorValue (..),
  DirectorConstPtr (..),
  director_getWinSize,
  director_getWinSizeInPixels,
  director_getVisibleSize,
  director_getVisibleOrigin,
  director_getZEye,
  director_getContentScaleFactor,
  director_getScheduler,
  director_getEventDispatcher,
  director_getTextureCache,
  DirectorPtr (..),
  director_getRunningScene,
  director_getAnimationInterval,
  director_setAnimationInterval,
  director_isDisplayStats,
  director_setDisplayStats,
  director_getSecondsPerFrame,
  director_getOpenGLView,
  director_isPaused,
  director_getTotalFrames,
  director_convertToGL,
  director_convertToUI,
  director_runWithScene,
  director_pushScene,
  director_popScene,
  director_popToRootScene,
  director_popToSceneStackLevel,
  director_replaceScene,
  director_end,
  director_pause,
  director_resume,
  director_stopAnimation,
  director_startAnimation,
  director_purgeCachedData,
  director_setDefaultValues,
  director_setGLDefaultValues,
  director_setAlphaBlending,
  director_setDepthTest,
  director_setContentScaleFactor,
  director_getInstance,
  DirectorConst (..),
  castDirectorToConst,
  Director (..),
  castDirectorToNonconst,
  DirectorSuper (..),
  DirectorSuperConst (..),
  EventDispatcherValue (..),
  EventDispatcherConstPtr (..),
  eventDispatcher_isEnabled,
  EventDispatcherPtr (..),
  eventDispatcher_addEventListenerWithSceneGraphPriority,
  eventDispatcher_addEventListenerWithFixedPriority,
  eventDispatcher_addCustomEventListener,
  eventDispatcher_removeEventListener,
  eventDispatcher_removeEventListenersForType,
  eventDispatcher_removeEventListenersForTarget,
  eventDispatcher_removeCustomEventListeners,
  eventDispatcher_removeAllEventListeners,
  eventDispatcher_pauseEventListenersForTarget,
  eventDispatcher_resumeEventListenersForTarget,
  eventDispatcher_setPriority,
  eventDispatcher_setEnabled,
  eventDispatcher_dispatchEvent,
  eventDispatcher_dispatchCustomEvent,
  EventDispatcherConst (..),
  castEventDispatcherToConst,
  EventDispatcher (..),
  castEventDispatcherToNonconst,
  EventDispatcherSuper (..),
  EventDispatcherSuperConst (..),
  GLViewValue (..),
  GLViewConstPtr (..),
  gLView_getFrameSize,
  gLView_getFrameZoomFactor,
  gLView_getRetinaFactor,
  gLView_getContentScaleFactor,
  gLView_isRetinaDisplay,
  gLView_getVisibleSize,
  gLView_getVisibleOrigin,
  gLView_getVisibleRect,
  gLView_getDesignResolutionSize,
  gLView_getScissorRect,
  gLView_getViewName,
  gLView_getViewPortRect,
  gLView_getScaleX,
  gLView_getScaleY,
  gLView_getResolutionPolicy,
  GLViewPtr (..),
  gLView_setFrameSize,
  gLView_setFrameZoomFactor,
  gLView_setCursorVisible,
  gLView_setContentScaleFactor,
  gLView_setDesignResolutionSize,
  gLView_setViewPortInPoints,
  gLView_setScissorInPoints,
  gLView_isScissorEnabled,
  gLView_setViewName,
  GLViewConst (..),
  castGLViewToConst,
  GLView (..),
  castGLViewToNonconst,
  GLViewSuper (..),
  GLViewSuperConst (..),
  ResolutionPolicy (..),
  SchedulerValue (..),
  SchedulerConstPtr (..),
  SchedulerPtr (..),
  scheduler_getTimeScale,
  scheduler_setTimeScale,
  scheduler_scheduleWithInterval,
  scheduler_scheduleWithIntervalAndRepeat,
  scheduler_unschedule,
  scheduler_isScheduled,
  scheduler_pauseTarget,
  scheduler_resumeTarget,
  scheduler_isTargetPaused,
  scheduler_unscheduleAllForTarget,
  scheduler_performFunctionInCocosThread,
  SchedulerConst (..),
  castSchedulerToConst,
  Scheduler (..),
  castSchedulerToNonconst,
  SchedulerSuper (..),
  SchedulerSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Event as M9
import qualified Graphics.UI.Cocos2d.Extra as CE
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Scene as M7
import qualified Graphics.UI.Cocos2d.Std as M1
import qualified Graphics.UI.Cocos2d.Texture as M3
import Linear.V2
import Prelude (($), (++), (.), (/=), (=<<), (==), (>>=), Float)
import qualified Prelude as HoppyP

foreign import ccall "genpop__Director_getInstance" director_getInstance' ::  HoppyP.IO (HoppyF.Ptr Director)
foreign import ccall "genpop__Director_getRunningScene" director_getRunningScene' ::  HoppyF.Ptr Director -> HoppyP.IO (HoppyF.Ptr M7.Scene)
foreign import ccall "genpop__Director_getAnimationInterval" director_getAnimationInterval' ::  HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_setAnimationInterval" director_setAnimationInterval' ::  HoppyF.Ptr Director -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Director_isDisplayStats" director_isDisplayStats' ::  HoppyF.Ptr Director -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Director_setDisplayStats" director_setDisplayStats' ::  HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_getSecondsPerFrame" director_getSecondsPerFrame' ::  HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_getOpenGLView" director_getOpenGLView' ::  HoppyF.Ptr Director -> HoppyP.IO (HoppyF.Ptr GLView)
foreign import ccall "genpop__Director_isPaused" director_isPaused' ::  HoppyF.Ptr Director -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Director_getTotalFrames" director_getTotalFrames' ::  HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "genpop__Director_getWinSize" director_getWinSize' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__Director_getWinSizeInPixels" director_getWinSizeInPixels' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__Director_getVisibleSize" director_getVisibleSize' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__Director_getVisibleOrigin" director_getVisibleOrigin' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_convertToGL" director_convertToGL' ::  HoppyF.Ptr Director -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_convertToUI" director_convertToUI' ::  HoppyF.Ptr Director -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_getZEye" director_getZEye' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_runWithScene" director_runWithScene' ::  HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_pushScene" director_pushScene' ::  HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_popScene" director_popScene' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_popToRootScene" director_popToRootScene' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_popToSceneStackLevel" director_popToSceneStackLevel' ::  HoppyF.Ptr Director -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Director_replaceScene" director_replaceScene' ::  HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_end" director_end' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_pause" director_pause' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_resume" director_resume' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_stopAnimation" director_stopAnimation' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_startAnimation" director_startAnimation' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_purgeCachedData" director_purgeCachedData' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setDefaultValues" director_setDefaultValues' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setGLDefaultValues" director_setGLDefaultValues' ::  HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setAlphaBlending" director_setAlphaBlending' ::  HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_setDepthTest" director_setDepthTest' ::  HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_setContentScaleFactor" director_setContentScaleFactor' ::  HoppyF.Ptr Director -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Director_getContentScaleFactor" director_getContentScaleFactor' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_getScheduler" director_getScheduler' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr Scheduler)
foreign import ccall "genpop__Director_getEventDispatcher" director_getEventDispatcher' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr EventDispatcher)
foreign import ccall "genpop__Director_getTextureCache" director_getTextureCache' ::  HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M3.TextureCache)
foreign import ccall "gencast__Director__Ref" castDirectorToRef :: HoppyF.Ptr DirectorConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Director" castRefToDirector :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr DirectorConst
foreign import ccall "gendel__Director" delete'Director :: HoppyF.Ptr DirectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__Director" deletePtr'Director :: HoppyF.FunPtr (HoppyF.Ptr DirectorConst -> HoppyP.IO ())
foreign import ccall "genpop__EventDispatcher_addEventListenerWithSceneGraphPriority" eventDispatcher_addEventListenerWithSceneGraphPriority' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M9.EventListener -> HoppyF.Ptr M5.Node -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_addEventListenerWithFixedPriority" eventDispatcher_addEventListenerWithFixedPriority' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M9.EventListener -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_addCustomEventListener" eventDispatcher_addCustomEventListener' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyF.Ptr M9.EventCustom -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.Ptr M9.EventListenerCustom)
foreign import ccall "genpop__EventDispatcher_removeEventListener" eventDispatcher_removeEventListener' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M9.EventListener -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_removeEventListenersForType" eventDispatcher_removeEventListenersForType' ::  HoppyF.Ptr EventDispatcher -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_removeEventListenersForTarget" eventDispatcher_removeEventListenersForTarget' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M5.Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_removeCustomEventListeners" eventDispatcher_removeCustomEventListeners' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_removeAllEventListeners" eventDispatcher_removeAllEventListeners' ::  HoppyF.Ptr EventDispatcher -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_pauseEventListenersForTarget" eventDispatcher_pauseEventListenersForTarget' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M5.Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_resumeEventListenersForTarget" eventDispatcher_resumeEventListenersForTarget' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M5.Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_setPriority" eventDispatcher_setPriority' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M9.EventListener -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_setEnabled" eventDispatcher_setEnabled' ::  HoppyF.Ptr EventDispatcher -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_isEnabled" eventDispatcher_isEnabled' ::  HoppyF.Ptr EventDispatcherConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventDispatcher_dispatchEvent" eventDispatcher_dispatchEvent' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M9.Event -> HoppyP.IO ()
foreign import ccall "genpop__EventDispatcher_dispatchCustomEvent" eventDispatcher_dispatchCustomEvent' ::  HoppyF.Ptr EventDispatcher -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "gencast__EventDispatcher__Ref" castEventDispatcherToRef :: HoppyF.Ptr EventDispatcherConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventDispatcher" castRefToEventDispatcher :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventDispatcherConst
foreign import ccall "gendel__EventDispatcher" delete'EventDispatcher :: HoppyF.Ptr EventDispatcherConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventDispatcher" deletePtr'EventDispatcher :: HoppyF.FunPtr (HoppyF.Ptr EventDispatcherConst -> HoppyP.IO ())
foreign import ccall "genpop__GLView_getFrameSize" gLView_getFrameSize' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__GLView_setFrameSize" gLView_setFrameSize' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getFrameZoomFactor" gLView_getFrameZoomFactor' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_setFrameZoomFactor" gLView_setFrameZoomFactor' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setCursorVisible" gLView_setCursorVisible' ::  HoppyF.Ptr GLView -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getRetinaFactor" gLView_getRetinaFactor' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__GLView_setContentScaleFactor" gLView_setContentScaleFactor' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getContentScaleFactor" gLView_getContentScaleFactor' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_isRetinaDisplay" gLView_isRetinaDisplay' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getVisibleSize" gLView_getVisibleSize' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__GLView_getVisibleOrigin" gLView_getVisibleOrigin' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__GLView_getVisibleRect" gLView_getVisibleRect' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawRect)
foreign import ccall "genpop__GLView_getDesignResolutionSize" gLView_getDesignResolutionSize' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__GLView_setDesignResolutionSize" gLView_setDesignResolutionSize' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setViewPortInPoints" gLView_setViewPortInPoints' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setScissorInPoints" gLView_setScissorInPoints' ::  HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_isScissorEnabled" gLView_isScissorEnabled' ::  HoppyF.Ptr GLView -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getScissorRect" gLView_getScissorRect' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawRect)
foreign import ccall "genpop__GLView_setViewName" gLView_setViewName' ::  HoppyF.Ptr GLView -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getViewName" gLView_getViewName' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__GLView_getViewPortRect" gLView_getViewPortRect' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RawRectConst)
foreign import ccall "genpop__GLView_getScaleX" gLView_getScaleX' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_getScaleY" gLView_getScaleY' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_getResolutionPolicy" gLView_getResolutionPolicy' ::  HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "gencast__GLView__Ref" castGLViewToRef :: HoppyF.Ptr GLViewConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__GLView" castRefToGLView :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr GLViewConst
foreign import ccall "gendel__GLView" delete'GLView :: HoppyF.Ptr GLViewConst -> HoppyP.IO ()
foreign import ccall "&gendel__GLView" deletePtr'GLView :: HoppyF.FunPtr (HoppyF.Ptr GLViewConst -> HoppyP.IO ())
foreign import ccall "genpop__Scheduler_getTimeScale" scheduler_getTimeScale' ::  HoppyF.Ptr Scheduler -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Scheduler_setTimeScale" scheduler_setTimeScale' ::  HoppyF.Ptr Scheduler -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_scheduleWithInterval" scheduler_scheduleWithInterval' ::  HoppyF.Ptr Scheduler -> HoppyFHR.CCallback (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyFC.CFloat -> HoppyFHR.CBool -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_scheduleWithIntervalAndRepeat" scheduler_scheduleWithIntervalAndRepeat' ::  HoppyF.Ptr Scheduler -> HoppyFHR.CCallback (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyFC.CFloat -> HoppyFC.CUInt -> HoppyFC.CFloat -> HoppyFHR.CBool -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_unschedule" scheduler_unschedule' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_isScheduled" scheduler_isScheduled' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr () -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Scheduler_pauseTarget" scheduler_pauseTarget' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_resumeTarget" scheduler_resumeTarget' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_isTargetPaused" scheduler_isTargetPaused' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr () -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Scheduler_unscheduleAllForTarget" scheduler_unscheduleAllForTarget' ::  HoppyF.Ptr Scheduler -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__Scheduler_performFunctionInCocosThread" scheduler_performFunctionInCocosThread' ::  HoppyF.Ptr Scheduler -> HoppyFHR.CCallback (HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "gencast__Scheduler__Ref" castSchedulerToRef :: HoppyF.Ptr SchedulerConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Scheduler" castRefToScheduler :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr SchedulerConst
foreign import ccall "gendel__Scheduler" delete'Scheduler :: HoppyF.Ptr SchedulerConst -> HoppyP.IO ()
foreign import ccall "&gendel__Scheduler" deletePtr'Scheduler :: HoppyF.FunPtr (HoppyF.Ptr SchedulerConst -> HoppyP.IO ())

class DirectorValue a where
  withDirectorPtr :: a -> (DirectorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} DirectorConstPtr a => DirectorValue a where
#else
instance DirectorConstPtr a => DirectorValue a where
#endif
  withDirectorPtr = HoppyP.flip ($) . toDirectorConst

class (M2.RefConstPtr this) => DirectorConstPtr this where
  toDirectorConst :: this -> DirectorConst

director_getWinSize :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO M2.RawSizeConst
director_getWinSize arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawSizeConst
  (director_getWinSize' arg'1')

director_getWinSizeInPixels :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO (CE.Size Float)
director_getWinSizeInPixels arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.RawSizeConst) =<<
  (director_getWinSizeInPixels' arg'1')

director_getVisibleSize :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO (CE.Size Float)
director_getVisibleSize arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.RawSizeConst) =<<
  (director_getVisibleSize' arg'1')

director_getVisibleOrigin :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
director_getVisibleOrigin arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (director_getVisibleOrigin' arg'1')

director_getZEye :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
director_getZEye arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (director_getZEye' arg'1')

director_getContentScaleFactor :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
director_getContentScaleFactor arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (director_getContentScaleFactor' arg'1')

director_getScheduler :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO Scheduler
director_getScheduler arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Scheduler
  (director_getScheduler' arg'1')

director_getEventDispatcher :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO EventDispatcher
director_getEventDispatcher arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap EventDispatcher
  (director_getEventDispatcher' arg'1')

director_getTextureCache :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO M3.TextureCache
director_getTextureCache arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M3.TextureCache
  (director_getTextureCache' arg'1')

class (DirectorConstPtr this, M2.RefPtr this) => DirectorPtr this where
  toDirector :: this -> Director

director_getRunningScene :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO M7.Scene
director_getRunningScene arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap M7.Scene
  (director_getRunningScene' arg'1')

director_getAnimationInterval :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
director_getAnimationInterval arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (director_getAnimationInterval' arg'1')

director_setAnimationInterval :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
director_setAnimationInterval arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (director_setAnimationInterval' arg'1' arg'2')

director_isDisplayStats :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
director_isDisplayStats arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (director_isDisplayStats' arg'1')

director_setDisplayStats :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
director_setDisplayStats arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (director_setDisplayStats' arg'1' arg'2')

director_getSecondsPerFrame :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
director_getSecondsPerFrame arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (director_getSecondsPerFrame' arg'1')

director_getOpenGLView :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO GLView
director_getOpenGLView arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap GLView
  (director_getOpenGLView' arg'1')

director_isPaused :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
director_isPaused arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (director_isPaused' arg'1')

director_getTotalFrames :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUInt
director_getTotalFrames arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_getTotalFrames' arg'1')

director_convertToGL :: (DirectorPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
director_convertToGL arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (director_convertToGL' arg'1' arg'2')

director_convertToUI :: (DirectorPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
director_convertToUI arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (director_convertToUI' arg'1' arg'2')

director_runWithScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
director_runWithScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M7.toScene arg'2) $ \arg'2' ->
  (director_runWithScene' arg'1' arg'2')

director_pushScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
director_pushScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M7.toScene arg'2) $ \arg'2' ->
  (director_pushScene' arg'1' arg'2')

director_popScene :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_popScene arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_popScene' arg'1')

director_popToRootScene :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_popToRootScene arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_popToRootScene' arg'1')

director_popToSceneStackLevel :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
director_popToSceneStackLevel arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (director_popToSceneStackLevel' arg'1' arg'2')

director_replaceScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
director_replaceScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M7.toScene arg'2) $ \arg'2' ->
  (director_replaceScene' arg'1' arg'2')

director_end :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_end arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_end' arg'1')

director_pause :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_pause arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_pause' arg'1')

director_resume :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_resume arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_resume' arg'1')

director_stopAnimation :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_stopAnimation arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_stopAnimation' arg'1')

director_startAnimation :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_startAnimation arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_startAnimation' arg'1')

director_purgeCachedData :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_purgeCachedData arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_purgeCachedData' arg'1')

director_setDefaultValues :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_setDefaultValues arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_setDefaultValues' arg'1')

director_setGLDefaultValues :: (DirectorPtr arg'1) => arg'1 -> HoppyP.IO ()
director_setGLDefaultValues arg'1 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  (director_setGLDefaultValues' arg'1')

director_setAlphaBlending :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
director_setAlphaBlending arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (director_setAlphaBlending' arg'1' arg'2')

director_setDepthTest :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
director_setDepthTest arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (director_setDepthTest' arg'1' arg'2')

director_setContentScaleFactor :: (DirectorPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
director_setContentScaleFactor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (director_setContentScaleFactor' arg'1' arg'2')

director_getInstance ::  HoppyP.IO Director
director_getInstance =
  HoppyP.fmap Director
  (director_getInstance')

data DirectorConst =
    DirectorConst (HoppyF.Ptr DirectorConst)
  | DirectorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr DirectorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq DirectorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord DirectorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castDirectorToConst :: Director -> DirectorConst
castDirectorToConst (Director ptr') = DirectorConst $ HoppyF.castPtr ptr'
castDirectorToConst (DirectorGc fptr' ptr') = DirectorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr DirectorConst where
  nullptr = DirectorConst HoppyF.nullPtr
  
  withCppPtr (DirectorConst ptr') f' = f' ptr'
  withCppPtr (DirectorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (DirectorConst ptr') = ptr'
  toPtr (DirectorConstGc _ ptr') = ptr'
  
  touchCppPtr (DirectorConst _) = HoppyP.return ()
  touchCppPtr (DirectorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable DirectorConst where
  delete (DirectorConst ptr') = delete'Director ptr'
  delete (DirectorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "DirectorConst", " object."]
  
  toGc this'@(DirectorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip DirectorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Director :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(DirectorConstGc {}) = HoppyP.return this'

instance DirectorConstPtr DirectorConst where
  toDirectorConst = HoppyP.id

instance M2.RefConstPtr DirectorConst where
  toRefConst (DirectorConst ptr') = M2.RefConst $ castDirectorToRef ptr'
  toRefConst (DirectorConstGc fptr' ptr') = M2.RefConstGc fptr' $ castDirectorToRef ptr'

data Director =
    Director (HoppyF.Ptr Director)
  | DirectorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Director)
  deriving (HoppyP.Show)

instance HoppyP.Eq Director where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Director where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castDirectorToNonconst :: DirectorConst -> Director
castDirectorToNonconst (DirectorConst ptr') = Director $ HoppyF.castPtr ptr'
castDirectorToNonconst (DirectorConstGc fptr' ptr') = DirectorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Director where
  nullptr = Director HoppyF.nullPtr
  
  withCppPtr (Director ptr') f' = f' ptr'
  withCppPtr (DirectorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Director ptr') = ptr'
  toPtr (DirectorGc _ ptr') = ptr'
  
  touchCppPtr (Director _) = HoppyP.return ()
  touchCppPtr (DirectorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Director where
  delete (Director ptr') = delete'Director $ (HoppyF.castPtr ptr' :: HoppyF.Ptr DirectorConst)
  delete (DirectorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Director", " object."]
  
  toGc this'@(Director ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip DirectorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Director :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(DirectorGc {}) = HoppyP.return this'

instance DirectorConstPtr Director where
  toDirectorConst (Director ptr') = DirectorConst $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'
  toDirectorConst (DirectorGc fptr' ptr') = DirectorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'

instance DirectorPtr Director where
  toDirector = HoppyP.id

instance M2.RefConstPtr Director where
  toRefConst (Director ptr') = M2.RefConst $ castDirectorToRef $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'
  toRefConst (DirectorGc fptr' ptr') = M2.RefConstGc fptr' $ castDirectorToRef $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'

instance M2.RefPtr Director where
  toRef (Director ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castDirectorToRef $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'
  toRef (DirectorGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castDirectorToRef $ (HoppyF.castPtr :: HoppyF.Ptr Director -> HoppyF.Ptr DirectorConst) ptr'

class DirectorSuper a where
  downToDirector :: a -> Director

instance DirectorSuper M2.Ref where
  downToDirector = castDirectorToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = DirectorConst $ castRefToDirector ptr'
      cast' (M2.RefConstGc fptr' ptr') = DirectorConstGc fptr' $ castRefToDirector ptr'

class DirectorSuperConst a where
  downToDirectorConst :: a -> DirectorConst

instance DirectorSuperConst M2.RefConst where
  downToDirectorConst = cast'
    where
      cast' (M2.RefConst ptr') = DirectorConst $ castRefToDirector ptr'
      cast' (M2.RefConstGc fptr' ptr') = DirectorConstGc fptr' $ castRefToDirector ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Director)) Director where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Director)) Director where
  decode = HoppyP.fmap Director . HoppyF.peek

class EventDispatcherValue a where
  withEventDispatcherPtr :: a -> (EventDispatcherConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventDispatcherConstPtr a => EventDispatcherValue a where
#else
instance EventDispatcherConstPtr a => EventDispatcherValue a where
#endif
  withEventDispatcherPtr = HoppyP.flip ($) . toEventDispatcherConst

class (M2.RefConstPtr this) => EventDispatcherConstPtr this where
  toEventDispatcherConst :: this -> EventDispatcherConst

eventDispatcher_isEnabled :: (EventDispatcherValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
eventDispatcher_isEnabled arg'1 =
  withEventDispatcherPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (eventDispatcher_isEnabled' arg'1')

class (EventDispatcherConstPtr this, M2.RefPtr this) => EventDispatcherPtr this where
  toEventDispatcher :: this -> EventDispatcher

eventDispatcher_addEventListenerWithSceneGraphPriority :: (EventDispatcherPtr arg'1, M9.EventListenerPtr arg'2, M5.NodePtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
eventDispatcher_addEventListenerWithSceneGraphPriority arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M9.toEventListener arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (M5.toNode arg'3) $ \arg'3' ->
  (eventDispatcher_addEventListenerWithSceneGraphPriority' arg'1' arg'2' arg'3')

eventDispatcher_addEventListenerWithFixedPriority :: (EventDispatcherPtr arg'1, M9.EventListenerPtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
eventDispatcher_addEventListenerWithFixedPriority arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M9.toEventListener arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (eventDispatcher_addEventListenerWithFixedPriority' arg'1' arg'2' arg'3')

eventDispatcher_addCustomEventListener :: (EventDispatcherPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> (M9.EventCustom -> HoppyP.IO ()) -> HoppyP.IO M9.EventListenerCustom
eventDispatcher_addCustomEventListener arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M9.eventCustomCallback_new arg'3 >>= \arg'3' ->
  HoppyP.fmap M9.EventListenerCustom
  (eventDispatcher_addCustomEventListener' arg'1' arg'2' arg'3')

eventDispatcher_removeEventListener :: (EventDispatcherPtr arg'1, M9.EventListenerPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventDispatcher_removeEventListener arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M9.toEventListener arg'2) $ \arg'2' ->
  (eventDispatcher_removeEventListener' arg'1' arg'2')

eventDispatcher_removeEventListenersForType :: (EventDispatcherPtr arg'1) => arg'1 -> M9.Type -> HoppyP.IO ()
eventDispatcher_removeEventListenersForType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (eventDispatcher_removeEventListenersForType' arg'1' arg'2')

eventDispatcher_removeEventListenersForTarget :: (EventDispatcherPtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
eventDispatcher_removeEventListenersForTarget arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (eventDispatcher_removeEventListenersForTarget' arg'1' arg'2' arg'3')

eventDispatcher_removeCustomEventListeners :: (EventDispatcherPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventDispatcher_removeCustomEventListeners arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (eventDispatcher_removeCustomEventListeners' arg'1' arg'2')

eventDispatcher_removeAllEventListeners :: (EventDispatcherPtr arg'1) => arg'1 -> HoppyP.IO ()
eventDispatcher_removeAllEventListeners arg'1 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  (eventDispatcher_removeAllEventListeners' arg'1')

eventDispatcher_pauseEventListenersForTarget :: (EventDispatcherPtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
eventDispatcher_pauseEventListenersForTarget arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (eventDispatcher_pauseEventListenersForTarget' arg'1' arg'2' arg'3')

eventDispatcher_resumeEventListenersForTarget :: (EventDispatcherPtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
eventDispatcher_resumeEventListenersForTarget arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (eventDispatcher_resumeEventListenersForTarget' arg'1' arg'2' arg'3')

eventDispatcher_setPriority :: (EventDispatcherPtr arg'1, M9.EventListenerPtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
eventDispatcher_setPriority arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M9.toEventListener arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (eventDispatcher_setPriority' arg'1' arg'2' arg'3')

eventDispatcher_setEnabled :: (EventDispatcherPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
eventDispatcher_setEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (eventDispatcher_setEnabled' arg'1' arg'2')

eventDispatcher_dispatchEvent :: (EventDispatcherPtr arg'1, M9.EventPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventDispatcher_dispatchEvent arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M9.toEvent arg'2) $ \arg'2' ->
  (eventDispatcher_dispatchEvent' arg'1' arg'2')

eventDispatcher_dispatchCustomEvent :: (EventDispatcherPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr () -> HoppyP.IO ()
eventDispatcher_dispatchCustomEvent arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventDispatcher arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  (eventDispatcher_dispatchCustomEvent' arg'1' arg'2' arg'3')

data EventDispatcherConst =
    EventDispatcherConst (HoppyF.Ptr EventDispatcherConst)
  | EventDispatcherConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventDispatcherConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventDispatcherConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventDispatcherConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventDispatcherToConst :: EventDispatcher -> EventDispatcherConst
castEventDispatcherToConst (EventDispatcher ptr') = EventDispatcherConst $ HoppyF.castPtr ptr'
castEventDispatcherToConst (EventDispatcherGc fptr' ptr') = EventDispatcherConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventDispatcherConst where
  nullptr = EventDispatcherConst HoppyF.nullPtr
  
  withCppPtr (EventDispatcherConst ptr') f' = f' ptr'
  withCppPtr (EventDispatcherConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventDispatcherConst ptr') = ptr'
  toPtr (EventDispatcherConstGc _ ptr') = ptr'
  
  touchCppPtr (EventDispatcherConst _) = HoppyP.return ()
  touchCppPtr (EventDispatcherConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventDispatcherConst where
  delete (EventDispatcherConst ptr') = delete'EventDispatcher ptr'
  delete (EventDispatcherConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventDispatcherConst", " object."]
  
  toGc this'@(EventDispatcherConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventDispatcherConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventDispatcher :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventDispatcherConstGc {}) = HoppyP.return this'

instance EventDispatcherConstPtr EventDispatcherConst where
  toEventDispatcherConst = HoppyP.id

instance M2.RefConstPtr EventDispatcherConst where
  toRefConst (EventDispatcherConst ptr') = M2.RefConst $ castEventDispatcherToRef ptr'
  toRefConst (EventDispatcherConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventDispatcherToRef ptr'

data EventDispatcher =
    EventDispatcher (HoppyF.Ptr EventDispatcher)
  | EventDispatcherGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventDispatcher)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventDispatcher where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventDispatcher where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventDispatcherToNonconst :: EventDispatcherConst -> EventDispatcher
castEventDispatcherToNonconst (EventDispatcherConst ptr') = EventDispatcher $ HoppyF.castPtr ptr'
castEventDispatcherToNonconst (EventDispatcherConstGc fptr' ptr') = EventDispatcherGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventDispatcher where
  nullptr = EventDispatcher HoppyF.nullPtr
  
  withCppPtr (EventDispatcher ptr') f' = f' ptr'
  withCppPtr (EventDispatcherGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventDispatcher ptr') = ptr'
  toPtr (EventDispatcherGc _ ptr') = ptr'
  
  touchCppPtr (EventDispatcher _) = HoppyP.return ()
  touchCppPtr (EventDispatcherGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventDispatcher where
  delete (EventDispatcher ptr') = delete'EventDispatcher $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventDispatcherConst)
  delete (EventDispatcherGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventDispatcher", " object."]
  
  toGc this'@(EventDispatcher ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventDispatcherGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventDispatcher :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventDispatcherGc {}) = HoppyP.return this'

instance EventDispatcherConstPtr EventDispatcher where
  toEventDispatcherConst (EventDispatcher ptr') = EventDispatcherConst $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'
  toEventDispatcherConst (EventDispatcherGc fptr' ptr') = EventDispatcherConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'

instance EventDispatcherPtr EventDispatcher where
  toEventDispatcher = HoppyP.id

instance M2.RefConstPtr EventDispatcher where
  toRefConst (EventDispatcher ptr') = M2.RefConst $ castEventDispatcherToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'
  toRefConst (EventDispatcherGc fptr' ptr') = M2.RefConstGc fptr' $ castEventDispatcherToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'

instance M2.RefPtr EventDispatcher where
  toRef (EventDispatcher ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventDispatcherToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'
  toRef (EventDispatcherGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventDispatcherToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventDispatcher -> HoppyF.Ptr EventDispatcherConst) ptr'

class EventDispatcherSuper a where
  downToEventDispatcher :: a -> EventDispatcher

instance EventDispatcherSuper M2.Ref where
  downToEventDispatcher = castEventDispatcherToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventDispatcherConst $ castRefToEventDispatcher ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventDispatcherConstGc fptr' $ castRefToEventDispatcher ptr'

class EventDispatcherSuperConst a where
  downToEventDispatcherConst :: a -> EventDispatcherConst

instance EventDispatcherSuperConst M2.RefConst where
  downToEventDispatcherConst = cast'
    where
      cast' (M2.RefConst ptr') = EventDispatcherConst $ castRefToEventDispatcher ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventDispatcherConstGc fptr' $ castRefToEventDispatcher ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventDispatcher)) EventDispatcher where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventDispatcher)) EventDispatcher where
  decode = HoppyP.fmap EventDispatcher . HoppyF.peek

class GLViewValue a where
  withGLViewPtr :: a -> (GLViewConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} GLViewConstPtr a => GLViewValue a where
#else
instance GLViewConstPtr a => GLViewValue a where
#endif
  withGLViewPtr = HoppyP.flip ($) . toGLViewConst

class (M2.RefConstPtr this) => GLViewConstPtr this where
  toGLViewConst :: this -> GLViewConst

gLView_getFrameSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RawSizeConst
gLView_getFrameSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawSizeConst
  (gLView_getFrameSize' arg'1')

gLView_getFrameZoomFactor :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
gLView_getFrameZoomFactor arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (gLView_getFrameZoomFactor' arg'1')

gLView_getRetinaFactor :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
gLView_getRetinaFactor arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (gLView_getRetinaFactor' arg'1')

gLView_getContentScaleFactor :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
gLView_getContentScaleFactor arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (gLView_getContentScaleFactor' arg'1')

gLView_isRetinaDisplay :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
gLView_isRetinaDisplay arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (gLView_isRetinaDisplay' arg'1')

gLView_getVisibleSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO (CE.Size Float)
gLView_getVisibleSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.RawSizeConst) =<<
  (gLView_getVisibleSize' arg'1')

gLView_getVisibleOrigin :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
gLView_getVisibleOrigin arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (gLView_getVisibleOrigin' arg'1')

gLView_getVisibleRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RawRect
gLView_getVisibleRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.RawRect
  (gLView_getVisibleRect' arg'1')

gLView_getDesignResolutionSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RawSizeConst
gLView_getDesignResolutionSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawSizeConst
  (gLView_getDesignResolutionSize' arg'1')

gLView_getScissorRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RawRect
gLView_getScissorRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.RawRect
  (gLView_getScissorRect' arg'1')

gLView_getViewName :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
gLView_getViewName arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (gLView_getViewName' arg'1')

gLView_getViewPortRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RawRectConst
gLView_getViewPortRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawRectConst
  (gLView_getViewPortRect' arg'1')

gLView_getScaleX :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
gLView_getScaleX arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (gLView_getScaleX' arg'1')

gLView_getScaleY :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
gLView_getScaleY arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (gLView_getScaleY' arg'1')

gLView_getResolutionPolicy :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO ResolutionPolicy
gLView_getResolutionPolicy arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (gLView_getResolutionPolicy' arg'1')

class (GLViewConstPtr this, M2.RefPtr this) => GLViewPtr this where
  toGLView :: this -> GLView

gLView_setFrameSize :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
gLView_setFrameSize arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  (gLView_setFrameSize' arg'1' arg'2' arg'3')

gLView_setFrameZoomFactor :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
gLView_setFrameZoomFactor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (gLView_setFrameZoomFactor' arg'1' arg'2')

gLView_setCursorVisible :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
gLView_setCursorVisible arg'1 arg'2 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (gLView_setCursorVisible' arg'1' arg'2')

gLView_setContentScaleFactor :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
gLView_setContentScaleFactor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  HoppyP.fmap (/= 0)
  (gLView_setContentScaleFactor' arg'1' arg'2')

gLView_setDesignResolutionSize :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.Float -> ResolutionPolicy -> HoppyP.IO ()
gLView_setDesignResolutionSize arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'4 in
  (gLView_setDesignResolutionSize' arg'1' arg'2' arg'3' arg'4')

gLView_setViewPortInPoints :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
gLView_setViewPortInPoints arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = HoppyP.realToFrac arg'5 in
  (gLView_setViewPortInPoints' arg'1' arg'2' arg'3' arg'4' arg'5')

gLView_setScissorInPoints :: (GLViewPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
gLView_setScissorInPoints arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = HoppyP.realToFrac arg'5 in
  (gLView_setScissorInPoints' arg'1' arg'2' arg'3' arg'4' arg'5')

gLView_isScissorEnabled :: (GLViewPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
gLView_isScissorEnabled arg'1 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (gLView_isScissorEnabled' arg'1')

gLView_setViewName :: (GLViewPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
gLView_setViewName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (gLView_setViewName' arg'1' arg'2')

data GLViewConst =
    GLViewConst (HoppyF.Ptr GLViewConst)
  | GLViewConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr GLViewConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq GLViewConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord GLViewConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castGLViewToConst :: GLView -> GLViewConst
castGLViewToConst (GLView ptr') = GLViewConst $ HoppyF.castPtr ptr'
castGLViewToConst (GLViewGc fptr' ptr') = GLViewConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr GLViewConst where
  nullptr = GLViewConst HoppyF.nullPtr
  
  withCppPtr (GLViewConst ptr') f' = f' ptr'
  withCppPtr (GLViewConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (GLViewConst ptr') = ptr'
  toPtr (GLViewConstGc _ ptr') = ptr'
  
  touchCppPtr (GLViewConst _) = HoppyP.return ()
  touchCppPtr (GLViewConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable GLViewConst where
  delete (GLViewConst ptr') = delete'GLView ptr'
  delete (GLViewConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "GLViewConst", " object."]
  
  toGc this'@(GLViewConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip GLViewConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'GLView :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(GLViewConstGc {}) = HoppyP.return this'

instance GLViewConstPtr GLViewConst where
  toGLViewConst = HoppyP.id

instance M2.RefConstPtr GLViewConst where
  toRefConst (GLViewConst ptr') = M2.RefConst $ castGLViewToRef ptr'
  toRefConst (GLViewConstGc fptr' ptr') = M2.RefConstGc fptr' $ castGLViewToRef ptr'

data GLView =
    GLView (HoppyF.Ptr GLView)
  | GLViewGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr GLView)
  deriving (HoppyP.Show)

instance HoppyP.Eq GLView where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord GLView where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castGLViewToNonconst :: GLViewConst -> GLView
castGLViewToNonconst (GLViewConst ptr') = GLView $ HoppyF.castPtr ptr'
castGLViewToNonconst (GLViewConstGc fptr' ptr') = GLViewGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr GLView where
  nullptr = GLView HoppyF.nullPtr
  
  withCppPtr (GLView ptr') f' = f' ptr'
  withCppPtr (GLViewGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (GLView ptr') = ptr'
  toPtr (GLViewGc _ ptr') = ptr'
  
  touchCppPtr (GLView _) = HoppyP.return ()
  touchCppPtr (GLViewGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable GLView where
  delete (GLView ptr') = delete'GLView $ (HoppyF.castPtr ptr' :: HoppyF.Ptr GLViewConst)
  delete (GLViewGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "GLView", " object."]
  
  toGc this'@(GLView ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip GLViewGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'GLView :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(GLViewGc {}) = HoppyP.return this'

instance GLViewConstPtr GLView where
  toGLViewConst (GLView ptr') = GLViewConst $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'
  toGLViewConst (GLViewGc fptr' ptr') = GLViewConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'

instance GLViewPtr GLView where
  toGLView = HoppyP.id

instance M2.RefConstPtr GLView where
  toRefConst (GLView ptr') = M2.RefConst $ castGLViewToRef $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'
  toRefConst (GLViewGc fptr' ptr') = M2.RefConstGc fptr' $ castGLViewToRef $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'

instance M2.RefPtr GLView where
  toRef (GLView ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castGLViewToRef $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'
  toRef (GLViewGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castGLViewToRef $ (HoppyF.castPtr :: HoppyF.Ptr GLView -> HoppyF.Ptr GLViewConst) ptr'

class GLViewSuper a where
  downToGLView :: a -> GLView

instance GLViewSuper M2.Ref where
  downToGLView = castGLViewToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = GLViewConst $ castRefToGLView ptr'
      cast' (M2.RefConstGc fptr' ptr') = GLViewConstGc fptr' $ castRefToGLView ptr'

class GLViewSuperConst a where
  downToGLViewConst :: a -> GLViewConst

instance GLViewSuperConst M2.RefConst where
  downToGLViewConst = cast'
    where
      cast' (M2.RefConst ptr') = GLViewConst $ castRefToGLView ptr'
      cast' (M2.RefConstGc fptr' ptr') = GLViewConstGc fptr' $ castRefToGLView ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr GLView)) GLView where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr GLView)) GLView where
  decode = HoppyP.fmap GLView . HoppyF.peek

data ResolutionPolicy =
  ResolutionPolicy_ExactFit
  | ResolutionPolicy_NoBorder
  | ResolutionPolicy_ShowAll
  | ResolutionPolicy_FixedHeight
  | ResolutionPolicy_FixedWidth
  | ResolutionPolicy_Unknown
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum ResolutionPolicy where
  fromEnum ResolutionPolicy_ExactFit = 0
  fromEnum ResolutionPolicy_NoBorder = 1
  fromEnum ResolutionPolicy_ShowAll = 2
  fromEnum ResolutionPolicy_FixedHeight = 3
  fromEnum ResolutionPolicy_FixedWidth = 4
  fromEnum ResolutionPolicy_Unknown = 5
  
  toEnum (0) = ResolutionPolicy_ExactFit
  toEnum (1) = ResolutionPolicy_NoBorder
  toEnum (2) = ResolutionPolicy_ShowAll
  toEnum (3) = ResolutionPolicy_FixedHeight
  toEnum (4) = ResolutionPolicy_FixedWidth
  toEnum (5) = ResolutionPolicy_Unknown
  toEnum n' = HoppyP.error $ "Unknown ResolutionPolicy numeric value: " ++ HoppyP.show n'

class SchedulerValue a where
  withSchedulerPtr :: a -> (SchedulerConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} SchedulerConstPtr a => SchedulerValue a where
#else
instance SchedulerConstPtr a => SchedulerValue a where
#endif
  withSchedulerPtr = HoppyP.flip ($) . toSchedulerConst

class (M2.RefConstPtr this) => SchedulerConstPtr this where
  toSchedulerConst :: this -> SchedulerConst

class (SchedulerConstPtr this, M2.RefPtr this) => SchedulerPtr this where
  toScheduler :: this -> Scheduler

scheduler_getTimeScale :: (SchedulerPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
scheduler_getTimeScale arg'1 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (scheduler_getTimeScale' arg'1')

scheduler_setTimeScale :: (SchedulerPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
scheduler_setTimeScale arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (scheduler_setTimeScale' arg'1' arg'2')

scheduler_scheduleWithInterval :: (SchedulerPtr arg'1, M1.StdStringValue arg'6) => arg'1 -> (HoppyP.Float -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.Float -> HoppyP.Bool -> arg'6 -> HoppyP.IO ()
scheduler_scheduleWithInterval arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  M2.scheduleCallback_new arg'2 >>= \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = if arg'5 then 1 else 0 in
  M1.withStdStringPtr arg'6 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'6' ->
  (scheduler_scheduleWithInterval' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

scheduler_scheduleWithIntervalAndRepeat :: (SchedulerPtr arg'1, M1.StdStringValue arg'8) => arg'1 -> (HoppyP.Float -> HoppyP.IO ()) -> HoppyF.Ptr () -> HoppyP.Float -> HoppyFC.CUInt -> HoppyP.Float -> HoppyP.Bool -> arg'8 -> HoppyP.IO ()
scheduler_scheduleWithIntervalAndRepeat arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 arg'8 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  M2.scheduleCallback_new arg'2 >>= \arg'2' ->
  let arg'3' = arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = arg'5 in
  let arg'6' = HoppyP.realToFrac arg'6 in
  let arg'7' = if arg'7 then 1 else 0 in
  M1.withStdStringPtr arg'8 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'8' ->
  (scheduler_scheduleWithIntervalAndRepeat' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7' arg'8')

scheduler_unschedule :: (SchedulerPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr () -> HoppyP.IO ()
scheduler_unschedule arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  (scheduler_unschedule' arg'1' arg'2' arg'3')

scheduler_isScheduled :: (SchedulerPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyF.Ptr () -> HoppyP.IO HoppyP.Bool
scheduler_isScheduled arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  HoppyP.fmap (/= 0)
  (scheduler_isScheduled' arg'1' arg'2' arg'3')

scheduler_pauseTarget :: (SchedulerPtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO ()
scheduler_pauseTarget arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (scheduler_pauseTarget' arg'1' arg'2')

scheduler_resumeTarget :: (SchedulerPtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO ()
scheduler_resumeTarget arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (scheduler_resumeTarget' arg'1' arg'2')

scheduler_isTargetPaused :: (SchedulerPtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO HoppyP.Bool
scheduler_isTargetPaused arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap (/= 0)
  (scheduler_isTargetPaused' arg'1' arg'2')

scheduler_unscheduleAllForTarget :: (SchedulerPtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO ()
scheduler_unscheduleAllForTarget arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (scheduler_unscheduleAllForTarget' arg'1' arg'2')

scheduler_performFunctionInCocosThread :: (SchedulerPtr arg'1) => arg'1 -> HoppyP.IO () -> HoppyP.IO ()
scheduler_performFunctionInCocosThread arg'1 arg'2 =
  HoppyFHR.withCppPtr (toScheduler arg'1) $ \arg'1' ->
  M2.threadPerformCallback_new arg'2 >>= \arg'2' ->
  (scheduler_performFunctionInCocosThread' arg'1' arg'2')

data SchedulerConst =
    SchedulerConst (HoppyF.Ptr SchedulerConst)
  | SchedulerConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SchedulerConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq SchedulerConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SchedulerConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSchedulerToConst :: Scheduler -> SchedulerConst
castSchedulerToConst (Scheduler ptr') = SchedulerConst $ HoppyF.castPtr ptr'
castSchedulerToConst (SchedulerGc fptr' ptr') = SchedulerConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SchedulerConst where
  nullptr = SchedulerConst HoppyF.nullPtr
  
  withCppPtr (SchedulerConst ptr') f' = f' ptr'
  withCppPtr (SchedulerConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SchedulerConst ptr') = ptr'
  toPtr (SchedulerConstGc _ ptr') = ptr'
  
  touchCppPtr (SchedulerConst _) = HoppyP.return ()
  touchCppPtr (SchedulerConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SchedulerConst where
  delete (SchedulerConst ptr') = delete'Scheduler ptr'
  delete (SchedulerConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SchedulerConst", " object."]
  
  toGc this'@(SchedulerConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SchedulerConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Scheduler :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SchedulerConstGc {}) = HoppyP.return this'

instance SchedulerConstPtr SchedulerConst where
  toSchedulerConst = HoppyP.id

instance M2.RefConstPtr SchedulerConst where
  toRefConst (SchedulerConst ptr') = M2.RefConst $ castSchedulerToRef ptr'
  toRefConst (SchedulerConstGc fptr' ptr') = M2.RefConstGc fptr' $ castSchedulerToRef ptr'

data Scheduler =
    Scheduler (HoppyF.Ptr Scheduler)
  | SchedulerGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Scheduler)
  deriving (HoppyP.Show)

instance HoppyP.Eq Scheduler where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Scheduler where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSchedulerToNonconst :: SchedulerConst -> Scheduler
castSchedulerToNonconst (SchedulerConst ptr') = Scheduler $ HoppyF.castPtr ptr'
castSchedulerToNonconst (SchedulerConstGc fptr' ptr') = SchedulerGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Scheduler where
  nullptr = Scheduler HoppyF.nullPtr
  
  withCppPtr (Scheduler ptr') f' = f' ptr'
  withCppPtr (SchedulerGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Scheduler ptr') = ptr'
  toPtr (SchedulerGc _ ptr') = ptr'
  
  touchCppPtr (Scheduler _) = HoppyP.return ()
  touchCppPtr (SchedulerGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Scheduler where
  delete (Scheduler ptr') = delete'Scheduler $ (HoppyF.castPtr ptr' :: HoppyF.Ptr SchedulerConst)
  delete (SchedulerGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Scheduler", " object."]
  
  toGc this'@(Scheduler ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SchedulerGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Scheduler :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SchedulerGc {}) = HoppyP.return this'

instance SchedulerConstPtr Scheduler where
  toSchedulerConst (Scheduler ptr') = SchedulerConst $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'
  toSchedulerConst (SchedulerGc fptr' ptr') = SchedulerConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'

instance SchedulerPtr Scheduler where
  toScheduler = HoppyP.id

instance M2.RefConstPtr Scheduler where
  toRefConst (Scheduler ptr') = M2.RefConst $ castSchedulerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'
  toRefConst (SchedulerGc fptr' ptr') = M2.RefConstGc fptr' $ castSchedulerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'

instance M2.RefPtr Scheduler where
  toRef (Scheduler ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSchedulerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'
  toRef (SchedulerGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSchedulerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scheduler -> HoppyF.Ptr SchedulerConst) ptr'

class SchedulerSuper a where
  downToScheduler :: a -> Scheduler

instance SchedulerSuper M2.Ref where
  downToScheduler = castSchedulerToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = SchedulerConst $ castRefToScheduler ptr'
      cast' (M2.RefConstGc fptr' ptr') = SchedulerConstGc fptr' $ castRefToScheduler ptr'

class SchedulerSuperConst a where
  downToSchedulerConst :: a -> SchedulerConst

instance SchedulerSuperConst M2.RefConst where
  downToSchedulerConst = cast'
    where
      cast' (M2.RefConst ptr') = SchedulerConst $ castRefToScheduler ptr'
      cast' (M2.RefConstGc fptr' ptr') = SchedulerConstGc fptr' $ castRefToScheduler ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Scheduler)) Scheduler where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Scheduler)) Scheduler where
  decode = HoppyP.fmap Scheduler . HoppyF.peek