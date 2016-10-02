module Graphics.UI.Cocos2d.Generator.Interface.Director
    (
      mod_director
    , e_ResolutionPolicy
    , c_Director
    , c_GLView
    , c_Scheduler
    , c_EventDispatcher
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Scene
import Graphics.UI.Cocos2d.Generator.Interface.Common
import Graphics.UI.Cocos2d.Generator.Interface.Texture
import Graphics.UI.Cocos2d.Generator.Interface.Event

mod_director :: Module
mod_director =
  moduleModify' (makeModule "director" "Director.hpp" "Director.cpp") $
    moduleAddExports
    [ ExportEnum e_ResolutionPolicy
    , ExportClass c_Director
    , ExportClass c_GLView
    , ExportClass c_Scheduler
    , ExportClass c_EventDispatcher
    ]

c_Director :: Class
c_Director =
  addReqIncludes [includeStd "base/CCDirector.h"] $
    makeClass (ident1 "cocos2d" "Director") Nothing [c_Ref]
      [ mkStaticMethod "getInstance" [] $ ptrT $ objT c_Director
      , mkMethod "getRunningScene" [] $ ptrT $ objT c_Scene
      , mkMethod "getAnimationInterval" [] floatT
      , mkMethod "setAnimationInterval" [floatT] voidT
      , mkMethod "isDisplayStats" [] boolT
      , mkMethod "setDisplayStats" [boolT] voidT
      , mkMethod "getSecondsPerFrame" [] floatT
      , mkMethod "getOpenGLView" [] $ ptrT $ objT c_GLView
      -- TODO: texture cache
      , mkMethod "isPaused" [] boolT
      , mkMethod "getTotalFrames" [] uintT
      , mkConstMethod "getWinSize" [] $ refT $ constT $ objT c_Size
      , mkConstMethod "getWinSizeInPixels" [] $ objT c_Size
      , mkConstMethod "getVisibleSize" [] $ objT c_Size
      , mkConstMethod "getVisibleOrigin" [] $ objT c_Vec2
      , mkMethod "convertToGL" [refT $ constT $ objT c_Vec2] $ objT c_Vec2
      , mkMethod "convertToUI" [refT $ constT $ objT c_Vec2] $ objT c_Vec2
      , mkConstMethod "getZEye" [] floatT
      , mkMethod "runWithScene" [ptrT $ objT c_Scene] voidT
      , mkMethod "pushScene" [ptrT $ objT c_Scene] voidT
      , mkMethod "popScene" [] voidT
      , mkMethod "popToRootScene" [] voidT
      , mkMethod "popToSceneStackLevel" [intT] voidT
      , mkMethod "replaceScene" [ptrT $ objT c_Scene] voidT
      , mkMethod "end" [] voidT
      , mkMethod "pause" [] voidT
      , mkMethod "resume" [] voidT
      , mkMethod "stopAnimation" [] voidT
      , mkMethod "startAnimation" [] voidT
      , mkMethod "purgeCachedData" [] voidT
      , mkMethod "setDefaultValues" [] voidT
      , mkMethod "setGLDefaultValues" [] voidT
      , mkMethod "setAlphaBlending" [boolT] voidT
      , mkMethod "setDepthTest" [boolT] voidT
      , mkMethod "setContentScaleFactor" [floatT] voidT
      , mkConstMethod "getContentScaleFactor" [] floatT
      , mkConstMethod "getScheduler" [] $ ptrT $ objT c_Scheduler
      , mkConstMethod "getEventDispatcher" [] $ ptrT $ objT c_EventDispatcher
      , mkConstMethod "getTextureCache" [] $ ptrT $ objT c_TextureCache
      -- TODO: action manager, renderer, console
      -- TODO: getCocos2dThreadId
      ]

e_ResolutionPolicy :: CppEnum
e_ResolutionPolicy =
  makeEnum (ident "ResolutionPolicy") Nothing
    [ (0, ["exact", "fit"])
    , (1, ["no", "border"])
    , (2, ["show", "all"])
    , (3, ["fixed", "height"])
    , (4, ["fixed", "width"])
    , (5, ["unknown"])
    ]

c_GLView :: Class
c_GLView =
  addReqIncludes [includeStd "platform/CCGLView.h"] $
    makeClass (ident1 "cocos2d" "GLView") Nothing [c_Ref]
      [ mkConstMethod "getFrameSize" [] $ refT $ constT $ objT c_Size
      , mkMethod "setFrameSize" [floatT, floatT] voidT
      , mkConstMethod "getFrameZoomFactor" [] floatT
      , mkMethod "setFrameZoomFactor" [floatT] voidT
      , mkMethod "setCursorVisible" [boolT] voidT
      , mkConstMethod "getRetinaFactor"[] intT
      , mkMethod "setContentScaleFactor" [floatT] boolT
      , mkConstMethod "getContentScaleFactor" [] floatT
      , mkConstMethod "isRetinaDisplay" [] boolT
      , mkConstMethod "getVisibleSize" [] $ objT c_Size
      , mkConstMethod "getVisibleOrigin" [] $ objT c_Vec2
      , mkConstMethod "getVisibleRect" [] $ toGcT (objT c_Rect)
      , mkConstMethod "getDesignResolutionSize" [] $ refT $ constT $ objT c_Size
      -- width, height, resolution policy
      , mkMethod "setDesignResolutionSize" [floatT, floatT, enumT e_ResolutionPolicy] voidT
      , mkMethod "setViewPortInPoints" [floatT, floatT, floatT, floatT] voidT
      , mkMethod "setScissorInPoints" [floatT, floatT, floatT, floatT] voidT
      , mkMethod "isScissorEnabled" [] boolT
      , mkConstMethod "getScissorRect" [] $ toGcT (objT c_Rect)
      , mkMethod "setViewName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getViewName" [] $ refT $ constT $ objT c_string
      , mkConstMethod "getViewPortRect" [] $ refT $ constT $ objT c_Rect
      , mkConstMethod "getScaleX" [] floatT
      , mkConstMethod "getScaleY" [] floatT
      , mkConstMethod "getResolutionPolicy" [] $ enumT e_ResolutionPolicy
      ]

c_Scheduler :: Class
c_Scheduler =
  addReqIncludes [includeStd "base/CCScheduler.h"] $
    makeClass (ident1 "cocos2d" "Scheduler") Nothing [c_Ref]
      [ mkMethod "getTimeScale" [] floatT
      , mkMethod "setTimeScale" [floatT] voidT
      -- called every frame
      , mkMethod' "schedule" "scheduleWithInterval"
          [ callbackT cb_ScheduleCallback
          , ptrT voidT                    -- target
          , floatT                        -- interval in seconds, 0 means every frame
          , boolT                         -- paused
          , refT $ constT $ objT c_string -- key
          ] voidT
      , mkMethod' "schedule" "scheduleWithIntervalAndRepeat"
          [ callbackT cb_ScheduleCallback
          , ptrT voidT                    -- target
          , floatT                        -- interval
          , uintT                         -- will be executed (repeat+1) times
          , floatT                        -- delay
          , boolT                         -- paused
          , refT $ constT $ objT c_string -- key
          ] voidT
      , mkMethod "unschedule"
          [ refT $ constT $ objT c_string -- key
          , ptrT voidT                    -- target
          ] voidT
      , mkMethod "isScheduled"
          [ refT $ constT $ objT c_string -- key
          , ptrT voidT                    -- target
          ] boolT
      , mkMethod "pauseTarget" [ ptrT voidT ] voidT
      , mkMethod "resumeTarget" [ ptrT voidT ] voidT
      , mkMethod "isTargetPaused" [ ptrT voidT ] boolT
      , mkMethod "unscheduleAllForTarget" [ ptrT voidT ] voidT
      , mkMethod "performFunctionInCocosThread" [callbackT cb_ThreadPerformCallback] voidT
      ]

c_EventDispatcher :: Class
c_EventDispatcher =
  addReqIncludes [includeStd "base/CCEventDispatcher.h"] $
    makeClass (ident1 "cocos2d" "EventDispatcher") Nothing [c_Ref]
      [ mkMethod "addEventListenerWithSceneGraphPriority"
      --  @note  The priority of scene graph will be fixed value 0. So the order of listener item
      --          in the vector will be ' <0, scene graph (0 priority), >0'.
          [ ptrT $ objT c_EventListener
          , ptrT $ objT c_Node ] voidT
      --  @note A lower priority will be called before the ones that have a higher value.
      --        0 priority is forbidden for fixed priority since it's used for scene graph based priority.
      , mkMethod "addEventListenerWithFixedPriority"
          [ ptrT $ objT c_EventListener
          , intT ] voidT
      -- it will use a fixed priority of 1
      , mkMethod "addCustomEventListener"
          [ refT $ constT $ objT c_string
          , callbackT cb_EventCustomCallback ] $ ptrT $ objT c_EventListenerCustom
      , mkMethod "removeEventListener" [ptrT $ objT c_EventListener] voidT
      , mkMethod "removeEventListenersForType" [enumT e_EventListenerType] voidT
      , mkMethod "removeEventListenersForTarget"
          [ ptrT $ objT c_Node
          , boolT -- recursive
          ] voidT
      , mkMethod "removeCustomEventListeners" [refT $ constT $ objT c_string] voidT
      , mkMethod "removeAllEventListeners" [] voidT
      , mkMethod "pauseEventListenersForTarget"
          [ ptrT $ objT c_Node
          , boolT -- recursive
          ] voidT
      , mkMethod "resumeEventListenersForTarget"
          [ ptrT $ objT c_Node
          , boolT -- recursive
          ] voidT
      , mkMethod "setPriority"
          [ ptrT $ objT c_EventListener
          , intT -- fixedPriority
          ] voidT
      , mkMethod "setEnabled" [boolT] voidT
      , mkConstMethod "isEnabled" [] boolT
      , mkMethod "dispatchEvent" [ptrT $ objT c_Event] voidT
      , mkMethod "dispatchCustomEvent"
          [ refT $ constT $ objT c_string
          , ptrT voidT -- optionalUserData
          ] voidT
      ]
