{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Director (
  castDirectorToRef,
  castRefToDirector,
  castGLViewToRef,
  castRefToGLView,
  DirectorValue (..),
  DirectorConstPtr (..),
  director_getWinSize,
  director_getWinSizeInPixels,
  director_getVisibleSize,
  director_getVisibleOrigin,
  director_getZEye,
  director_getContentScaleFactor,
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
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Scene as M7
import qualified Graphics.UI.Cocos2d.Std as M1
import Linear.V2
import Prelude (($), (++), (.), (/=), (=<<), (==), Float)
import qualified Prelude as HoppyP

foreign import ccall "genpop__Director_getInstance" director_getInstance' ::   HoppyP.IO (HoppyF.Ptr Director)
foreign import ccall "genpop__Director_getRunningScene" director_getRunningScene' ::   HoppyF.Ptr Director -> HoppyP.IO (HoppyF.Ptr M7.Scene)
foreign import ccall "genpop__Director_getAnimationInterval" director_getAnimationInterval' ::   HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_setAnimationInterval" director_setAnimationInterval' ::   HoppyF.Ptr Director -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Director_isDisplayStats" director_isDisplayStats' ::   HoppyF.Ptr Director -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Director_setDisplayStats" director_setDisplayStats' ::   HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_getSecondsPerFrame" director_getSecondsPerFrame' ::   HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_getOpenGLView" director_getOpenGLView' ::   HoppyF.Ptr Director -> HoppyP.IO (HoppyF.Ptr GLView)
foreign import ccall "genpop__Director_isPaused" director_isPaused' ::   HoppyF.Ptr Director -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Director_getTotalFrames" director_getTotalFrames' ::   HoppyF.Ptr Director -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "genpop__Director_getWinSize" director_getWinSize' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Director_getWinSizeInPixels" director_getWinSizeInPixels' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Director_getVisibleSize" director_getVisibleSize' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Director_getVisibleOrigin" director_getVisibleOrigin' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_convertToGL" director_convertToGL' ::   HoppyF.Ptr Director ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_convertToUI" director_convertToUI' ::   HoppyF.Ptr Director ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Director_getZEye" director_getZEye' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Director_runWithScene" director_runWithScene' ::   HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_pushScene" director_pushScene' ::   HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_popScene" director_popScene' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_popToRootScene" director_popToRootScene' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_popToSceneStackLevel" director_popToSceneStackLevel' ::   HoppyF.Ptr Director -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Director_replaceScene" director_replaceScene' ::   HoppyF.Ptr Director -> HoppyF.Ptr M7.Scene -> HoppyP.IO ()
foreign import ccall "genpop__Director_end" director_end' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_pause" director_pause' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_resume" director_resume' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_stopAnimation" director_stopAnimation' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_startAnimation" director_startAnimation' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_purgeCachedData" director_purgeCachedData' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setDefaultValues" director_setDefaultValues' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setGLDefaultValues" director_setGLDefaultValues' ::   HoppyF.Ptr Director -> HoppyP.IO ()
foreign import ccall "genpop__Director_setAlphaBlending" director_setAlphaBlending' ::   HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_setDepthTest" director_setDepthTest' ::   HoppyF.Ptr Director -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Director_setContentScaleFactor" director_setContentScaleFactor' ::   HoppyF.Ptr Director -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Director_getContentScaleFactor" director_getContentScaleFactor' ::   HoppyF.Ptr DirectorConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "gencast__Director__Ref" castDirectorToRef :: HoppyF.Ptr DirectorConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Director" castRefToDirector :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr DirectorConst
foreign import ccall "gendel__Director" delete'Director :: HoppyF.Ptr DirectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__Director" deletePtr'Director :: HoppyF.FunPtr (HoppyF.Ptr DirectorConst -> HoppyP.IO ())
foreign import ccall "genpop__GLView_getFrameSize" gLView_getFrameSize' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__GLView_setFrameSize" gLView_setFrameSize' ::   HoppyF.Ptr GLView ->    HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getFrameZoomFactor" gLView_getFrameZoomFactor' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_setFrameZoomFactor" gLView_setFrameZoomFactor' ::   HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setCursorVisible" gLView_setCursorVisible' ::   HoppyF.Ptr GLView -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getRetinaFactor" gLView_getRetinaFactor' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__GLView_setContentScaleFactor" gLView_setContentScaleFactor' ::   HoppyF.Ptr GLView -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getContentScaleFactor" gLView_getContentScaleFactor' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_isRetinaDisplay" gLView_isRetinaDisplay' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getVisibleSize" gLView_getVisibleSize' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__GLView_getVisibleOrigin" gLView_getVisibleOrigin' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__GLView_getVisibleRect" gLView_getVisibleRect' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.Rect)
foreign import ccall "genpop__GLView_getDesignResolutionSize" gLView_getDesignResolutionSize' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__GLView_setDesignResolutionSize" gLView_setDesignResolutionSize' ::   HoppyF.Ptr GLView ->    HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setViewPortInPoints" gLView_setViewPortInPoints' ::   HoppyF.Ptr GLView ->    HoppyFC.CFloat ->      HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_setScissorInPoints" gLView_setScissorInPoints' ::   HoppyF.Ptr GLView ->    HoppyFC.CFloat ->      HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__GLView_isScissorEnabled" gLView_isScissorEnabled' ::   HoppyF.Ptr GLView -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__GLView_getScissorRect" gLView_getScissorRect' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.Rect)
foreign import ccall "genpop__GLView_setViewName" gLView_setViewName' ::   HoppyF.Ptr GLView -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__GLView_getViewName" gLView_getViewName' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__GLView_getViewPortRect" gLView_getViewPortRect' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO (HoppyF.Ptr M2.RectConst)
foreign import ccall "genpop__GLView_getScaleX" gLView_getScaleX' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_getScaleY" gLView_getScaleY' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__GLView_getResolutionPolicy" gLView_getResolutionPolicy' ::   HoppyF.Ptr GLViewConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "gencast__GLView__Ref" castGLViewToRef :: HoppyF.Ptr GLViewConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__GLView" castRefToGLView :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr GLViewConst
foreign import ccall "gendel__GLView" delete'GLView :: HoppyF.Ptr GLViewConst -> HoppyP.IO ()
foreign import ccall "&gendel__GLView" deletePtr'GLView :: HoppyF.FunPtr (HoppyF.Ptr GLViewConst -> HoppyP.IO ())

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

director_getWinSize :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
director_getWinSize arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (director_getWinSize' arg'1')

director_getWinSizeInPixels :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
director_getWinSizeInPixels arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.SizeConst) =<<
  (director_getWinSizeInPixels' arg'1')

director_getVisibleSize :: (DirectorValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
director_getVisibleSize arg'1 =
  withDirectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.SizeConst) =<<
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

director_convertToGL :: (DirectorPtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
director_convertToGL arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (director_convertToGL' arg'1' arg'2')

director_convertToUI :: (DirectorPtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
director_convertToUI arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (director_convertToUI' arg'1' arg'2')

director_runWithScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
director_runWithScene arg'1 arg'2 =
  HoppyFHR.withCppPtr (toDirector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M7.toScene arg'2) $ \arg'2' ->
  (director_runWithScene' arg'1' arg'2')

director_pushScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
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

director_replaceScene :: (DirectorPtr arg'1, M7.ScenePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
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

director_getInstance ::   HoppyP.IO Director
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

gLView_getFrameSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
gLView_getFrameSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
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

gLView_getVisibleSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
gLView_getVisibleSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.SizeConst) =<<
  (gLView_getVisibleSize' arg'1')

gLView_getVisibleOrigin :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
gLView_getVisibleOrigin arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (gLView_getVisibleOrigin' arg'1')

gLView_getVisibleRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.Rect
gLView_getVisibleRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Rect
  (gLView_getVisibleRect' arg'1')

gLView_getDesignResolutionSize :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
gLView_getDesignResolutionSize arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (gLView_getDesignResolutionSize' arg'1')

gLView_getScissorRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.Rect
gLView_getScissorRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Rect
  (gLView_getScissorRect' arg'1')

gLView_getViewName :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
gLView_getViewName arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (gLView_getViewName' arg'1')

gLView_getViewPortRect :: (GLViewValue arg'1) => arg'1 -> HoppyP.IO M2.RectConst
gLView_getViewPortRect arg'1 =
  withGLViewPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RectConst
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

gLView_setFrameSize :: (GLViewPtr arg'1) =>  arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
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

gLView_setDesignResolutionSize :: (GLViewPtr arg'1) =>  arg'1 ->    HoppyP.Float -> HoppyP.Float -> ResolutionPolicy -> HoppyP.IO ()
gLView_setDesignResolutionSize arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'4 in
  (gLView_setDesignResolutionSize' arg'1' arg'2' arg'3' arg'4')

gLView_setViewPortInPoints :: (GLViewPtr arg'1) =>  arg'1 ->    HoppyP.Float ->      HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
gLView_setViewPortInPoints arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toGLView arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = HoppyP.realToFrac arg'5 in
  (gLView_setViewPortInPoints' arg'1' arg'2' arg'3' arg'4' arg'5')

gLView_setScissorInPoints :: (GLViewPtr arg'1) =>  arg'1 ->    HoppyP.Float ->      HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
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

gLView_setViewName :: (GLViewPtr arg'1, M1.StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
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