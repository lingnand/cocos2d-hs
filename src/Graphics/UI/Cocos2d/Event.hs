{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Event (
  castEventToRef,
  castRefToEvent,
  castEventAccelerationToRef,
  castRefToEventAcceleration,
  castEventCustomToEvent,
  castEventToEventCustom,
  castEventCustomToRef,
  castRefToEventCustom,
  castEventListenerToRef,
  castRefToEventListener,
  castEventListenerAccelerationToEventListener,
  castEventListenerToEventListenerAcceleration,
  castEventListenerAccelerationToRef,
  castRefToEventListenerAcceleration,
  castEventListenerCustomToEventListener,
  castEventListenerToEventListenerCustom,
  castEventListenerCustomToRef,
  castRefToEventListenerCustom,
  castEventListenerFocusToEventListener,
  castEventListenerToEventListenerFocus,
  castEventListenerFocusToRef,
  castRefToEventListenerFocus,
  castEventListenerKeyboardToEventListener,
  castEventListenerToEventListenerKeyboard,
  castEventListenerKeyboardToRef,
  castRefToEventListenerKeyboard,
  castEventListenerMouseToEventListener,
  castEventListenerToEventListenerMouse,
  castEventListenerMouseToRef,
  castRefToEventListenerMouse,
  castEventListenerTouchAllAtOnceToEventListener,
  castEventListenerToEventListenerTouchAllAtOnce,
  castEventListenerTouchAllAtOnceToRef,
  castRefToEventListenerTouchAllAtOnce,
  castEventListenerTouchOneByOneToEventListener,
  castEventListenerToEventListenerTouchOneByOne,
  castEventListenerTouchOneByOneToRef,
  castRefToEventListenerTouchOneByOne,
  castEventMouseToEvent,
  castEventToEventMouse,
  castEventMouseToRef,
  castRefToEventMouse,
  castEventTouchToRef,
  castRefToEventTouch,
  EventValue (..),
  EventConstPtr (..),
  event_getType,
  event_isStopped,
  EventPtr (..),
  event_stopPropagation,
  event_getCurrentTarget,
  EventConst (..),
  castEventToConst,
  Event (..),
  castEventToNonconst,
  EventSuper (..),
  EventSuperConst (..),
  EventAccelerationValue (..),
  EventAccelerationConstPtr (..),
  EventAccelerationPtr (..),
  EventAccelerationConst (..),
  castEventAccelerationToConst,
  EventAcceleration (..),
  castEventAccelerationToNonconst,
  eventAcceleration_x_get,
  eventAcceleration_x_set,
  eventAcceleration_y_get,
  eventAcceleration_y_set,
  eventAcceleration_z_get,
  eventAcceleration_z_set,
  eventAcceleration_timestamp_get,
  eventAcceleration_timestamp_set,
  eventAcceleration_new,
  EventAccelerationSuper (..),
  EventAccelerationSuperConst (..),
  eventAccelerationCallback_newFunPtr,
  eventAccelerationCallback_new,
  EventCustomValue (..),
  EventCustomConstPtr (..),
  eventCustom_getUserData,
  eventCustom_getEventName,
  EventCustomPtr (..),
  eventCustom_setUserData,
  EventCustomConst (..),
  castEventCustomToConst,
  EventCustom (..),
  castEventCustomToNonconst,
  EventCustomSuper (..),
  EventCustomSuperConst (..),
  eventCustomCallback_newFunPtr,
  eventCustomCallback_new,
  eventFocusCallback_newFunPtr,
  eventFocusCallback_new,
  eventKeyboardCallback_newFunPtr,
  eventKeyboardCallback_new,
  EventListenerValue (..),
  EventListenerConstPtr (..),
  eventListener_isEnabled,
  EventListenerPtr (..),
  eventListener_checkAvailable,
  eventListener_setEnabled,
  EventListenerConst (..),
  castEventListenerToConst,
  EventListener (..),
  castEventListenerToNonconst,
  EventListenerSuper (..),
  EventListenerSuperConst (..),
  EventListenerAccelerationValue (..),
  EventListenerAccelerationConstPtr (..),
  EventListenerAccelerationPtr (..),
  eventListenerAcceleration_create,
  EventListenerAccelerationConst (..),
  castEventListenerAccelerationToConst,
  EventListenerAcceleration (..),
  castEventListenerAccelerationToNonconst,
  EventListenerAccelerationSuper (..),
  EventListenerAccelerationSuperConst (..),
  EventListenerCustomValue (..),
  EventListenerCustomConstPtr (..),
  EventListenerCustomPtr (..),
  eventListenerCustom_create,
  EventListenerCustomConst (..),
  castEventListenerCustomToConst,
  EventListenerCustom (..),
  castEventListenerCustomToNonconst,
  EventListenerCustomSuper (..),
  EventListenerCustomSuperConst (..),
  EventListenerFocusValue (..),
  EventListenerFocusConstPtr (..),
  EventListenerFocusPtr (..),
  eventListenerFocus_create,
  EventListenerFocusConst (..),
  castEventListenerFocusToConst,
  EventListenerFocus (..),
  castEventListenerFocusToNonconst,
  eventListenerFocus_onFocusChanged_set,
  EventListenerFocusSuper (..),
  EventListenerFocusSuperConst (..),
  EventListenerKeyboardValue (..),
  EventListenerKeyboardConstPtr (..),
  EventListenerKeyboardPtr (..),
  eventListenerKeyboard_create,
  EventListenerKeyboardConst (..),
  castEventListenerKeyboardToConst,
  EventListenerKeyboard (..),
  castEventListenerKeyboardToNonconst,
  eventListenerKeyboard_onKeyPressed_set,
  eventListenerKeyboard_onKeyReleased_set,
  EventListenerKeyboardSuper (..),
  EventListenerKeyboardSuperConst (..),
  EventListenerMouseValue (..),
  EventListenerMouseConstPtr (..),
  EventListenerMousePtr (..),
  eventListenerMouse_create,
  EventListenerMouseConst (..),
  castEventListenerMouseToConst,
  EventListenerMouse (..),
  castEventListenerMouseToNonconst,
  eventListenerMouse_onMouseDown_set,
  eventListenerMouse_onMouseUp_set,
  eventListenerMouse_onMouseMove_set,
  eventListenerMouse_onMouseScroll_set,
  EventListenerMouseSuper (..),
  EventListenerMouseSuperConst (..),
  EventListenerTouchAllAtOnceValue (..),
  EventListenerTouchAllAtOnceConstPtr (..),
  EventListenerTouchAllAtOncePtr (..),
  eventListenerTouchAllAtOnce_create,
  EventListenerTouchAllAtOnceConst (..),
  castEventListenerTouchAllAtOnceToConst,
  EventListenerTouchAllAtOnce (..),
  castEventListenerTouchAllAtOnceToNonconst,
  eventListenerTouchAllAtOnce_onTouchesBegan_set,
  eventListenerTouchAllAtOnce_onTouchesMoved_set,
  eventListenerTouchAllAtOnce_onTouchesEnded_set,
  eventListenerTouchAllAtOnce_onTouchesCancelled_set,
  EventListenerTouchAllAtOnceSuper (..),
  EventListenerTouchAllAtOnceSuperConst (..),
  EventListenerTouchOneByOneValue (..),
  EventListenerTouchOneByOneConstPtr (..),
  eventListenerTouchOneByOne_isSwallowTouches,
  EventListenerTouchOneByOnePtr (..),
  eventListenerTouchOneByOne_setSwallowTouches,
  eventListenerTouchOneByOne_create,
  EventListenerTouchOneByOneConst (..),
  castEventListenerTouchOneByOneToConst,
  EventListenerTouchOneByOne (..),
  castEventListenerTouchOneByOneToNonconst,
  eventListenerTouchOneByOne_onTouchBegan_set,
  eventListenerTouchOneByOne_onTouchMoved_set,
  eventListenerTouchOneByOne_onTouchEnded_set,
  eventListenerTouchOneByOne_onTouchCancelled_set,
  EventListenerTouchOneByOneSuper (..),
  EventListenerTouchOneByOneSuperConst (..),
  EventMouseValue (..),
  EventMouseConstPtr (..),
  eventMouse_getScrollX,
  eventMouse_getScrollY,
  eventMouse_getMouseButton,
  eventMouse_getCursorX,
  eventMouse_getCursorY,
  eventMouse_getLocation,
  eventMouse_getPreviousLocation,
  eventMouse_getStartLocation,
  eventMouse_getDelta,
  eventMouse_getLocationInView,
  eventMouse_getPreviousLocationInView,
  eventMouse_getStartLocationInView,
  EventMousePtr (..),
  EventMouseConst (..),
  castEventMouseToConst,
  EventMouse (..),
  castEventMouseToNonconst,
  EventMouseSuper (..),
  EventMouseSuperConst (..),
  eventMouseCallback_newFunPtr,
  eventMouseCallback_new,
  EventTouchValue (..),
  EventTouchConstPtr (..),
  eventTouch_getLocation,
  eventTouch_getPreviousLocation,
  eventTouch_getStartLocation,
  eventTouch_getDelta,
  eventTouch_getLocationInView,
  eventTouch_getPreviousLocationInView,
  eventTouch_getStartLocationInView,
  eventTouch_getID,
  EventTouchPtr (..),
  EventTouchConst (..),
  castEventTouchToConst,
  EventTouch (..),
  castEventTouchToNonconst,
  EventTouchSuper (..),
  EventTouchSuperConst (..),
  eventTouchBeganCallback_newFunPtr,
  eventTouchBeganCallback_new,
  eventTouchCallback_newFunPtr,
  eventTouchCallback_new,
  EventTouchVectorValue (..),
  EventTouchVectorConstPtr (..),
  eventTouchVector_atConst,
  eventTouchVector_backConst,
  eventTouchVector_beginConst,
  eventTouchVector_capacity,
  eventTouchVector_empty,
  eventTouchVector_endConst,
  eventTouchVector_frontConst,
  eventTouchVector_maxSize,
  eventTouchVector_size,
  EventTouchVectorPtr (..),
  eventTouchVector_at,
  eventTouchVector_back,
  eventTouchVector_begin,
  eventTouchVector_clear,
  eventTouchVector_end,
  eventTouchVector_erase,
  eventTouchVector_eraseRange,
  eventTouchVector_front,
  eventTouchVector_insert,
  eventTouchVector_popBack,
  eventTouchVector_pushBack,
  eventTouchVector_reserve,
  eventTouchVector_resize,
  eventTouchVector_resizeWith,
  eventTouchVector_shrinkToFit,
  eventTouchVector_swap,
  eventTouchVector_ASSIGN,
  EventTouchVectorConst (..),
  castEventTouchVectorToConst,
  EventTouchVector (..),
  castEventTouchVectorToNonconst,
  eventTouchVector_new,
  eventTouchVector_newCopy,
  EventTouchVectorSuper (..),
  EventTouchVectorSuperConst (..),
  EventTouchVectorConstIteratorValue (..),
  EventTouchVectorConstIteratorConstPtr (..),
  eventTouchVectorConstIterator_deconst,
  eventTouchVectorConstIterator_getConst,
  eventTouchVectorConstIterator_EQ,
  eventTouchVectorConstIterator_NE,
  eventTouchVectorConstIterator_atConst,
  EventTouchVectorConstIteratorPtr (..),
  eventTouchVectorConstIterator_ASSIGN,
  eventTouchVectorConstIterator_next,
  eventTouchVectorConstIterator_prev,
  eventTouchVectorConstIterator_plus,
  eventTouchVectorConstIterator_add,
  eventTouchVectorConstIterator_minus,
  eventTouchVectorConstIterator_difference,
  eventTouchVectorConstIterator_subtract,
  EventTouchVectorConstIteratorConst (..),
  castEventTouchVectorConstIteratorToConst,
  EventTouchVectorConstIterator (..),
  castEventTouchVectorConstIteratorToNonconst,
  eventTouchVectorConstIterator_newFromNonconst,
  eventTouchVectorConstIterator_new,
  eventTouchVectorConstIterator_newCopy,
  EventTouchVectorConstIteratorSuper (..),
  EventTouchVectorConstIteratorSuperConst (..),
  EventTouchVectorIteratorValue (..),
  EventTouchVectorIteratorConstPtr (..),
  eventTouchVectorIterator_getConst,
  eventTouchVectorIterator_EQ,
  eventTouchVectorIterator_NE,
  eventTouchVectorIterator_atConst,
  EventTouchVectorIteratorPtr (..),
  eventTouchVectorIterator_get,
  eventTouchVectorIterator_put,
  eventTouchVectorIterator_ASSIGN,
  eventTouchVectorIterator_next,
  eventTouchVectorIterator_prev,
  eventTouchVectorIterator_plus,
  eventTouchVectorIterator_add,
  eventTouchVectorIterator_minus,
  eventTouchVectorIterator_difference,
  eventTouchVectorIterator_subtract,
  eventTouchVectorIterator_at,
  EventTouchVectorIteratorConst (..),
  castEventTouchVectorIteratorToConst,
  EventTouchVectorIterator (..),
  castEventTouchVectorIteratorToNonconst,
  eventTouchVectorIterator_new,
  eventTouchVectorIterator_newCopy,
  EventTouchVectorIteratorSuper (..),
  EventTouchVectorIteratorSuperConst (..),
  eventTouchesCallback_newFunPtr,
  eventTouchesCallback_new,
  KeyCode (..),
  Type (..),
  ) where

import Control.Monad ((<=<))
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Std as M1
import qualified Graphics.UI.Cocos2d.Widget as M11
import Linear.V2
import Prelude (($), (++), (-), (.), (/=), (=<<), (==), (>>), (>>=), Float)
import qualified Prelude as HoppyP

foreign import ccall "genpop__Event_getType" event_getType' ::  HoppyF.Ptr EventConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Event_isStopped" event_isStopped' ::  HoppyF.Ptr EventConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Event_stopPropagation" event_stopPropagation' ::  HoppyF.Ptr Event -> HoppyP.IO ()
foreign import ccall "genpop__Event_getCurrentTarget" event_getCurrentTarget' ::  HoppyF.Ptr Event -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "gencast__Event__Ref" castEventToRef :: HoppyF.Ptr EventConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Event" castRefToEvent :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventConst
foreign import ccall "gendel__Event" delete'Event :: HoppyF.Ptr EventConst -> HoppyP.IO ()
foreign import ccall "&gendel__Event" deletePtr'Event :: HoppyF.FunPtr (HoppyF.Ptr EventConst -> HoppyP.IO ())
foreign import ccall "genpop__EventAcceleration_x_get" eventAcceleration_x_get' ::  HoppyF.Ptr EventAccelerationConst -> HoppyP.IO HoppyFC.CDouble
foreign import ccall "genpop__EventAcceleration_x_set" eventAcceleration_x_set' ::  HoppyF.Ptr EventAcceleration -> HoppyFC.CDouble -> HoppyP.IO ()
foreign import ccall "genpop__EventAcceleration_y_get" eventAcceleration_y_get' ::  HoppyF.Ptr EventAccelerationConst -> HoppyP.IO HoppyFC.CDouble
foreign import ccall "genpop__EventAcceleration_y_set" eventAcceleration_y_set' ::  HoppyF.Ptr EventAcceleration -> HoppyFC.CDouble -> HoppyP.IO ()
foreign import ccall "genpop__EventAcceleration_z_get" eventAcceleration_z_get' ::  HoppyF.Ptr EventAccelerationConst -> HoppyP.IO HoppyFC.CDouble
foreign import ccall "genpop__EventAcceleration_z_set" eventAcceleration_z_set' ::  HoppyF.Ptr EventAcceleration -> HoppyFC.CDouble -> HoppyP.IO ()
foreign import ccall "genpop__EventAcceleration_timestamp_get" eventAcceleration_timestamp_get' ::  HoppyF.Ptr EventAccelerationConst -> HoppyP.IO HoppyFC.CDouble
foreign import ccall "genpop__EventAcceleration_timestamp_set" eventAcceleration_timestamp_set' ::  HoppyF.Ptr EventAcceleration -> HoppyFC.CDouble -> HoppyP.IO ()
foreign import ccall "genpop__EventAcceleration_new" eventAcceleration_new' ::  HoppyP.IO (HoppyF.Ptr EventAcceleration)
foreign import ccall "gencast__EventAcceleration__Ref" castEventAccelerationToRef :: HoppyF.Ptr EventAccelerationConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventAcceleration" castRefToEventAcceleration :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventAccelerationConst
foreign import ccall "gendel__EventAcceleration" delete'EventAcceleration :: HoppyF.Ptr EventAccelerationConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventAcceleration" deletePtr'EventAcceleration :: HoppyF.FunPtr (HoppyF.Ptr EventAccelerationConst -> HoppyP.IO ())
foreign import ccall "wrapper" eventAccelerationCallback_new'newFunPtr :: (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventAccelerationCallback" eventAccelerationCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventCustom_setUserData" eventCustom_setUserData' ::  HoppyF.Ptr EventCustom -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__EventCustom_getUserData" eventCustom_getUserData' ::  HoppyF.Ptr EventCustomConst -> HoppyP.IO (HoppyF.Ptr ())
foreign import ccall "genpop__EventCustom_getEventName" eventCustom_getEventName' ::  HoppyF.Ptr EventCustomConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "gencast__EventCustom__Event" castEventCustomToEvent :: HoppyF.Ptr EventCustomConst -> HoppyF.Ptr EventConst
foreign import ccall "gencast__Event__EventCustom" castEventToEventCustom :: HoppyF.Ptr EventConst -> HoppyF.Ptr EventCustomConst
foreign import ccall "gencast__EventCustom__Ref" castEventCustomToRef :: HoppyF.Ptr EventCustomConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventCustom" castRefToEventCustom :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventCustomConst
foreign import ccall "gendel__EventCustom" delete'EventCustom :: HoppyF.Ptr EventCustomConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventCustom" deletePtr'EventCustom :: HoppyF.FunPtr (HoppyF.Ptr EventCustomConst -> HoppyP.IO ())
foreign import ccall "wrapper" eventCustomCallback_new'newFunPtr :: (HoppyF.Ptr EventCustom -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventCustom -> HoppyP.IO ()))
foreign import ccall "genpop__EventCustomCallback" eventCustomCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventCustom -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventCustom -> HoppyP.IO ()))
foreign import ccall "wrapper" eventFocusCallback_new'newFunPtr :: (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()))
foreign import ccall "genpop__EventFocusCallback" eventFocusCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()))
foreign import ccall "wrapper" eventKeyboardCallback_new'newFunPtr :: (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventKeyboardCallback" eventKeyboardCallback_new'newCallback :: HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventListener_checkAvailable" eventListener_checkAvailable' ::  HoppyF.Ptr EventListener -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventListener_isEnabled" eventListener_isEnabled' ::  HoppyF.Ptr EventListenerConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventListener_setEnabled" eventListener_setEnabled' ::  HoppyF.Ptr EventListener -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "gencast__EventListener__Ref" castEventListenerToRef :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListener" castRefToEventListener :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gendel__EventListener" delete'EventListener :: HoppyF.Ptr EventListenerConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListener" deletePtr'EventListener :: HoppyF.FunPtr (HoppyF.Ptr EventListenerConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerAcceleration_create" eventListenerAcceleration_create' ::  HoppyFHR.CCallback (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.Ptr EventListenerAcceleration)
foreign import ccall "gencast__EventListenerAcceleration__EventListener" castEventListenerAccelerationToEventListener :: HoppyF.Ptr EventListenerAccelerationConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerAcceleration" castEventListenerToEventListenerAcceleration :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerAccelerationConst
foreign import ccall "gencast__EventListenerAcceleration__Ref" castEventListenerAccelerationToRef :: HoppyF.Ptr EventListenerAccelerationConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerAcceleration" castRefToEventListenerAcceleration :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerAccelerationConst
foreign import ccall "gendel__EventListenerAcceleration" delete'EventListenerAcceleration :: HoppyF.Ptr EventListenerAccelerationConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerAcceleration" deletePtr'EventListenerAcceleration :: HoppyF.FunPtr (HoppyF.Ptr EventListenerAccelerationConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerCustom_create" eventListenerCustom_create' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyF.Ptr EventCustom -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.Ptr EventListenerCustom)
foreign import ccall "gencast__EventListenerCustom__EventListener" castEventListenerCustomToEventListener :: HoppyF.Ptr EventListenerCustomConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerCustom" castEventListenerToEventListenerCustom :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerCustomConst
foreign import ccall "gencast__EventListenerCustom__Ref" castEventListenerCustomToRef :: HoppyF.Ptr EventListenerCustomConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerCustom" castRefToEventListenerCustom :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerCustomConst
foreign import ccall "gendel__EventListenerCustom" delete'EventListenerCustom :: HoppyF.Ptr EventListenerCustomConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerCustom" deletePtr'EventListenerCustom :: HoppyF.FunPtr (HoppyF.Ptr EventListenerCustomConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerFocus_onFocusChanged_set" eventListenerFocus_onFocusChanged_set' ::  HoppyF.Ptr EventListenerFocus -> HoppyFHR.CCallback (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerFocus_create" eventListenerFocus_create' ::  HoppyP.IO (HoppyF.Ptr EventListenerFocus)
foreign import ccall "gencast__EventListenerFocus__EventListener" castEventListenerFocusToEventListener :: HoppyF.Ptr EventListenerFocusConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerFocus" castEventListenerToEventListenerFocus :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerFocusConst
foreign import ccall "gencast__EventListenerFocus__Ref" castEventListenerFocusToRef :: HoppyF.Ptr EventListenerFocusConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerFocus" castRefToEventListenerFocus :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerFocusConst
foreign import ccall "gendel__EventListenerFocus" delete'EventListenerFocus :: HoppyF.Ptr EventListenerFocusConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerFocus" deletePtr'EventListenerFocus :: HoppyF.FunPtr (HoppyF.Ptr EventListenerFocusConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerKeyboard_onKeyPressed_set" eventListenerKeyboard_onKeyPressed_set' ::  HoppyF.Ptr EventListenerKeyboard -> HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerKeyboard_onKeyReleased_set" eventListenerKeyboard_onKeyReleased_set' ::  HoppyF.Ptr EventListenerKeyboard -> HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerKeyboard_create" eventListenerKeyboard_create' ::  HoppyP.IO (HoppyF.Ptr EventListenerKeyboard)
foreign import ccall "gencast__EventListenerKeyboard__EventListener" castEventListenerKeyboardToEventListener :: HoppyF.Ptr EventListenerKeyboardConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerKeyboard" castEventListenerToEventListenerKeyboard :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerKeyboardConst
foreign import ccall "gencast__EventListenerKeyboard__Ref" castEventListenerKeyboardToRef :: HoppyF.Ptr EventListenerKeyboardConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerKeyboard" castRefToEventListenerKeyboard :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerKeyboardConst
foreign import ccall "gendel__EventListenerKeyboard" delete'EventListenerKeyboard :: HoppyF.Ptr EventListenerKeyboardConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerKeyboard" deletePtr'EventListenerKeyboard :: HoppyF.FunPtr (HoppyF.Ptr EventListenerKeyboardConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerMouse_onMouseDown_set" eventListenerMouse_onMouseDown_set' ::  HoppyF.Ptr EventListenerMouse -> HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerMouse_onMouseUp_set" eventListenerMouse_onMouseUp_set' ::  HoppyF.Ptr EventListenerMouse -> HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerMouse_onMouseMove_set" eventListenerMouse_onMouseMove_set' ::  HoppyF.Ptr EventListenerMouse -> HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerMouse_onMouseScroll_set" eventListenerMouse_onMouseScroll_set' ::  HoppyF.Ptr EventListenerMouse -> HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerMouse_create" eventListenerMouse_create' ::  HoppyP.IO (HoppyF.Ptr EventListenerMouse)
foreign import ccall "gencast__EventListenerMouse__EventListener" castEventListenerMouseToEventListener :: HoppyF.Ptr EventListenerMouseConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerMouse" castEventListenerToEventListenerMouse :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerMouseConst
foreign import ccall "gencast__EventListenerMouse__Ref" castEventListenerMouseToRef :: HoppyF.Ptr EventListenerMouseConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerMouse" castRefToEventListenerMouse :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerMouseConst
foreign import ccall "gendel__EventListenerMouse" delete'EventListenerMouse :: HoppyF.Ptr EventListenerMouseConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerMouse" deletePtr'EventListenerMouse :: HoppyF.FunPtr (HoppyF.Ptr EventListenerMouseConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerTouchAllAtOnce_onTouchesBegan_set" eventListenerTouchAllAtOnce_onTouchesBegan_set' ::  HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchAllAtOnce_onTouchesMoved_set" eventListenerTouchAllAtOnce_onTouchesMoved_set' ::  HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchAllAtOnce_onTouchesEnded_set" eventListenerTouchAllAtOnce_onTouchesEnded_set' ::  HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchAllAtOnce_onTouchesCancelled_set" eventListenerTouchAllAtOnce_onTouchesCancelled_set' ::  HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchAllAtOnce_create" eventListenerTouchAllAtOnce_create' ::  HoppyP.IO (HoppyF.Ptr EventListenerTouchAllAtOnce)
foreign import ccall "gencast__EventListenerTouchAllAtOnce__EventListener" castEventListenerTouchAllAtOnceToEventListener :: HoppyF.Ptr EventListenerTouchAllAtOnceConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerTouchAllAtOnce" castEventListenerToEventListenerTouchAllAtOnce :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerTouchAllAtOnceConst
foreign import ccall "gencast__EventListenerTouchAllAtOnce__Ref" castEventListenerTouchAllAtOnceToRef :: HoppyF.Ptr EventListenerTouchAllAtOnceConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerTouchAllAtOnce" castRefToEventListenerTouchAllAtOnce :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerTouchAllAtOnceConst
foreign import ccall "gendel__EventListenerTouchAllAtOnce" delete'EventListenerTouchAllAtOnce :: HoppyF.Ptr EventListenerTouchAllAtOnceConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerTouchAllAtOnce" deletePtr'EventListenerTouchAllAtOnce :: HoppyF.FunPtr (HoppyF.Ptr EventListenerTouchAllAtOnceConst -> HoppyP.IO ())
foreign import ccall "genpop__EventListenerTouchOneByOne_onTouchBegan_set" eventListenerTouchOneByOne_onTouchBegan_set' ::  HoppyF.Ptr EventListenerTouchOneByOne -> HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchOneByOne_onTouchMoved_set" eventListenerTouchOneByOne_onTouchMoved_set' ::  HoppyF.Ptr EventListenerTouchOneByOne -> HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchOneByOne_onTouchEnded_set" eventListenerTouchOneByOne_onTouchEnded_set' ::  HoppyF.Ptr EventListenerTouchOneByOne -> HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchOneByOne_onTouchCancelled_set" eventListenerTouchOneByOne_onTouchCancelled_set' ::  HoppyF.Ptr EventListenerTouchOneByOne -> HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__EventListenerTouchOneByOne_create" eventListenerTouchOneByOne_create' ::  HoppyP.IO (HoppyF.Ptr EventListenerTouchOneByOne)
foreign import ccall "genpop__EventListenerTouchOneByOne_isSwallowTouches" eventListenerTouchOneByOne_isSwallowTouches' ::  HoppyF.Ptr EventListenerTouchOneByOneConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventListenerTouchOneByOne_setSwallowTouches" eventListenerTouchOneByOne_setSwallowTouches' ::  HoppyF.Ptr EventListenerTouchOneByOne -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "gencast__EventListenerTouchOneByOne__EventListener" castEventListenerTouchOneByOneToEventListener :: HoppyF.Ptr EventListenerTouchOneByOneConst -> HoppyF.Ptr EventListenerConst
foreign import ccall "gencast__EventListener__EventListenerTouchOneByOne" castEventListenerToEventListenerTouchOneByOne :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListenerTouchOneByOneConst
foreign import ccall "gencast__EventListenerTouchOneByOne__Ref" castEventListenerTouchOneByOneToRef :: HoppyF.Ptr EventListenerTouchOneByOneConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventListenerTouchOneByOne" castRefToEventListenerTouchOneByOne :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventListenerTouchOneByOneConst
foreign import ccall "gendel__EventListenerTouchOneByOne" delete'EventListenerTouchOneByOne :: HoppyF.Ptr EventListenerTouchOneByOneConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventListenerTouchOneByOne" deletePtr'EventListenerTouchOneByOne :: HoppyF.FunPtr (HoppyF.Ptr EventListenerTouchOneByOneConst -> HoppyP.IO ())
foreign import ccall "genpop__EventMouse_getScrollX" eventMouse_getScrollX' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__EventMouse_getScrollY" eventMouse_getScrollY' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__EventMouse_getMouseButton" eventMouse_getMouseButton' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__EventMouse_getCursorX" eventMouse_getCursorX' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__EventMouse_getCursorY" eventMouse_getCursorY' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__EventMouse_getLocation" eventMouse_getLocation' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getPreviousLocation" eventMouse_getPreviousLocation' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getStartLocation" eventMouse_getStartLocation' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getDelta" eventMouse_getDelta' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getLocationInView" eventMouse_getLocationInView' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getPreviousLocationInView" eventMouse_getPreviousLocationInView' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventMouse_getStartLocationInView" eventMouse_getStartLocationInView' ::  HoppyF.Ptr EventMouseConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "gencast__EventMouse__Event" castEventMouseToEvent :: HoppyF.Ptr EventMouseConst -> HoppyF.Ptr EventConst
foreign import ccall "gencast__Event__EventMouse" castEventToEventMouse :: HoppyF.Ptr EventConst -> HoppyF.Ptr EventMouseConst
foreign import ccall "gencast__EventMouse__Ref" castEventMouseToRef :: HoppyF.Ptr EventMouseConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventMouse" castRefToEventMouse :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventMouseConst
foreign import ccall "gendel__EventMouse" delete'EventMouse :: HoppyF.Ptr EventMouseConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventMouse" deletePtr'EventMouse :: HoppyF.FunPtr (HoppyF.Ptr EventMouseConst -> HoppyP.IO ())
foreign import ccall "wrapper" eventMouseCallback_new'newFunPtr :: (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventMouse -> HoppyP.IO ()))
foreign import ccall "genpop__EventMouseCallback" eventMouseCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventMouse -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()))
foreign import ccall "genpop__EventTouch_getLocation" eventTouch_getLocation' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getPreviousLocation" eventTouch_getPreviousLocation' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getStartLocation" eventTouch_getStartLocation' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getDelta" eventTouch_getDelta' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getLocationInView" eventTouch_getLocationInView' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getPreviousLocationInView" eventTouch_getPreviousLocationInView' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getStartLocationInView" eventTouch_getStartLocationInView' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__EventTouch_getID" eventTouch_getID' ::  HoppyF.Ptr EventTouchConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "gencast__EventTouch__Ref" castEventTouchToRef :: HoppyF.Ptr EventTouchConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__EventTouch" castRefToEventTouch :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr EventTouchConst
foreign import ccall "gendel__EventTouch" delete'EventTouch :: HoppyF.Ptr EventTouchConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventTouch" deletePtr'EventTouch :: HoppyF.FunPtr (HoppyF.Ptr EventTouchConst -> HoppyP.IO ())
foreign import ccall "wrapper" eventTouchBeganCallback_new'newFunPtr :: (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool))
foreign import ccall "genpop__EventTouchBeganCallback" eventTouchBeganCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool))
foreign import ccall "wrapper" eventTouchCallback_new'newFunPtr :: (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventTouchCallback" eventTouchCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventTouchVector_new" eventTouchVector_new' ::  HoppyP.IO (HoppyF.Ptr EventTouchVector)
foreign import ccall "genpop__EventTouchVector_newCopy" eventTouchVector_newCopy' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVector)
foreign import ccall "genpop__EventTouchVector_at" eventTouchVector_at' ::  HoppyF.Ptr EventTouchVector -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_atConst" eventTouchVector_atConst' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_back" eventTouchVector_back' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_backConst" eventTouchVector_backConst' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_begin" eventTouchVector_begin' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVector_beginConst" eventTouchVector_beginConst' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVector_capacity" eventTouchVector_capacity' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__EventTouchVector_clear" eventTouchVector_clear' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_empty" eventTouchVector_empty' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventTouchVector_end" eventTouchVector_end' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVector_endConst" eventTouchVector_endConst' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVector_erase" eventTouchVector_erase' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_eraseRange" eventTouchVector_eraseRange' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_front" eventTouchVector_front' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_frontConst" eventTouchVector_frontConst' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVector_insert" eventTouchVector_insert' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyF.Ptr EventTouch -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVector_maxSize" eventTouchVector_maxSize' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__EventTouchVector_popBack" eventTouchVector_popBack' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_pushBack" eventTouchVector_pushBack' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouch -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_reserve" eventTouchVector_reserve' ::  HoppyF.Ptr EventTouchVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_resize" eventTouchVector_resize' ::  HoppyF.Ptr EventTouchVector -> HoppyFC.CSize -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_resizeWith" eventTouchVector_resizeWith' ::  HoppyF.Ptr EventTouchVector -> HoppyFC.CSize -> HoppyF.Ptr EventTouch -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_shrinkToFit" eventTouchVector_shrinkToFit' ::  HoppyF.Ptr EventTouchVector -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_size" eventTouchVector_size' ::  HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__EventTouchVector_swap" eventTouchVector_swap' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVector -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVector_ASSIGN" eventTouchVector_ASSIGN' ::  HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVector)
foreign import ccall "gendel__EventTouchVector" delete'EventTouchVector :: HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventTouchVector" deletePtr'EventTouchVector :: HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorConst -> HoppyP.IO ())
foreign import ccall "genpop__EventTouchVectorConstIterator_newFromNonconst" eventTouchVectorConstIterator_newFromNonconst' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_new" eventTouchVectorConstIterator_new' ::  HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_newCopy" eventTouchVectorConstIterator_newCopy' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_deconst" eventTouchVectorConstIterator_deconst' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyF.Ptr EventTouchVector -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_getConst" eventTouchVectorConstIterator_getConst' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVectorConstIterator_EQ" eventTouchVectorConstIterator_EQ' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventTouchVectorConstIterator_NE" eventTouchVectorConstIterator_NE' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventTouchVectorConstIterator_ASSIGN" eventTouchVectorConstIterator_ASSIGN' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_next" eventTouchVectorConstIterator_next' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_prev" eventTouchVectorConstIterator_prev' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_plus" eventTouchVectorConstIterator_plus' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_add" eventTouchVectorConstIterator_add' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_minus" eventTouchVectorConstIterator_minus' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_difference" eventTouchVectorConstIterator_difference' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__EventTouchVectorConstIterator_subtract" eventTouchVectorConstIterator_subtract' ::  HoppyF.Ptr EventTouchVectorConstIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorConstIterator)
foreign import ccall "genpop__EventTouchVectorConstIterator_atConst" eventTouchVectorConstIterator_atConst' ::  HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "gendel__EventTouchVectorConstIterator" delete'EventTouchVectorConstIterator :: HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventTouchVectorConstIterator" deletePtr'EventTouchVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorConstIteratorConst -> HoppyP.IO ())
foreign import ccall "genpop__EventTouchVectorIterator_new" eventTouchVectorIterator_new' ::  HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_newCopy" eventTouchVectorIterator_newCopy' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_get" eventTouchVectorIterator_get' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVectorIterator_getConst" eventTouchVectorIterator_getConst' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVectorIterator_put" eventTouchVectorIterator_put' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyF.Ptr EventTouch -> HoppyP.IO ()
foreign import ccall "genpop__EventTouchVectorIterator_EQ" eventTouchVectorIterator_EQ' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventTouchVectorIterator_NE" eventTouchVectorIterator_NE' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__EventTouchVectorIterator_ASSIGN" eventTouchVectorIterator_ASSIGN' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_next" eventTouchVectorIterator_next' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_prev" eventTouchVectorIterator_prev' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_plus" eventTouchVectorIterator_plus' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_add" eventTouchVectorIterator_add' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_minus" eventTouchVectorIterator_minus' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_difference" eventTouchVectorIterator_difference' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO HoppyFC.CPtrdiff
foreign import ccall "genpop__EventTouchVectorIterator_subtract" eventTouchVectorIterator_subtract' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr EventTouchVectorIterator)
foreign import ccall "genpop__EventTouchVectorIterator_at" eventTouchVectorIterator_at' ::  HoppyF.Ptr EventTouchVectorIterator -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "genpop__EventTouchVectorIterator_atConst" eventTouchVectorIterator_atConst' ::  HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
foreign import ccall "gendel__EventTouchVectorIterator" delete'EventTouchVectorIterator :: HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO ()
foreign import ccall "&gendel__EventTouchVectorIterator" deletePtr'EventTouchVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorIteratorConst -> HoppyP.IO ())
foreign import ccall "wrapper" eventTouchesCallback_new'newFunPtr :: (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()))
foreign import ccall "genpop__EventTouchesCallback" eventTouchesCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()))

class EventValue a where
  withEventPtr :: a -> (EventConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventConstPtr a => EventValue a where
#else
instance EventConstPtr a => EventValue a where
#endif
  withEventPtr = HoppyP.flip ($) . toEventConst

class (M2.RefConstPtr this) => EventConstPtr this where
  toEventConst :: this -> EventConst

event_getType :: (EventValue arg'1) => arg'1 -> HoppyP.IO Type
event_getType arg'1 =
  withEventPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (event_getType' arg'1')

event_isStopped :: (EventValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
event_isStopped arg'1 =
  withEventPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (event_isStopped' arg'1')

class (EventConstPtr this, M2.RefPtr this) => EventPtr this where
  toEvent :: this -> Event

event_stopPropagation :: (EventPtr arg'1) => arg'1 -> HoppyP.IO ()
event_stopPropagation arg'1 =
  HoppyFHR.withCppPtr (toEvent arg'1) $ \arg'1' ->
  (event_stopPropagation' arg'1')

event_getCurrentTarget :: (EventPtr arg'1) => arg'1 -> HoppyP.IO M5.Node
event_getCurrentTarget arg'1 =
  HoppyFHR.withCppPtr (toEvent arg'1) $ \arg'1' ->
  HoppyP.fmap M5.Node
  (event_getCurrentTarget' arg'1')

data EventConst =
    EventConst (HoppyF.Ptr EventConst)
  | EventConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventToConst :: Event -> EventConst
castEventToConst (Event ptr') = EventConst $ HoppyF.castPtr ptr'
castEventToConst (EventGc fptr' ptr') = EventConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventConst where
  nullptr = EventConst HoppyF.nullPtr
  
  withCppPtr (EventConst ptr') f' = f' ptr'
  withCppPtr (EventConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventConst ptr') = ptr'
  toPtr (EventConstGc _ ptr') = ptr'
  
  touchCppPtr (EventConst _) = HoppyP.return ()
  touchCppPtr (EventConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventConst where
  delete (EventConst ptr') = delete'Event ptr'
  delete (EventConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventConst", " object."]
  
  toGc this'@(EventConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Event :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventConstGc {}) = HoppyP.return this'

instance EventConstPtr EventConst where
  toEventConst = HoppyP.id

instance M2.RefConstPtr EventConst where
  toRefConst (EventConst ptr') = M2.RefConst $ castEventToRef ptr'
  toRefConst (EventConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventToRef ptr'

data Event =
    Event (HoppyF.Ptr Event)
  | EventGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Event)
  deriving (HoppyP.Show)

instance HoppyP.Eq Event where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Event where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventToNonconst :: EventConst -> Event
castEventToNonconst (EventConst ptr') = Event $ HoppyF.castPtr ptr'
castEventToNonconst (EventConstGc fptr' ptr') = EventGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Event where
  nullptr = Event HoppyF.nullPtr
  
  withCppPtr (Event ptr') f' = f' ptr'
  withCppPtr (EventGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Event ptr') = ptr'
  toPtr (EventGc _ ptr') = ptr'
  
  touchCppPtr (Event _) = HoppyP.return ()
  touchCppPtr (EventGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Event where
  delete (Event ptr') = delete'Event $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventConst)
  delete (EventGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Event", " object."]
  
  toGc this'@(Event ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Event :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventGc {}) = HoppyP.return this'

instance EventConstPtr Event where
  toEventConst (Event ptr') = EventConst $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'
  toEventConst (EventGc fptr' ptr') = EventConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'

instance EventPtr Event where
  toEvent = HoppyP.id

instance M2.RefConstPtr Event where
  toRefConst (Event ptr') = M2.RefConst $ castEventToRef $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'
  toRefConst (EventGc fptr' ptr') = M2.RefConstGc fptr' $ castEventToRef $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'

instance M2.RefPtr Event where
  toRef (Event ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventToRef $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'
  toRef (EventGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventToRef $ (HoppyF.castPtr :: HoppyF.Ptr Event -> HoppyF.Ptr EventConst) ptr'

class EventSuper a where
  downToEvent :: a -> Event

instance EventSuper M2.Ref where
  downToEvent = castEventToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventConst $ castRefToEvent ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventConstGc fptr' $ castRefToEvent ptr'

class EventSuperConst a where
  downToEventConst :: a -> EventConst

instance EventSuperConst M2.RefConst where
  downToEventConst = cast'
    where
      cast' (M2.RefConst ptr') = EventConst $ castRefToEvent ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventConstGc fptr' $ castRefToEvent ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Event)) Event where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Event)) Event where
  decode = HoppyP.fmap Event . HoppyF.peek

class EventAccelerationValue a where
  withEventAccelerationPtr :: a -> (EventAccelerationConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventAccelerationConstPtr a => EventAccelerationValue a where
#else
instance EventAccelerationConstPtr a => EventAccelerationValue a where
#endif
  withEventAccelerationPtr = HoppyP.flip ($) . toEventAccelerationConst

class (M2.RefConstPtr this) => EventAccelerationConstPtr this where
  toEventAccelerationConst :: this -> EventAccelerationConst

class (EventAccelerationConstPtr this, M2.RefPtr this) => EventAccelerationPtr this where
  toEventAcceleration :: this -> EventAcceleration

data EventAccelerationConst =
    EventAccelerationConst (HoppyF.Ptr EventAccelerationConst)
  | EventAccelerationConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventAccelerationConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventAccelerationConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventAccelerationConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventAccelerationToConst :: EventAcceleration -> EventAccelerationConst
castEventAccelerationToConst (EventAcceleration ptr') = EventAccelerationConst $ HoppyF.castPtr ptr'
castEventAccelerationToConst (EventAccelerationGc fptr' ptr') = EventAccelerationConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventAccelerationConst where
  nullptr = EventAccelerationConst HoppyF.nullPtr
  
  withCppPtr (EventAccelerationConst ptr') f' = f' ptr'
  withCppPtr (EventAccelerationConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventAccelerationConst ptr') = ptr'
  toPtr (EventAccelerationConstGc _ ptr') = ptr'
  
  touchCppPtr (EventAccelerationConst _) = HoppyP.return ()
  touchCppPtr (EventAccelerationConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventAccelerationConst where
  delete (EventAccelerationConst ptr') = delete'EventAcceleration ptr'
  delete (EventAccelerationConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventAccelerationConst", " object."]
  
  toGc this'@(EventAccelerationConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventAccelerationConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventAcceleration :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventAccelerationConstGc {}) = HoppyP.return this'

instance EventAccelerationConstPtr EventAccelerationConst where
  toEventAccelerationConst = HoppyP.id

instance M2.RefConstPtr EventAccelerationConst where
  toRefConst (EventAccelerationConst ptr') = M2.RefConst $ castEventAccelerationToRef ptr'
  toRefConst (EventAccelerationConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventAccelerationToRef ptr'

data EventAcceleration =
    EventAcceleration (HoppyF.Ptr EventAcceleration)
  | EventAccelerationGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventAcceleration)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventAcceleration where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventAcceleration where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventAccelerationToNonconst :: EventAccelerationConst -> EventAcceleration
castEventAccelerationToNonconst (EventAccelerationConst ptr') = EventAcceleration $ HoppyF.castPtr ptr'
castEventAccelerationToNonconst (EventAccelerationConstGc fptr' ptr') = EventAccelerationGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventAcceleration where
  nullptr = EventAcceleration HoppyF.nullPtr
  
  withCppPtr (EventAcceleration ptr') f' = f' ptr'
  withCppPtr (EventAccelerationGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventAcceleration ptr') = ptr'
  toPtr (EventAccelerationGc _ ptr') = ptr'
  
  touchCppPtr (EventAcceleration _) = HoppyP.return ()
  touchCppPtr (EventAccelerationGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventAcceleration where
  delete (EventAcceleration ptr') = delete'EventAcceleration $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventAccelerationConst)
  delete (EventAccelerationGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventAcceleration", " object."]
  
  toGc this'@(EventAcceleration ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventAccelerationGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventAcceleration :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventAccelerationGc {}) = HoppyP.return this'

instance EventAccelerationConstPtr EventAcceleration where
  toEventAccelerationConst (EventAcceleration ptr') = EventAccelerationConst $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'
  toEventAccelerationConst (EventAccelerationGc fptr' ptr') = EventAccelerationConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'

instance EventAccelerationPtr EventAcceleration where
  toEventAcceleration = HoppyP.id

instance M2.RefConstPtr EventAcceleration where
  toRefConst (EventAcceleration ptr') = M2.RefConst $ castEventAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'
  toRefConst (EventAccelerationGc fptr' ptr') = M2.RefConstGc fptr' $ castEventAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'

instance M2.RefPtr EventAcceleration where
  toRef (EventAcceleration ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'
  toRef (EventAccelerationGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventAcceleration -> HoppyF.Ptr EventAccelerationConst) ptr'

eventAcceleration_x_get :: (EventAccelerationValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Double
eventAcceleration_x_get arg'1 =
  withEventAccelerationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventAcceleration_x_get' arg'1')

eventAcceleration_x_set :: (EventAccelerationPtr arg'1) => arg'1 -> HoppyP.Double -> HoppyP.IO ()
eventAcceleration_x_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventAcceleration arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (eventAcceleration_x_set' arg'1' arg'2')

eventAcceleration_y_get :: (EventAccelerationValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Double
eventAcceleration_y_get arg'1 =
  withEventAccelerationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventAcceleration_y_get' arg'1')

eventAcceleration_y_set :: (EventAccelerationPtr arg'1) => arg'1 -> HoppyP.Double -> HoppyP.IO ()
eventAcceleration_y_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventAcceleration arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (eventAcceleration_y_set' arg'1' arg'2')

eventAcceleration_z_get :: (EventAccelerationValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Double
eventAcceleration_z_get arg'1 =
  withEventAccelerationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventAcceleration_z_get' arg'1')

eventAcceleration_z_set :: (EventAccelerationPtr arg'1) => arg'1 -> HoppyP.Double -> HoppyP.IO ()
eventAcceleration_z_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventAcceleration arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (eventAcceleration_z_set' arg'1' arg'2')

eventAcceleration_timestamp_get :: (EventAccelerationValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Double
eventAcceleration_timestamp_get arg'1 =
  withEventAccelerationPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventAcceleration_timestamp_get' arg'1')

eventAcceleration_timestamp_set :: (EventAccelerationPtr arg'1) => arg'1 -> HoppyP.Double -> HoppyP.IO ()
eventAcceleration_timestamp_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventAcceleration arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (eventAcceleration_timestamp_set' arg'1' arg'2')

eventAcceleration_new ::  HoppyP.IO EventAcceleration
eventAcceleration_new =
  HoppyP.fmap EventAcceleration
  (eventAcceleration_new')

class EventAccelerationSuper a where
  downToEventAcceleration :: a -> EventAcceleration

instance EventAccelerationSuper M2.Ref where
  downToEventAcceleration = castEventAccelerationToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventAccelerationConst $ castRefToEventAcceleration ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventAccelerationConstGc fptr' $ castRefToEventAcceleration ptr'

class EventAccelerationSuperConst a where
  downToEventAccelerationConst :: a -> EventAccelerationConst

instance EventAccelerationSuperConst M2.RefConst where
  downToEventAccelerationConst = cast'
    where
      cast' (M2.RefConst ptr') = EventAccelerationConst $ castRefToEventAcceleration ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventAccelerationConstGc fptr' $ castRefToEventAcceleration ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventAcceleration)) EventAcceleration where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventAcceleration)) EventAcceleration where
  decode = HoppyP.fmap EventAcceleration . HoppyF.peek

eventAccelerationCallback_newFunPtr :: (EventAcceleration -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventAccelerationCallback_newFunPtr f'hs = eventAccelerationCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = EventAcceleration arg'1 in
  let arg'2' = Event arg'2 in
  (f'hs arg'1' arg'2')

eventAccelerationCallback_new :: (EventAcceleration -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventAcceleration -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventAccelerationCallback_new f'hs = do
  f'p <- eventAccelerationCallback_newFunPtr f'hs
  eventAccelerationCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class EventCustomValue a where
  withEventCustomPtr :: a -> (EventCustomConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventCustomConstPtr a => EventCustomValue a where
#else
instance EventCustomConstPtr a => EventCustomValue a where
#endif
  withEventCustomPtr = HoppyP.flip ($) . toEventCustomConst

class (EventConstPtr this) => EventCustomConstPtr this where
  toEventCustomConst :: this -> EventCustomConst

eventCustom_getUserData :: (EventCustomValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr ())
eventCustom_getUserData arg'1 =
  withEventCustomPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventCustom_getUserData' arg'1')

eventCustom_getEventName :: (EventCustomValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
eventCustom_getEventName arg'1 =
  withEventCustomPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (eventCustom_getEventName' arg'1')

class (EventCustomConstPtr this, EventPtr this) => EventCustomPtr this where
  toEventCustom :: this -> EventCustom

eventCustom_setUserData :: (EventCustomPtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO ()
eventCustom_setUserData arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventCustom arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventCustom_setUserData' arg'1' arg'2')

data EventCustomConst =
    EventCustomConst (HoppyF.Ptr EventCustomConst)
  | EventCustomConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventCustomConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventCustomConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventCustomConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventCustomToConst :: EventCustom -> EventCustomConst
castEventCustomToConst (EventCustom ptr') = EventCustomConst $ HoppyF.castPtr ptr'
castEventCustomToConst (EventCustomGc fptr' ptr') = EventCustomConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventCustomConst where
  nullptr = EventCustomConst HoppyF.nullPtr
  
  withCppPtr (EventCustomConst ptr') f' = f' ptr'
  withCppPtr (EventCustomConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventCustomConst ptr') = ptr'
  toPtr (EventCustomConstGc _ ptr') = ptr'
  
  touchCppPtr (EventCustomConst _) = HoppyP.return ()
  touchCppPtr (EventCustomConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventCustomConst where
  delete (EventCustomConst ptr') = delete'EventCustom ptr'
  delete (EventCustomConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventCustomConst", " object."]
  
  toGc this'@(EventCustomConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventCustomConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventCustom :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventCustomConstGc {}) = HoppyP.return this'

instance EventCustomConstPtr EventCustomConst where
  toEventCustomConst = HoppyP.id

instance EventConstPtr EventCustomConst where
  toEventConst (EventCustomConst ptr') = EventConst $ castEventCustomToEvent ptr'
  toEventConst (EventCustomConstGc fptr' ptr') = EventConstGc fptr' $ castEventCustomToEvent ptr'

instance M2.RefConstPtr EventCustomConst where
  toRefConst (EventCustomConst ptr') = M2.RefConst $ castEventCustomToRef ptr'
  toRefConst (EventCustomConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventCustomToRef ptr'

data EventCustom =
    EventCustom (HoppyF.Ptr EventCustom)
  | EventCustomGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventCustom)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventCustom where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventCustom where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventCustomToNonconst :: EventCustomConst -> EventCustom
castEventCustomToNonconst (EventCustomConst ptr') = EventCustom $ HoppyF.castPtr ptr'
castEventCustomToNonconst (EventCustomConstGc fptr' ptr') = EventCustomGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventCustom where
  nullptr = EventCustom HoppyF.nullPtr
  
  withCppPtr (EventCustom ptr') f' = f' ptr'
  withCppPtr (EventCustomGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventCustom ptr') = ptr'
  toPtr (EventCustomGc _ ptr') = ptr'
  
  touchCppPtr (EventCustom _) = HoppyP.return ()
  touchCppPtr (EventCustomGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventCustom where
  delete (EventCustom ptr') = delete'EventCustom $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventCustomConst)
  delete (EventCustomGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventCustom", " object."]
  
  toGc this'@(EventCustom ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventCustomGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventCustom :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventCustomGc {}) = HoppyP.return this'

instance EventCustomConstPtr EventCustom where
  toEventCustomConst (EventCustom ptr') = EventCustomConst $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'
  toEventCustomConst (EventCustomGc fptr' ptr') = EventCustomConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'

instance EventCustomPtr EventCustom where
  toEventCustom = HoppyP.id

instance EventConstPtr EventCustom where
  toEventConst (EventCustom ptr') = EventConst $ castEventCustomToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'
  toEventConst (EventCustomGc fptr' ptr') = EventConstGc fptr' $ castEventCustomToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'

instance EventPtr EventCustom where
  toEvent (EventCustom ptr') = Event $ (HoppyF.castPtr :: HoppyF.Ptr EventConst -> HoppyF.Ptr Event) $ castEventCustomToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'
  toEvent (EventCustomGc fptr' ptr') = EventGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventConst -> HoppyF.Ptr Event) $ castEventCustomToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'

instance M2.RefConstPtr EventCustom where
  toRefConst (EventCustom ptr') = M2.RefConst $ castEventCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'
  toRefConst (EventCustomGc fptr' ptr') = M2.RefConstGc fptr' $ castEventCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'

instance M2.RefPtr EventCustom where
  toRef (EventCustom ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'
  toRef (EventCustomGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventCustom -> HoppyF.Ptr EventCustomConst) ptr'

class EventCustomSuper a where
  downToEventCustom :: a -> EventCustom

instance EventCustomSuper Event where
  downToEventCustom = castEventCustomToNonconst . cast' . castEventToConst
    where
      cast' (EventConst ptr') = EventCustomConst $ castEventToEventCustom ptr'
      cast' (EventConstGc fptr' ptr') = EventCustomConstGc fptr' $ castEventToEventCustom ptr'
instance EventCustomSuper M2.Ref where
  downToEventCustom = castEventCustomToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventCustomConst $ castRefToEventCustom ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventCustomConstGc fptr' $ castRefToEventCustom ptr'

class EventCustomSuperConst a where
  downToEventCustomConst :: a -> EventCustomConst

instance EventCustomSuperConst EventConst where
  downToEventCustomConst = cast'
    where
      cast' (EventConst ptr') = EventCustomConst $ castEventToEventCustom ptr'
      cast' (EventConstGc fptr' ptr') = EventCustomConstGc fptr' $ castEventToEventCustom ptr'
instance EventCustomSuperConst M2.RefConst where
  downToEventCustomConst = cast'
    where
      cast' (M2.RefConst ptr') = EventCustomConst $ castRefToEventCustom ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventCustomConstGc fptr' $ castRefToEventCustom ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventCustom)) EventCustom where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventCustom)) EventCustom where
  decode = HoppyP.fmap EventCustom . HoppyF.peek

eventCustomCallback_newFunPtr :: (EventCustom -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventCustom -> HoppyP.IO ()))
eventCustomCallback_newFunPtr f'hs = eventCustomCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = EventCustom arg'1 in
  (f'hs arg'1')

eventCustomCallback_new :: (EventCustom -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventCustom -> HoppyP.IO ()))
eventCustomCallback_new f'hs = do
  f'p <- eventCustomCallback_newFunPtr f'hs
  eventCustomCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

eventFocusCallback_newFunPtr :: (M11.Widget -> M11.Widget -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()))
eventFocusCallback_newFunPtr f'hs = eventFocusCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = M11.Widget arg'1 in
  let arg'2' = M11.Widget arg'2 in
  (f'hs arg'1' arg'2')

eventFocusCallback_new :: (M11.Widget -> M11.Widget -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M11.Widget -> HoppyF.Ptr M11.Widget -> HoppyP.IO ()))
eventFocusCallback_new f'hs = do
  f'p <- eventFocusCallback_newFunPtr f'hs
  eventFocusCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

eventKeyboardCallback_newFunPtr :: (KeyCode -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventKeyboardCallback_newFunPtr f'hs = eventKeyboardCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = HoppyP.toEnum $ HoppyFHR.coerceIntegral arg'1 in
  let arg'2' = Event arg'2 in
  (f'hs arg'1' arg'2')

eventKeyboardCallback_new :: (KeyCode -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CInt -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventKeyboardCallback_new f'hs = do
  f'p <- eventKeyboardCallback_newFunPtr f'hs
  eventKeyboardCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class EventListenerValue a where
  withEventListenerPtr :: a -> (EventListenerConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerConstPtr a => EventListenerValue a where
#else
instance EventListenerConstPtr a => EventListenerValue a where
#endif
  withEventListenerPtr = HoppyP.flip ($) . toEventListenerConst

class (M2.RefConstPtr this) => EventListenerConstPtr this where
  toEventListenerConst :: this -> EventListenerConst

eventListener_isEnabled :: (EventListenerValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
eventListener_isEnabled arg'1 =
  withEventListenerPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (eventListener_isEnabled' arg'1')

class (EventListenerConstPtr this, M2.RefPtr this) => EventListenerPtr this where
  toEventListener :: this -> EventListener

eventListener_checkAvailable :: (EventListenerPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
eventListener_checkAvailable arg'1 =
  HoppyFHR.withCppPtr (toEventListener arg'1) $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (eventListener_checkAvailable' arg'1')

eventListener_setEnabled :: (EventListenerPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
eventListener_setEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListener arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (eventListener_setEnabled' arg'1' arg'2')

data EventListenerConst =
    EventListenerConst (HoppyF.Ptr EventListenerConst)
  | EventListenerConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerToConst :: EventListener -> EventListenerConst
castEventListenerToConst (EventListener ptr') = EventListenerConst $ HoppyF.castPtr ptr'
castEventListenerToConst (EventListenerGc fptr' ptr') = EventListenerConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerConst where
  nullptr = EventListenerConst HoppyF.nullPtr
  
  withCppPtr (EventListenerConst ptr') f' = f' ptr'
  withCppPtr (EventListenerConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerConst ptr') = ptr'
  toPtr (EventListenerConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerConst _) = HoppyP.return ()
  touchCppPtr (EventListenerConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerConst where
  delete (EventListenerConst ptr') = delete'EventListener ptr'
  delete (EventListenerConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerConst", " object."]
  
  toGc this'@(EventListenerConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListener :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerConstGc {}) = HoppyP.return this'

instance EventListenerConstPtr EventListenerConst where
  toEventListenerConst = HoppyP.id

instance M2.RefConstPtr EventListenerConst where
  toRefConst (EventListenerConst ptr') = M2.RefConst $ castEventListenerToRef ptr'
  toRefConst (EventListenerConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerToRef ptr'

data EventListener =
    EventListener (HoppyF.Ptr EventListener)
  | EventListenerGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListener)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListener where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListener where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerToNonconst :: EventListenerConst -> EventListener
castEventListenerToNonconst (EventListenerConst ptr') = EventListener $ HoppyF.castPtr ptr'
castEventListenerToNonconst (EventListenerConstGc fptr' ptr') = EventListenerGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListener where
  nullptr = EventListener HoppyF.nullPtr
  
  withCppPtr (EventListener ptr') f' = f' ptr'
  withCppPtr (EventListenerGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListener ptr') = ptr'
  toPtr (EventListenerGc _ ptr') = ptr'
  
  touchCppPtr (EventListener _) = HoppyP.return ()
  touchCppPtr (EventListenerGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListener where
  delete (EventListener ptr') = delete'EventListener $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerConst)
  delete (EventListenerGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListener", " object."]
  
  toGc this'@(EventListener ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListener :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerGc {}) = HoppyP.return this'

instance EventListenerConstPtr EventListener where
  toEventListenerConst (EventListener ptr') = EventListenerConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'
  toEventListenerConst (EventListenerGc fptr' ptr') = EventListenerConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'

instance EventListenerPtr EventListener where
  toEventListener = HoppyP.id

instance M2.RefConstPtr EventListener where
  toRefConst (EventListener ptr') = M2.RefConst $ castEventListenerToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'
  toRefConst (EventListenerGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'

instance M2.RefPtr EventListener where
  toRef (EventListener ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'
  toRef (EventListenerGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListener -> HoppyF.Ptr EventListenerConst) ptr'

class EventListenerSuper a where
  downToEventListener :: a -> EventListener

instance EventListenerSuper M2.Ref where
  downToEventListener = castEventListenerToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerConst $ castRefToEventListener ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerConstGc fptr' $ castRefToEventListener ptr'

class EventListenerSuperConst a where
  downToEventListenerConst :: a -> EventListenerConst

instance EventListenerSuperConst M2.RefConst where
  downToEventListenerConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerConst $ castRefToEventListener ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerConstGc fptr' $ castRefToEventListener ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListener)) EventListener where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListener)) EventListener where
  decode = HoppyP.fmap EventListener . HoppyF.peek

class EventListenerAccelerationValue a where
  withEventListenerAccelerationPtr :: a -> (EventListenerAccelerationConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerAccelerationConstPtr a => EventListenerAccelerationValue a where
#else
instance EventListenerAccelerationConstPtr a => EventListenerAccelerationValue a where
#endif
  withEventListenerAccelerationPtr = HoppyP.flip ($) . toEventListenerAccelerationConst

class (EventListenerConstPtr this) => EventListenerAccelerationConstPtr this where
  toEventListenerAccelerationConst :: this -> EventListenerAccelerationConst

class (EventListenerAccelerationConstPtr this, EventListenerPtr this) => EventListenerAccelerationPtr this where
  toEventListenerAcceleration :: this -> EventListenerAcceleration

eventListenerAcceleration_create ::  (EventAcceleration -> Event -> HoppyP.IO ()) -> HoppyP.IO EventListenerAcceleration
eventListenerAcceleration_create arg'1 =
  eventAccelerationCallback_new arg'1 >>= \arg'1' ->
  HoppyP.fmap EventListenerAcceleration
  (eventListenerAcceleration_create' arg'1')

data EventListenerAccelerationConst =
    EventListenerAccelerationConst (HoppyF.Ptr EventListenerAccelerationConst)
  | EventListenerAccelerationConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerAccelerationConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerAccelerationConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerAccelerationConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerAccelerationToConst :: EventListenerAcceleration -> EventListenerAccelerationConst
castEventListenerAccelerationToConst (EventListenerAcceleration ptr') = EventListenerAccelerationConst $ HoppyF.castPtr ptr'
castEventListenerAccelerationToConst (EventListenerAccelerationGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerAccelerationConst where
  nullptr = EventListenerAccelerationConst HoppyF.nullPtr
  
  withCppPtr (EventListenerAccelerationConst ptr') f' = f' ptr'
  withCppPtr (EventListenerAccelerationConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerAccelerationConst ptr') = ptr'
  toPtr (EventListenerAccelerationConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerAccelerationConst _) = HoppyP.return ()
  touchCppPtr (EventListenerAccelerationConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerAccelerationConst where
  delete (EventListenerAccelerationConst ptr') = delete'EventListenerAcceleration ptr'
  delete (EventListenerAccelerationConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerAccelerationConst", " object."]
  
  toGc this'@(EventListenerAccelerationConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerAccelerationConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerAcceleration :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerAccelerationConstGc {}) = HoppyP.return this'

instance EventListenerAccelerationConstPtr EventListenerAccelerationConst where
  toEventListenerAccelerationConst = HoppyP.id

instance EventListenerConstPtr EventListenerAccelerationConst where
  toEventListenerConst (EventListenerAccelerationConst ptr') = EventListenerConst $ castEventListenerAccelerationToEventListener ptr'
  toEventListenerConst (EventListenerAccelerationConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerAccelerationToEventListener ptr'

instance M2.RefConstPtr EventListenerAccelerationConst where
  toRefConst (EventListenerAccelerationConst ptr') = M2.RefConst $ castEventListenerAccelerationToRef ptr'
  toRefConst (EventListenerAccelerationConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerAccelerationToRef ptr'

data EventListenerAcceleration =
    EventListenerAcceleration (HoppyF.Ptr EventListenerAcceleration)
  | EventListenerAccelerationGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerAcceleration)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerAcceleration where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerAcceleration where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerAccelerationToNonconst :: EventListenerAccelerationConst -> EventListenerAcceleration
castEventListenerAccelerationToNonconst (EventListenerAccelerationConst ptr') = EventListenerAcceleration $ HoppyF.castPtr ptr'
castEventListenerAccelerationToNonconst (EventListenerAccelerationConstGc fptr' ptr') = EventListenerAccelerationGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerAcceleration where
  nullptr = EventListenerAcceleration HoppyF.nullPtr
  
  withCppPtr (EventListenerAcceleration ptr') f' = f' ptr'
  withCppPtr (EventListenerAccelerationGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerAcceleration ptr') = ptr'
  toPtr (EventListenerAccelerationGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerAcceleration _) = HoppyP.return ()
  touchCppPtr (EventListenerAccelerationGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerAcceleration where
  delete (EventListenerAcceleration ptr') = delete'EventListenerAcceleration $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerAccelerationConst)
  delete (EventListenerAccelerationGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerAcceleration", " object."]
  
  toGc this'@(EventListenerAcceleration ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerAccelerationGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerAcceleration :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerAccelerationGc {}) = HoppyP.return this'

instance EventListenerAccelerationConstPtr EventListenerAcceleration where
  toEventListenerAccelerationConst (EventListenerAcceleration ptr') = EventListenerAccelerationConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'
  toEventListenerAccelerationConst (EventListenerAccelerationGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'

instance EventListenerAccelerationPtr EventListenerAcceleration where
  toEventListenerAcceleration = HoppyP.id

instance EventListenerConstPtr EventListenerAcceleration where
  toEventListenerConst (EventListenerAcceleration ptr') = EventListenerConst $ castEventListenerAccelerationToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'
  toEventListenerConst (EventListenerAccelerationGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerAccelerationToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'

instance EventListenerPtr EventListenerAcceleration where
  toEventListener (EventListenerAcceleration ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerAccelerationToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'
  toEventListener (EventListenerAccelerationGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerAccelerationToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'

instance M2.RefConstPtr EventListenerAcceleration where
  toRefConst (EventListenerAcceleration ptr') = M2.RefConst $ castEventListenerAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'
  toRefConst (EventListenerAccelerationGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'

instance M2.RefPtr EventListenerAcceleration where
  toRef (EventListenerAcceleration ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'
  toRef (EventListenerAccelerationGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerAccelerationToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerAcceleration -> HoppyF.Ptr EventListenerAccelerationConst) ptr'

class EventListenerAccelerationSuper a where
  downToEventListenerAcceleration :: a -> EventListenerAcceleration

instance EventListenerAccelerationSuper EventListener where
  downToEventListenerAcceleration = castEventListenerAccelerationToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerAccelerationConst $ castEventListenerToEventListenerAcceleration ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ castEventListenerToEventListenerAcceleration ptr'
instance EventListenerAccelerationSuper M2.Ref where
  downToEventListenerAcceleration = castEventListenerAccelerationToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerAccelerationConst $ castRefToEventListenerAcceleration ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ castRefToEventListenerAcceleration ptr'

class EventListenerAccelerationSuperConst a where
  downToEventListenerAccelerationConst :: a -> EventListenerAccelerationConst

instance EventListenerAccelerationSuperConst EventListenerConst where
  downToEventListenerAccelerationConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerAccelerationConst $ castEventListenerToEventListenerAcceleration ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ castEventListenerToEventListenerAcceleration ptr'
instance EventListenerAccelerationSuperConst M2.RefConst where
  downToEventListenerAccelerationConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerAccelerationConst $ castRefToEventListenerAcceleration ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerAccelerationConstGc fptr' $ castRefToEventListenerAcceleration ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerAcceleration)) EventListenerAcceleration where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerAcceleration)) EventListenerAcceleration where
  decode = HoppyP.fmap EventListenerAcceleration . HoppyF.peek

class EventListenerCustomValue a where
  withEventListenerCustomPtr :: a -> (EventListenerCustomConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerCustomConstPtr a => EventListenerCustomValue a where
#else
instance EventListenerCustomConstPtr a => EventListenerCustomValue a where
#endif
  withEventListenerCustomPtr = HoppyP.flip ($) . toEventListenerCustomConst

class (EventListenerConstPtr this) => EventListenerCustomConstPtr this where
  toEventListenerCustomConst :: this -> EventListenerCustomConst

class (EventListenerCustomConstPtr this, EventListenerPtr this) => EventListenerCustomPtr this where
  toEventListenerCustom :: this -> EventListenerCustom

eventListenerCustom_create :: (M1.StdStringValue arg'1) => arg'1 -> (EventCustom -> HoppyP.IO ()) -> HoppyP.IO EventListenerCustom
eventListenerCustom_create arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  eventCustomCallback_new arg'2 >>= \arg'2' ->
  HoppyP.fmap EventListenerCustom
  (eventListenerCustom_create' arg'1' arg'2')

data EventListenerCustomConst =
    EventListenerCustomConst (HoppyF.Ptr EventListenerCustomConst)
  | EventListenerCustomConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerCustomConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerCustomConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerCustomConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerCustomToConst :: EventListenerCustom -> EventListenerCustomConst
castEventListenerCustomToConst (EventListenerCustom ptr') = EventListenerCustomConst $ HoppyF.castPtr ptr'
castEventListenerCustomToConst (EventListenerCustomGc fptr' ptr') = EventListenerCustomConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerCustomConst where
  nullptr = EventListenerCustomConst HoppyF.nullPtr
  
  withCppPtr (EventListenerCustomConst ptr') f' = f' ptr'
  withCppPtr (EventListenerCustomConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerCustomConst ptr') = ptr'
  toPtr (EventListenerCustomConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerCustomConst _) = HoppyP.return ()
  touchCppPtr (EventListenerCustomConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerCustomConst where
  delete (EventListenerCustomConst ptr') = delete'EventListenerCustom ptr'
  delete (EventListenerCustomConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerCustomConst", " object."]
  
  toGc this'@(EventListenerCustomConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerCustomConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerCustom :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerCustomConstGc {}) = HoppyP.return this'

instance EventListenerCustomConstPtr EventListenerCustomConst where
  toEventListenerCustomConst = HoppyP.id

instance EventListenerConstPtr EventListenerCustomConst where
  toEventListenerConst (EventListenerCustomConst ptr') = EventListenerConst $ castEventListenerCustomToEventListener ptr'
  toEventListenerConst (EventListenerCustomConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerCustomToEventListener ptr'

instance M2.RefConstPtr EventListenerCustomConst where
  toRefConst (EventListenerCustomConst ptr') = M2.RefConst $ castEventListenerCustomToRef ptr'
  toRefConst (EventListenerCustomConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerCustomToRef ptr'

data EventListenerCustom =
    EventListenerCustom (HoppyF.Ptr EventListenerCustom)
  | EventListenerCustomGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerCustom)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerCustom where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerCustom where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerCustomToNonconst :: EventListenerCustomConst -> EventListenerCustom
castEventListenerCustomToNonconst (EventListenerCustomConst ptr') = EventListenerCustom $ HoppyF.castPtr ptr'
castEventListenerCustomToNonconst (EventListenerCustomConstGc fptr' ptr') = EventListenerCustomGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerCustom where
  nullptr = EventListenerCustom HoppyF.nullPtr
  
  withCppPtr (EventListenerCustom ptr') f' = f' ptr'
  withCppPtr (EventListenerCustomGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerCustom ptr') = ptr'
  toPtr (EventListenerCustomGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerCustom _) = HoppyP.return ()
  touchCppPtr (EventListenerCustomGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerCustom where
  delete (EventListenerCustom ptr') = delete'EventListenerCustom $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerCustomConst)
  delete (EventListenerCustomGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerCustom", " object."]
  
  toGc this'@(EventListenerCustom ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerCustomGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerCustom :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerCustomGc {}) = HoppyP.return this'

instance EventListenerCustomConstPtr EventListenerCustom where
  toEventListenerCustomConst (EventListenerCustom ptr') = EventListenerCustomConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'
  toEventListenerCustomConst (EventListenerCustomGc fptr' ptr') = EventListenerCustomConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'

instance EventListenerCustomPtr EventListenerCustom where
  toEventListenerCustom = HoppyP.id

instance EventListenerConstPtr EventListenerCustom where
  toEventListenerConst (EventListenerCustom ptr') = EventListenerConst $ castEventListenerCustomToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'
  toEventListenerConst (EventListenerCustomGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerCustomToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'

instance EventListenerPtr EventListenerCustom where
  toEventListener (EventListenerCustom ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerCustomToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'
  toEventListener (EventListenerCustomGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerCustomToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'

instance M2.RefConstPtr EventListenerCustom where
  toRefConst (EventListenerCustom ptr') = M2.RefConst $ castEventListenerCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'
  toRefConst (EventListenerCustomGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'

instance M2.RefPtr EventListenerCustom where
  toRef (EventListenerCustom ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'
  toRef (EventListenerCustomGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerCustomToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerCustom -> HoppyF.Ptr EventListenerCustomConst) ptr'

class EventListenerCustomSuper a where
  downToEventListenerCustom :: a -> EventListenerCustom

instance EventListenerCustomSuper EventListener where
  downToEventListenerCustom = castEventListenerCustomToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerCustomConst $ castEventListenerToEventListenerCustom ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerCustomConstGc fptr' $ castEventListenerToEventListenerCustom ptr'
instance EventListenerCustomSuper M2.Ref where
  downToEventListenerCustom = castEventListenerCustomToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerCustomConst $ castRefToEventListenerCustom ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerCustomConstGc fptr' $ castRefToEventListenerCustom ptr'

class EventListenerCustomSuperConst a where
  downToEventListenerCustomConst :: a -> EventListenerCustomConst

instance EventListenerCustomSuperConst EventListenerConst where
  downToEventListenerCustomConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerCustomConst $ castEventListenerToEventListenerCustom ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerCustomConstGc fptr' $ castEventListenerToEventListenerCustom ptr'
instance EventListenerCustomSuperConst M2.RefConst where
  downToEventListenerCustomConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerCustomConst $ castRefToEventListenerCustom ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerCustomConstGc fptr' $ castRefToEventListenerCustom ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerCustom)) EventListenerCustom where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerCustom)) EventListenerCustom where
  decode = HoppyP.fmap EventListenerCustom . HoppyF.peek

class EventListenerFocusValue a where
  withEventListenerFocusPtr :: a -> (EventListenerFocusConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerFocusConstPtr a => EventListenerFocusValue a where
#else
instance EventListenerFocusConstPtr a => EventListenerFocusValue a where
#endif
  withEventListenerFocusPtr = HoppyP.flip ($) . toEventListenerFocusConst

class (EventListenerConstPtr this) => EventListenerFocusConstPtr this where
  toEventListenerFocusConst :: this -> EventListenerFocusConst

class (EventListenerFocusConstPtr this, EventListenerPtr this) => EventListenerFocusPtr this where
  toEventListenerFocus :: this -> EventListenerFocus

eventListenerFocus_create ::  HoppyP.IO EventListenerFocus
eventListenerFocus_create =
  HoppyP.fmap EventListenerFocus
  (eventListenerFocus_create')

data EventListenerFocusConst =
    EventListenerFocusConst (HoppyF.Ptr EventListenerFocusConst)
  | EventListenerFocusConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerFocusConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerFocusConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerFocusConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerFocusToConst :: EventListenerFocus -> EventListenerFocusConst
castEventListenerFocusToConst (EventListenerFocus ptr') = EventListenerFocusConst $ HoppyF.castPtr ptr'
castEventListenerFocusToConst (EventListenerFocusGc fptr' ptr') = EventListenerFocusConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerFocusConst where
  nullptr = EventListenerFocusConst HoppyF.nullPtr
  
  withCppPtr (EventListenerFocusConst ptr') f' = f' ptr'
  withCppPtr (EventListenerFocusConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerFocusConst ptr') = ptr'
  toPtr (EventListenerFocusConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerFocusConst _) = HoppyP.return ()
  touchCppPtr (EventListenerFocusConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerFocusConst where
  delete (EventListenerFocusConst ptr') = delete'EventListenerFocus ptr'
  delete (EventListenerFocusConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerFocusConst", " object."]
  
  toGc this'@(EventListenerFocusConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerFocusConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerFocus :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerFocusConstGc {}) = HoppyP.return this'

instance EventListenerFocusConstPtr EventListenerFocusConst where
  toEventListenerFocusConst = HoppyP.id

instance EventListenerConstPtr EventListenerFocusConst where
  toEventListenerConst (EventListenerFocusConst ptr') = EventListenerConst $ castEventListenerFocusToEventListener ptr'
  toEventListenerConst (EventListenerFocusConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerFocusToEventListener ptr'

instance M2.RefConstPtr EventListenerFocusConst where
  toRefConst (EventListenerFocusConst ptr') = M2.RefConst $ castEventListenerFocusToRef ptr'
  toRefConst (EventListenerFocusConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerFocusToRef ptr'

data EventListenerFocus =
    EventListenerFocus (HoppyF.Ptr EventListenerFocus)
  | EventListenerFocusGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerFocus)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerFocus where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerFocus where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerFocusToNonconst :: EventListenerFocusConst -> EventListenerFocus
castEventListenerFocusToNonconst (EventListenerFocusConst ptr') = EventListenerFocus $ HoppyF.castPtr ptr'
castEventListenerFocusToNonconst (EventListenerFocusConstGc fptr' ptr') = EventListenerFocusGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerFocus where
  nullptr = EventListenerFocus HoppyF.nullPtr
  
  withCppPtr (EventListenerFocus ptr') f' = f' ptr'
  withCppPtr (EventListenerFocusGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerFocus ptr') = ptr'
  toPtr (EventListenerFocusGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerFocus _) = HoppyP.return ()
  touchCppPtr (EventListenerFocusGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerFocus where
  delete (EventListenerFocus ptr') = delete'EventListenerFocus $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerFocusConst)
  delete (EventListenerFocusGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerFocus", " object."]
  
  toGc this'@(EventListenerFocus ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerFocusGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerFocus :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerFocusGc {}) = HoppyP.return this'

instance EventListenerFocusConstPtr EventListenerFocus where
  toEventListenerFocusConst (EventListenerFocus ptr') = EventListenerFocusConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'
  toEventListenerFocusConst (EventListenerFocusGc fptr' ptr') = EventListenerFocusConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'

instance EventListenerFocusPtr EventListenerFocus where
  toEventListenerFocus = HoppyP.id

instance EventListenerConstPtr EventListenerFocus where
  toEventListenerConst (EventListenerFocus ptr') = EventListenerConst $ castEventListenerFocusToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'
  toEventListenerConst (EventListenerFocusGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerFocusToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'

instance EventListenerPtr EventListenerFocus where
  toEventListener (EventListenerFocus ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerFocusToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'
  toEventListener (EventListenerFocusGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerFocusToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'

instance M2.RefConstPtr EventListenerFocus where
  toRefConst (EventListenerFocus ptr') = M2.RefConst $ castEventListenerFocusToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'
  toRefConst (EventListenerFocusGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerFocusToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'

instance M2.RefPtr EventListenerFocus where
  toRef (EventListenerFocus ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerFocusToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'
  toRef (EventListenerFocusGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerFocusToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerFocus -> HoppyF.Ptr EventListenerFocusConst) ptr'

eventListenerFocus_onFocusChanged_set :: (EventListenerFocusPtr arg'1) => arg'1 -> (M11.Widget -> M11.Widget -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerFocus_onFocusChanged_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerFocus arg'1) $ \arg'1' ->
  eventFocusCallback_new arg'2 >>= \arg'2' ->
  (eventListenerFocus_onFocusChanged_set' arg'1' arg'2')

class EventListenerFocusSuper a where
  downToEventListenerFocus :: a -> EventListenerFocus

instance EventListenerFocusSuper EventListener where
  downToEventListenerFocus = castEventListenerFocusToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerFocusConst $ castEventListenerToEventListenerFocus ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerFocusConstGc fptr' $ castEventListenerToEventListenerFocus ptr'
instance EventListenerFocusSuper M2.Ref where
  downToEventListenerFocus = castEventListenerFocusToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerFocusConst $ castRefToEventListenerFocus ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerFocusConstGc fptr' $ castRefToEventListenerFocus ptr'

class EventListenerFocusSuperConst a where
  downToEventListenerFocusConst :: a -> EventListenerFocusConst

instance EventListenerFocusSuperConst EventListenerConst where
  downToEventListenerFocusConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerFocusConst $ castEventListenerToEventListenerFocus ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerFocusConstGc fptr' $ castEventListenerToEventListenerFocus ptr'
instance EventListenerFocusSuperConst M2.RefConst where
  downToEventListenerFocusConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerFocusConst $ castRefToEventListenerFocus ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerFocusConstGc fptr' $ castRefToEventListenerFocus ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerFocus)) EventListenerFocus where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerFocus)) EventListenerFocus where
  decode = HoppyP.fmap EventListenerFocus . HoppyF.peek

class EventListenerKeyboardValue a where
  withEventListenerKeyboardPtr :: a -> (EventListenerKeyboardConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerKeyboardConstPtr a => EventListenerKeyboardValue a where
#else
instance EventListenerKeyboardConstPtr a => EventListenerKeyboardValue a where
#endif
  withEventListenerKeyboardPtr = HoppyP.flip ($) . toEventListenerKeyboardConst

class (EventListenerConstPtr this) => EventListenerKeyboardConstPtr this where
  toEventListenerKeyboardConst :: this -> EventListenerKeyboardConst

class (EventListenerKeyboardConstPtr this, EventListenerPtr this) => EventListenerKeyboardPtr this where
  toEventListenerKeyboard :: this -> EventListenerKeyboard

eventListenerKeyboard_create ::  HoppyP.IO EventListenerKeyboard
eventListenerKeyboard_create =
  HoppyP.fmap EventListenerKeyboard
  (eventListenerKeyboard_create')

data EventListenerKeyboardConst =
    EventListenerKeyboardConst (HoppyF.Ptr EventListenerKeyboardConst)
  | EventListenerKeyboardConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerKeyboardConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerKeyboardConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerKeyboardConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerKeyboardToConst :: EventListenerKeyboard -> EventListenerKeyboardConst
castEventListenerKeyboardToConst (EventListenerKeyboard ptr') = EventListenerKeyboardConst $ HoppyF.castPtr ptr'
castEventListenerKeyboardToConst (EventListenerKeyboardGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerKeyboardConst where
  nullptr = EventListenerKeyboardConst HoppyF.nullPtr
  
  withCppPtr (EventListenerKeyboardConst ptr') f' = f' ptr'
  withCppPtr (EventListenerKeyboardConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerKeyboardConst ptr') = ptr'
  toPtr (EventListenerKeyboardConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerKeyboardConst _) = HoppyP.return ()
  touchCppPtr (EventListenerKeyboardConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerKeyboardConst where
  delete (EventListenerKeyboardConst ptr') = delete'EventListenerKeyboard ptr'
  delete (EventListenerKeyboardConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerKeyboardConst", " object."]
  
  toGc this'@(EventListenerKeyboardConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerKeyboardConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerKeyboard :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerKeyboardConstGc {}) = HoppyP.return this'

instance EventListenerKeyboardConstPtr EventListenerKeyboardConst where
  toEventListenerKeyboardConst = HoppyP.id

instance EventListenerConstPtr EventListenerKeyboardConst where
  toEventListenerConst (EventListenerKeyboardConst ptr') = EventListenerConst $ castEventListenerKeyboardToEventListener ptr'
  toEventListenerConst (EventListenerKeyboardConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerKeyboardToEventListener ptr'

instance M2.RefConstPtr EventListenerKeyboardConst where
  toRefConst (EventListenerKeyboardConst ptr') = M2.RefConst $ castEventListenerKeyboardToRef ptr'
  toRefConst (EventListenerKeyboardConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerKeyboardToRef ptr'

data EventListenerKeyboard =
    EventListenerKeyboard (HoppyF.Ptr EventListenerKeyboard)
  | EventListenerKeyboardGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerKeyboard)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerKeyboard where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerKeyboard where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerKeyboardToNonconst :: EventListenerKeyboardConst -> EventListenerKeyboard
castEventListenerKeyboardToNonconst (EventListenerKeyboardConst ptr') = EventListenerKeyboard $ HoppyF.castPtr ptr'
castEventListenerKeyboardToNonconst (EventListenerKeyboardConstGc fptr' ptr') = EventListenerKeyboardGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerKeyboard where
  nullptr = EventListenerKeyboard HoppyF.nullPtr
  
  withCppPtr (EventListenerKeyboard ptr') f' = f' ptr'
  withCppPtr (EventListenerKeyboardGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerKeyboard ptr') = ptr'
  toPtr (EventListenerKeyboardGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerKeyboard _) = HoppyP.return ()
  touchCppPtr (EventListenerKeyboardGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerKeyboard where
  delete (EventListenerKeyboard ptr') = delete'EventListenerKeyboard $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerKeyboardConst)
  delete (EventListenerKeyboardGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerKeyboard", " object."]
  
  toGc this'@(EventListenerKeyboard ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerKeyboardGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerKeyboard :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerKeyboardGc {}) = HoppyP.return this'

instance EventListenerKeyboardConstPtr EventListenerKeyboard where
  toEventListenerKeyboardConst (EventListenerKeyboard ptr') = EventListenerKeyboardConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'
  toEventListenerKeyboardConst (EventListenerKeyboardGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'

instance EventListenerKeyboardPtr EventListenerKeyboard where
  toEventListenerKeyboard = HoppyP.id

instance EventListenerConstPtr EventListenerKeyboard where
  toEventListenerConst (EventListenerKeyboard ptr') = EventListenerConst $ castEventListenerKeyboardToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'
  toEventListenerConst (EventListenerKeyboardGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerKeyboardToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'

instance EventListenerPtr EventListenerKeyboard where
  toEventListener (EventListenerKeyboard ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerKeyboardToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'
  toEventListener (EventListenerKeyboardGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerKeyboardToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'

instance M2.RefConstPtr EventListenerKeyboard where
  toRefConst (EventListenerKeyboard ptr') = M2.RefConst $ castEventListenerKeyboardToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'
  toRefConst (EventListenerKeyboardGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerKeyboardToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'

instance M2.RefPtr EventListenerKeyboard where
  toRef (EventListenerKeyboard ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerKeyboardToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'
  toRef (EventListenerKeyboardGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerKeyboardToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerKeyboard -> HoppyF.Ptr EventListenerKeyboardConst) ptr'

eventListenerKeyboard_onKeyPressed_set :: (EventListenerKeyboardPtr arg'1) => arg'1 -> (KeyCode -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerKeyboard_onKeyPressed_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerKeyboard arg'1) $ \arg'1' ->
  eventKeyboardCallback_new arg'2 >>= \arg'2' ->
  (eventListenerKeyboard_onKeyPressed_set' arg'1' arg'2')

eventListenerKeyboard_onKeyReleased_set :: (EventListenerKeyboardPtr arg'1) => arg'1 -> (KeyCode -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerKeyboard_onKeyReleased_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerKeyboard arg'1) $ \arg'1' ->
  eventKeyboardCallback_new arg'2 >>= \arg'2' ->
  (eventListenerKeyboard_onKeyReleased_set' arg'1' arg'2')

class EventListenerKeyboardSuper a where
  downToEventListenerKeyboard :: a -> EventListenerKeyboard

instance EventListenerKeyboardSuper EventListener where
  downToEventListenerKeyboard = castEventListenerKeyboardToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerKeyboardConst $ castEventListenerToEventListenerKeyboard ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ castEventListenerToEventListenerKeyboard ptr'
instance EventListenerKeyboardSuper M2.Ref where
  downToEventListenerKeyboard = castEventListenerKeyboardToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerKeyboardConst $ castRefToEventListenerKeyboard ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ castRefToEventListenerKeyboard ptr'

class EventListenerKeyboardSuperConst a where
  downToEventListenerKeyboardConst :: a -> EventListenerKeyboardConst

instance EventListenerKeyboardSuperConst EventListenerConst where
  downToEventListenerKeyboardConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerKeyboardConst $ castEventListenerToEventListenerKeyboard ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ castEventListenerToEventListenerKeyboard ptr'
instance EventListenerKeyboardSuperConst M2.RefConst where
  downToEventListenerKeyboardConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerKeyboardConst $ castRefToEventListenerKeyboard ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerKeyboardConstGc fptr' $ castRefToEventListenerKeyboard ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerKeyboard)) EventListenerKeyboard where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerKeyboard)) EventListenerKeyboard where
  decode = HoppyP.fmap EventListenerKeyboard . HoppyF.peek

class EventListenerMouseValue a where
  withEventListenerMousePtr :: a -> (EventListenerMouseConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerMouseConstPtr a => EventListenerMouseValue a where
#else
instance EventListenerMouseConstPtr a => EventListenerMouseValue a where
#endif
  withEventListenerMousePtr = HoppyP.flip ($) . toEventListenerMouseConst

class (EventListenerConstPtr this) => EventListenerMouseConstPtr this where
  toEventListenerMouseConst :: this -> EventListenerMouseConst

class (EventListenerMouseConstPtr this, EventListenerPtr this) => EventListenerMousePtr this where
  toEventListenerMouse :: this -> EventListenerMouse

eventListenerMouse_create ::  HoppyP.IO EventListenerMouse
eventListenerMouse_create =
  HoppyP.fmap EventListenerMouse
  (eventListenerMouse_create')

data EventListenerMouseConst =
    EventListenerMouseConst (HoppyF.Ptr EventListenerMouseConst)
  | EventListenerMouseConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerMouseConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerMouseConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerMouseConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerMouseToConst :: EventListenerMouse -> EventListenerMouseConst
castEventListenerMouseToConst (EventListenerMouse ptr') = EventListenerMouseConst $ HoppyF.castPtr ptr'
castEventListenerMouseToConst (EventListenerMouseGc fptr' ptr') = EventListenerMouseConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerMouseConst where
  nullptr = EventListenerMouseConst HoppyF.nullPtr
  
  withCppPtr (EventListenerMouseConst ptr') f' = f' ptr'
  withCppPtr (EventListenerMouseConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerMouseConst ptr') = ptr'
  toPtr (EventListenerMouseConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerMouseConst _) = HoppyP.return ()
  touchCppPtr (EventListenerMouseConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerMouseConst where
  delete (EventListenerMouseConst ptr') = delete'EventListenerMouse ptr'
  delete (EventListenerMouseConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerMouseConst", " object."]
  
  toGc this'@(EventListenerMouseConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerMouseConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerMouse :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerMouseConstGc {}) = HoppyP.return this'

instance EventListenerMouseConstPtr EventListenerMouseConst where
  toEventListenerMouseConst = HoppyP.id

instance EventListenerConstPtr EventListenerMouseConst where
  toEventListenerConst (EventListenerMouseConst ptr') = EventListenerConst $ castEventListenerMouseToEventListener ptr'
  toEventListenerConst (EventListenerMouseConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerMouseToEventListener ptr'

instance M2.RefConstPtr EventListenerMouseConst where
  toRefConst (EventListenerMouseConst ptr') = M2.RefConst $ castEventListenerMouseToRef ptr'
  toRefConst (EventListenerMouseConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerMouseToRef ptr'

data EventListenerMouse =
    EventListenerMouse (HoppyF.Ptr EventListenerMouse)
  | EventListenerMouseGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerMouse)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerMouse where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerMouse where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerMouseToNonconst :: EventListenerMouseConst -> EventListenerMouse
castEventListenerMouseToNonconst (EventListenerMouseConst ptr') = EventListenerMouse $ HoppyF.castPtr ptr'
castEventListenerMouseToNonconst (EventListenerMouseConstGc fptr' ptr') = EventListenerMouseGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerMouse where
  nullptr = EventListenerMouse HoppyF.nullPtr
  
  withCppPtr (EventListenerMouse ptr') f' = f' ptr'
  withCppPtr (EventListenerMouseGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerMouse ptr') = ptr'
  toPtr (EventListenerMouseGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerMouse _) = HoppyP.return ()
  touchCppPtr (EventListenerMouseGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerMouse where
  delete (EventListenerMouse ptr') = delete'EventListenerMouse $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerMouseConst)
  delete (EventListenerMouseGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerMouse", " object."]
  
  toGc this'@(EventListenerMouse ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerMouseGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerMouse :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerMouseGc {}) = HoppyP.return this'

instance EventListenerMouseConstPtr EventListenerMouse where
  toEventListenerMouseConst (EventListenerMouse ptr') = EventListenerMouseConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'
  toEventListenerMouseConst (EventListenerMouseGc fptr' ptr') = EventListenerMouseConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'

instance EventListenerMousePtr EventListenerMouse where
  toEventListenerMouse = HoppyP.id

instance EventListenerConstPtr EventListenerMouse where
  toEventListenerConst (EventListenerMouse ptr') = EventListenerConst $ castEventListenerMouseToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'
  toEventListenerConst (EventListenerMouseGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerMouseToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'

instance EventListenerPtr EventListenerMouse where
  toEventListener (EventListenerMouse ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerMouseToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'
  toEventListener (EventListenerMouseGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerMouseToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'

instance M2.RefConstPtr EventListenerMouse where
  toRefConst (EventListenerMouse ptr') = M2.RefConst $ castEventListenerMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'
  toRefConst (EventListenerMouseGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'

instance M2.RefPtr EventListenerMouse where
  toRef (EventListenerMouse ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'
  toRef (EventListenerMouseGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerMouse -> HoppyF.Ptr EventListenerMouseConst) ptr'

eventListenerMouse_onMouseDown_set :: (EventListenerMousePtr arg'1) => arg'1 -> (EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerMouse_onMouseDown_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerMouse arg'1) $ \arg'1' ->
  eventMouseCallback_new arg'2 >>= \arg'2' ->
  (eventListenerMouse_onMouseDown_set' arg'1' arg'2')

eventListenerMouse_onMouseUp_set :: (EventListenerMousePtr arg'1) => arg'1 -> (EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerMouse_onMouseUp_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerMouse arg'1) $ \arg'1' ->
  eventMouseCallback_new arg'2 >>= \arg'2' ->
  (eventListenerMouse_onMouseUp_set' arg'1' arg'2')

eventListenerMouse_onMouseMove_set :: (EventListenerMousePtr arg'1) => arg'1 -> (EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerMouse_onMouseMove_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerMouse arg'1) $ \arg'1' ->
  eventMouseCallback_new arg'2 >>= \arg'2' ->
  (eventListenerMouse_onMouseMove_set' arg'1' arg'2')

eventListenerMouse_onMouseScroll_set :: (EventListenerMousePtr arg'1) => arg'1 -> (EventMouse -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerMouse_onMouseScroll_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerMouse arg'1) $ \arg'1' ->
  eventMouseCallback_new arg'2 >>= \arg'2' ->
  (eventListenerMouse_onMouseScroll_set' arg'1' arg'2')

class EventListenerMouseSuper a where
  downToEventListenerMouse :: a -> EventListenerMouse

instance EventListenerMouseSuper EventListener where
  downToEventListenerMouse = castEventListenerMouseToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerMouseConst $ castEventListenerToEventListenerMouse ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerMouseConstGc fptr' $ castEventListenerToEventListenerMouse ptr'
instance EventListenerMouseSuper M2.Ref where
  downToEventListenerMouse = castEventListenerMouseToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerMouseConst $ castRefToEventListenerMouse ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerMouseConstGc fptr' $ castRefToEventListenerMouse ptr'

class EventListenerMouseSuperConst a where
  downToEventListenerMouseConst :: a -> EventListenerMouseConst

instance EventListenerMouseSuperConst EventListenerConst where
  downToEventListenerMouseConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerMouseConst $ castEventListenerToEventListenerMouse ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerMouseConstGc fptr' $ castEventListenerToEventListenerMouse ptr'
instance EventListenerMouseSuperConst M2.RefConst where
  downToEventListenerMouseConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerMouseConst $ castRefToEventListenerMouse ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerMouseConstGc fptr' $ castRefToEventListenerMouse ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerMouse)) EventListenerMouse where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerMouse)) EventListenerMouse where
  decode = HoppyP.fmap EventListenerMouse . HoppyF.peek

class EventListenerTouchAllAtOnceValue a where
  withEventListenerTouchAllAtOncePtr :: a -> (EventListenerTouchAllAtOnceConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerTouchAllAtOnceConstPtr a => EventListenerTouchAllAtOnceValue a where
#else
instance EventListenerTouchAllAtOnceConstPtr a => EventListenerTouchAllAtOnceValue a where
#endif
  withEventListenerTouchAllAtOncePtr = HoppyP.flip ($) . toEventListenerTouchAllAtOnceConst

class (EventListenerConstPtr this) => EventListenerTouchAllAtOnceConstPtr this where
  toEventListenerTouchAllAtOnceConst :: this -> EventListenerTouchAllAtOnceConst

class (EventListenerTouchAllAtOnceConstPtr this, EventListenerPtr this) => EventListenerTouchAllAtOncePtr this where
  toEventListenerTouchAllAtOnce :: this -> EventListenerTouchAllAtOnce

eventListenerTouchAllAtOnce_create ::  HoppyP.IO EventListenerTouchAllAtOnce
eventListenerTouchAllAtOnce_create =
  HoppyP.fmap EventListenerTouchAllAtOnce
  (eventListenerTouchAllAtOnce_create')

data EventListenerTouchAllAtOnceConst =
    EventListenerTouchAllAtOnceConst (HoppyF.Ptr EventListenerTouchAllAtOnceConst)
  | EventListenerTouchAllAtOnceConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerTouchAllAtOnceConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerTouchAllAtOnceConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerTouchAllAtOnceConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerTouchAllAtOnceToConst :: EventListenerTouchAllAtOnce -> EventListenerTouchAllAtOnceConst
castEventListenerTouchAllAtOnceToConst (EventListenerTouchAllAtOnce ptr') = EventListenerTouchAllAtOnceConst $ HoppyF.castPtr ptr'
castEventListenerTouchAllAtOnceToConst (EventListenerTouchAllAtOnceGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerTouchAllAtOnceConst where
  nullptr = EventListenerTouchAllAtOnceConst HoppyF.nullPtr
  
  withCppPtr (EventListenerTouchAllAtOnceConst ptr') f' = f' ptr'
  withCppPtr (EventListenerTouchAllAtOnceConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerTouchAllAtOnceConst ptr') = ptr'
  toPtr (EventListenerTouchAllAtOnceConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerTouchAllAtOnceConst _) = HoppyP.return ()
  touchCppPtr (EventListenerTouchAllAtOnceConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerTouchAllAtOnceConst where
  delete (EventListenerTouchAllAtOnceConst ptr') = delete'EventListenerTouchAllAtOnce ptr'
  delete (EventListenerTouchAllAtOnceConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerTouchAllAtOnceConst", " object."]
  
  toGc this'@(EventListenerTouchAllAtOnceConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerTouchAllAtOnceConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerTouchAllAtOnce :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerTouchAllAtOnceConstGc {}) = HoppyP.return this'

instance EventListenerTouchAllAtOnceConstPtr EventListenerTouchAllAtOnceConst where
  toEventListenerTouchAllAtOnceConst = HoppyP.id

instance EventListenerConstPtr EventListenerTouchAllAtOnceConst where
  toEventListenerConst (EventListenerTouchAllAtOnceConst ptr') = EventListenerConst $ castEventListenerTouchAllAtOnceToEventListener ptr'
  toEventListenerConst (EventListenerTouchAllAtOnceConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerTouchAllAtOnceToEventListener ptr'

instance M2.RefConstPtr EventListenerTouchAllAtOnceConst where
  toRefConst (EventListenerTouchAllAtOnceConst ptr') = M2.RefConst $ castEventListenerTouchAllAtOnceToRef ptr'
  toRefConst (EventListenerTouchAllAtOnceConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerTouchAllAtOnceToRef ptr'

data EventListenerTouchAllAtOnce =
    EventListenerTouchAllAtOnce (HoppyF.Ptr EventListenerTouchAllAtOnce)
  | EventListenerTouchAllAtOnceGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerTouchAllAtOnce)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerTouchAllAtOnce where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerTouchAllAtOnce where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerTouchAllAtOnceToNonconst :: EventListenerTouchAllAtOnceConst -> EventListenerTouchAllAtOnce
castEventListenerTouchAllAtOnceToNonconst (EventListenerTouchAllAtOnceConst ptr') = EventListenerTouchAllAtOnce $ HoppyF.castPtr ptr'
castEventListenerTouchAllAtOnceToNonconst (EventListenerTouchAllAtOnceConstGc fptr' ptr') = EventListenerTouchAllAtOnceGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerTouchAllAtOnce where
  nullptr = EventListenerTouchAllAtOnce HoppyF.nullPtr
  
  withCppPtr (EventListenerTouchAllAtOnce ptr') f' = f' ptr'
  withCppPtr (EventListenerTouchAllAtOnceGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerTouchAllAtOnce ptr') = ptr'
  toPtr (EventListenerTouchAllAtOnceGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerTouchAllAtOnce _) = HoppyP.return ()
  touchCppPtr (EventListenerTouchAllAtOnceGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerTouchAllAtOnce where
  delete (EventListenerTouchAllAtOnce ptr') = delete'EventListenerTouchAllAtOnce $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerTouchAllAtOnceConst)
  delete (EventListenerTouchAllAtOnceGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerTouchAllAtOnce", " object."]
  
  toGc this'@(EventListenerTouchAllAtOnce ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerTouchAllAtOnceGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerTouchAllAtOnce :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerTouchAllAtOnceGc {}) = HoppyP.return this'

instance EventListenerTouchAllAtOnceConstPtr EventListenerTouchAllAtOnce where
  toEventListenerTouchAllAtOnceConst (EventListenerTouchAllAtOnce ptr') = EventListenerTouchAllAtOnceConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'
  toEventListenerTouchAllAtOnceConst (EventListenerTouchAllAtOnceGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'

instance EventListenerTouchAllAtOncePtr EventListenerTouchAllAtOnce where
  toEventListenerTouchAllAtOnce = HoppyP.id

instance EventListenerConstPtr EventListenerTouchAllAtOnce where
  toEventListenerConst (EventListenerTouchAllAtOnce ptr') = EventListenerConst $ castEventListenerTouchAllAtOnceToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'
  toEventListenerConst (EventListenerTouchAllAtOnceGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerTouchAllAtOnceToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'

instance EventListenerPtr EventListenerTouchAllAtOnce where
  toEventListener (EventListenerTouchAllAtOnce ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerTouchAllAtOnceToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'
  toEventListener (EventListenerTouchAllAtOnceGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerTouchAllAtOnceToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'

instance M2.RefConstPtr EventListenerTouchAllAtOnce where
  toRefConst (EventListenerTouchAllAtOnce ptr') = M2.RefConst $ castEventListenerTouchAllAtOnceToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'
  toRefConst (EventListenerTouchAllAtOnceGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerTouchAllAtOnceToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'

instance M2.RefPtr EventListenerTouchAllAtOnce where
  toRef (EventListenerTouchAllAtOnce ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerTouchAllAtOnceToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'
  toRef (EventListenerTouchAllAtOnceGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerTouchAllAtOnceToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchAllAtOnce -> HoppyF.Ptr EventListenerTouchAllAtOnceConst) ptr'

eventListenerTouchAllAtOnce_onTouchesBegan_set :: (EventListenerTouchAllAtOncePtr arg'1) => arg'1 -> (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchAllAtOnce_onTouchesBegan_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchAllAtOnce arg'1) $ \arg'1' ->
  eventTouchesCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchAllAtOnce_onTouchesBegan_set' arg'1' arg'2')

eventListenerTouchAllAtOnce_onTouchesMoved_set :: (EventListenerTouchAllAtOncePtr arg'1) => arg'1 -> (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchAllAtOnce_onTouchesMoved_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchAllAtOnce arg'1) $ \arg'1' ->
  eventTouchesCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchAllAtOnce_onTouchesMoved_set' arg'1' arg'2')

eventListenerTouchAllAtOnce_onTouchesEnded_set :: (EventListenerTouchAllAtOncePtr arg'1) => arg'1 -> (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchAllAtOnce_onTouchesEnded_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchAllAtOnce arg'1) $ \arg'1' ->
  eventTouchesCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchAllAtOnce_onTouchesEnded_set' arg'1' arg'2')

eventListenerTouchAllAtOnce_onTouchesCancelled_set :: (EventListenerTouchAllAtOncePtr arg'1) => arg'1 -> (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchAllAtOnce_onTouchesCancelled_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchAllAtOnce arg'1) $ \arg'1' ->
  eventTouchesCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchAllAtOnce_onTouchesCancelled_set' arg'1' arg'2')

class EventListenerTouchAllAtOnceSuper a where
  downToEventListenerTouchAllAtOnce :: a -> EventListenerTouchAllAtOnce

instance EventListenerTouchAllAtOnceSuper EventListener where
  downToEventListenerTouchAllAtOnce = castEventListenerTouchAllAtOnceToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerTouchAllAtOnceConst $ castEventListenerToEventListenerTouchAllAtOnce ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ castEventListenerToEventListenerTouchAllAtOnce ptr'
instance EventListenerTouchAllAtOnceSuper M2.Ref where
  downToEventListenerTouchAllAtOnce = castEventListenerTouchAllAtOnceToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerTouchAllAtOnceConst $ castRefToEventListenerTouchAllAtOnce ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ castRefToEventListenerTouchAllAtOnce ptr'

class EventListenerTouchAllAtOnceSuperConst a where
  downToEventListenerTouchAllAtOnceConst :: a -> EventListenerTouchAllAtOnceConst

instance EventListenerTouchAllAtOnceSuperConst EventListenerConst where
  downToEventListenerTouchAllAtOnceConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerTouchAllAtOnceConst $ castEventListenerToEventListenerTouchAllAtOnce ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ castEventListenerToEventListenerTouchAllAtOnce ptr'
instance EventListenerTouchAllAtOnceSuperConst M2.RefConst where
  downToEventListenerTouchAllAtOnceConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerTouchAllAtOnceConst $ castRefToEventListenerTouchAllAtOnce ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerTouchAllAtOnceConstGc fptr' $ castRefToEventListenerTouchAllAtOnce ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerTouchAllAtOnce)) EventListenerTouchAllAtOnce where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerTouchAllAtOnce)) EventListenerTouchAllAtOnce where
  decode = HoppyP.fmap EventListenerTouchAllAtOnce . HoppyF.peek

class EventListenerTouchOneByOneValue a where
  withEventListenerTouchOneByOnePtr :: a -> (EventListenerTouchOneByOneConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventListenerTouchOneByOneConstPtr a => EventListenerTouchOneByOneValue a where
#else
instance EventListenerTouchOneByOneConstPtr a => EventListenerTouchOneByOneValue a where
#endif
  withEventListenerTouchOneByOnePtr = HoppyP.flip ($) . toEventListenerTouchOneByOneConst

class (EventListenerConstPtr this) => EventListenerTouchOneByOneConstPtr this where
  toEventListenerTouchOneByOneConst :: this -> EventListenerTouchOneByOneConst

eventListenerTouchOneByOne_isSwallowTouches :: (EventListenerTouchOneByOneValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
eventListenerTouchOneByOne_isSwallowTouches arg'1 =
  withEventListenerTouchOneByOnePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (eventListenerTouchOneByOne_isSwallowTouches' arg'1')

class (EventListenerTouchOneByOneConstPtr this, EventListenerPtr this) => EventListenerTouchOneByOnePtr this where
  toEventListenerTouchOneByOne :: this -> EventListenerTouchOneByOne

eventListenerTouchOneByOne_setSwallowTouches :: (EventListenerTouchOneByOnePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
eventListenerTouchOneByOne_setSwallowTouches arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchOneByOne arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (eventListenerTouchOneByOne_setSwallowTouches' arg'1' arg'2')

eventListenerTouchOneByOne_create ::  HoppyP.IO EventListenerTouchOneByOne
eventListenerTouchOneByOne_create =
  HoppyP.fmap EventListenerTouchOneByOne
  (eventListenerTouchOneByOne_create')

data EventListenerTouchOneByOneConst =
    EventListenerTouchOneByOneConst (HoppyF.Ptr EventListenerTouchOneByOneConst)
  | EventListenerTouchOneByOneConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerTouchOneByOneConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerTouchOneByOneConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerTouchOneByOneConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerTouchOneByOneToConst :: EventListenerTouchOneByOne -> EventListenerTouchOneByOneConst
castEventListenerTouchOneByOneToConst (EventListenerTouchOneByOne ptr') = EventListenerTouchOneByOneConst $ HoppyF.castPtr ptr'
castEventListenerTouchOneByOneToConst (EventListenerTouchOneByOneGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerTouchOneByOneConst where
  nullptr = EventListenerTouchOneByOneConst HoppyF.nullPtr
  
  withCppPtr (EventListenerTouchOneByOneConst ptr') f' = f' ptr'
  withCppPtr (EventListenerTouchOneByOneConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerTouchOneByOneConst ptr') = ptr'
  toPtr (EventListenerTouchOneByOneConstGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerTouchOneByOneConst _) = HoppyP.return ()
  touchCppPtr (EventListenerTouchOneByOneConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerTouchOneByOneConst where
  delete (EventListenerTouchOneByOneConst ptr') = delete'EventListenerTouchOneByOne ptr'
  delete (EventListenerTouchOneByOneConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerTouchOneByOneConst", " object."]
  
  toGc this'@(EventListenerTouchOneByOneConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerTouchOneByOneConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerTouchOneByOne :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerTouchOneByOneConstGc {}) = HoppyP.return this'

instance EventListenerTouchOneByOneConstPtr EventListenerTouchOneByOneConst where
  toEventListenerTouchOneByOneConst = HoppyP.id

instance EventListenerConstPtr EventListenerTouchOneByOneConst where
  toEventListenerConst (EventListenerTouchOneByOneConst ptr') = EventListenerConst $ castEventListenerTouchOneByOneToEventListener ptr'
  toEventListenerConst (EventListenerTouchOneByOneConstGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerTouchOneByOneToEventListener ptr'

instance M2.RefConstPtr EventListenerTouchOneByOneConst where
  toRefConst (EventListenerTouchOneByOneConst ptr') = M2.RefConst $ castEventListenerTouchOneByOneToRef ptr'
  toRefConst (EventListenerTouchOneByOneConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerTouchOneByOneToRef ptr'

data EventListenerTouchOneByOne =
    EventListenerTouchOneByOne (HoppyF.Ptr EventListenerTouchOneByOne)
  | EventListenerTouchOneByOneGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventListenerTouchOneByOne)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventListenerTouchOneByOne where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventListenerTouchOneByOne where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventListenerTouchOneByOneToNonconst :: EventListenerTouchOneByOneConst -> EventListenerTouchOneByOne
castEventListenerTouchOneByOneToNonconst (EventListenerTouchOneByOneConst ptr') = EventListenerTouchOneByOne $ HoppyF.castPtr ptr'
castEventListenerTouchOneByOneToNonconst (EventListenerTouchOneByOneConstGc fptr' ptr') = EventListenerTouchOneByOneGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventListenerTouchOneByOne where
  nullptr = EventListenerTouchOneByOne HoppyF.nullPtr
  
  withCppPtr (EventListenerTouchOneByOne ptr') f' = f' ptr'
  withCppPtr (EventListenerTouchOneByOneGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventListenerTouchOneByOne ptr') = ptr'
  toPtr (EventListenerTouchOneByOneGc _ ptr') = ptr'
  
  touchCppPtr (EventListenerTouchOneByOne _) = HoppyP.return ()
  touchCppPtr (EventListenerTouchOneByOneGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventListenerTouchOneByOne where
  delete (EventListenerTouchOneByOne ptr') = delete'EventListenerTouchOneByOne $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventListenerTouchOneByOneConst)
  delete (EventListenerTouchOneByOneGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventListenerTouchOneByOne", " object."]
  
  toGc this'@(EventListenerTouchOneByOne ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventListenerTouchOneByOneGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventListenerTouchOneByOne :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventListenerTouchOneByOneGc {}) = HoppyP.return this'

instance EventListenerTouchOneByOneConstPtr EventListenerTouchOneByOne where
  toEventListenerTouchOneByOneConst (EventListenerTouchOneByOne ptr') = EventListenerTouchOneByOneConst $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'
  toEventListenerTouchOneByOneConst (EventListenerTouchOneByOneGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'

instance EventListenerTouchOneByOnePtr EventListenerTouchOneByOne where
  toEventListenerTouchOneByOne = HoppyP.id

instance EventListenerConstPtr EventListenerTouchOneByOne where
  toEventListenerConst (EventListenerTouchOneByOne ptr') = EventListenerConst $ castEventListenerTouchOneByOneToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'
  toEventListenerConst (EventListenerTouchOneByOneGc fptr' ptr') = EventListenerConstGc fptr' $ castEventListenerTouchOneByOneToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'

instance EventListenerPtr EventListenerTouchOneByOne where
  toEventListener (EventListenerTouchOneByOne ptr') = EventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerTouchOneByOneToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'
  toEventListener (EventListenerTouchOneByOneGc fptr' ptr') = EventListenerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerConst -> HoppyF.Ptr EventListener) $ castEventListenerTouchOneByOneToEventListener $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'

instance M2.RefConstPtr EventListenerTouchOneByOne where
  toRefConst (EventListenerTouchOneByOne ptr') = M2.RefConst $ castEventListenerTouchOneByOneToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'
  toRefConst (EventListenerTouchOneByOneGc fptr' ptr') = M2.RefConstGc fptr' $ castEventListenerTouchOneByOneToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'

instance M2.RefPtr EventListenerTouchOneByOne where
  toRef (EventListenerTouchOneByOne ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerTouchOneByOneToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'
  toRef (EventListenerTouchOneByOneGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventListenerTouchOneByOneToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventListenerTouchOneByOne -> HoppyF.Ptr EventListenerTouchOneByOneConst) ptr'

eventListenerTouchOneByOne_onTouchBegan_set :: (EventListenerTouchOneByOnePtr arg'1) => arg'1 -> (EventTouch -> Event -> HoppyP.IO HoppyP.Bool) -> HoppyP.IO ()
eventListenerTouchOneByOne_onTouchBegan_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchOneByOne arg'1) $ \arg'1' ->
  eventTouchBeganCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchOneByOne_onTouchBegan_set' arg'1' arg'2')

eventListenerTouchOneByOne_onTouchMoved_set :: (EventListenerTouchOneByOnePtr arg'1) => arg'1 -> (EventTouch -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchOneByOne_onTouchMoved_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchOneByOne arg'1) $ \arg'1' ->
  eventTouchCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchOneByOne_onTouchMoved_set' arg'1' arg'2')

eventListenerTouchOneByOne_onTouchEnded_set :: (EventListenerTouchOneByOnePtr arg'1) => arg'1 -> (EventTouch -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchOneByOne_onTouchEnded_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchOneByOne arg'1) $ \arg'1' ->
  eventTouchCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchOneByOne_onTouchEnded_set' arg'1' arg'2')

eventListenerTouchOneByOne_onTouchCancelled_set :: (EventListenerTouchOneByOnePtr arg'1) => arg'1 -> (EventTouch -> Event -> HoppyP.IO ()) -> HoppyP.IO ()
eventListenerTouchOneByOne_onTouchCancelled_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventListenerTouchOneByOne arg'1) $ \arg'1' ->
  eventTouchCallback_new arg'2 >>= \arg'2' ->
  (eventListenerTouchOneByOne_onTouchCancelled_set' arg'1' arg'2')

class EventListenerTouchOneByOneSuper a where
  downToEventListenerTouchOneByOne :: a -> EventListenerTouchOneByOne

instance EventListenerTouchOneByOneSuper EventListener where
  downToEventListenerTouchOneByOne = castEventListenerTouchOneByOneToNonconst . cast' . castEventListenerToConst
    where
      cast' (EventListenerConst ptr') = EventListenerTouchOneByOneConst $ castEventListenerToEventListenerTouchOneByOne ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ castEventListenerToEventListenerTouchOneByOne ptr'
instance EventListenerTouchOneByOneSuper M2.Ref where
  downToEventListenerTouchOneByOne = castEventListenerTouchOneByOneToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventListenerTouchOneByOneConst $ castRefToEventListenerTouchOneByOne ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ castRefToEventListenerTouchOneByOne ptr'

class EventListenerTouchOneByOneSuperConst a where
  downToEventListenerTouchOneByOneConst :: a -> EventListenerTouchOneByOneConst

instance EventListenerTouchOneByOneSuperConst EventListenerConst where
  downToEventListenerTouchOneByOneConst = cast'
    where
      cast' (EventListenerConst ptr') = EventListenerTouchOneByOneConst $ castEventListenerToEventListenerTouchOneByOne ptr'
      cast' (EventListenerConstGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ castEventListenerToEventListenerTouchOneByOne ptr'
instance EventListenerTouchOneByOneSuperConst M2.RefConst where
  downToEventListenerTouchOneByOneConst = cast'
    where
      cast' (M2.RefConst ptr') = EventListenerTouchOneByOneConst $ castRefToEventListenerTouchOneByOne ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventListenerTouchOneByOneConstGc fptr' $ castRefToEventListenerTouchOneByOne ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventListenerTouchOneByOne)) EventListenerTouchOneByOne where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventListenerTouchOneByOne)) EventListenerTouchOneByOne where
  decode = HoppyP.fmap EventListenerTouchOneByOne . HoppyF.peek

class EventMouseValue a where
  withEventMousePtr :: a -> (EventMouseConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventMouseConstPtr a => EventMouseValue a where
#else
instance EventMouseConstPtr a => EventMouseValue a where
#endif
  withEventMousePtr = HoppyP.flip ($) . toEventMouseConst

class (EventConstPtr this) => EventMouseConstPtr this where
  toEventMouseConst :: this -> EventMouseConst

eventMouse_getScrollX :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
eventMouse_getScrollX arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventMouse_getScrollX' arg'1')

eventMouse_getScrollY :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
eventMouse_getScrollY arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventMouse_getScrollY' arg'1')

eventMouse_getMouseButton :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
eventMouse_getMouseButton arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (eventMouse_getMouseButton' arg'1')

eventMouse_getCursorX :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
eventMouse_getCursorX arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventMouse_getCursorX' arg'1')

eventMouse_getCursorY :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
eventMouse_getCursorY arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (eventMouse_getCursorY' arg'1')

eventMouse_getLocation :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getLocation arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getLocation' arg'1')

eventMouse_getPreviousLocation :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getPreviousLocation arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getPreviousLocation' arg'1')

eventMouse_getStartLocation :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getStartLocation arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getStartLocation' arg'1')

eventMouse_getDelta :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getDelta arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getDelta' arg'1')

eventMouse_getLocationInView :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getLocationInView arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getLocationInView' arg'1')

eventMouse_getPreviousLocationInView :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getPreviousLocationInView arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getPreviousLocationInView' arg'1')

eventMouse_getStartLocationInView :: (EventMouseValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventMouse_getStartLocationInView arg'1 =
  withEventMousePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventMouse_getStartLocationInView' arg'1')

class (EventMouseConstPtr this, EventPtr this) => EventMousePtr this where
  toEventMouse :: this -> EventMouse

data EventMouseConst =
    EventMouseConst (HoppyF.Ptr EventMouseConst)
  | EventMouseConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventMouseConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventMouseConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventMouseConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventMouseToConst :: EventMouse -> EventMouseConst
castEventMouseToConst (EventMouse ptr') = EventMouseConst $ HoppyF.castPtr ptr'
castEventMouseToConst (EventMouseGc fptr' ptr') = EventMouseConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventMouseConst where
  nullptr = EventMouseConst HoppyF.nullPtr
  
  withCppPtr (EventMouseConst ptr') f' = f' ptr'
  withCppPtr (EventMouseConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventMouseConst ptr') = ptr'
  toPtr (EventMouseConstGc _ ptr') = ptr'
  
  touchCppPtr (EventMouseConst _) = HoppyP.return ()
  touchCppPtr (EventMouseConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventMouseConst where
  delete (EventMouseConst ptr') = delete'EventMouse ptr'
  delete (EventMouseConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventMouseConst", " object."]
  
  toGc this'@(EventMouseConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventMouseConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventMouse :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventMouseConstGc {}) = HoppyP.return this'

instance EventMouseConstPtr EventMouseConst where
  toEventMouseConst = HoppyP.id

instance EventConstPtr EventMouseConst where
  toEventConst (EventMouseConst ptr') = EventConst $ castEventMouseToEvent ptr'
  toEventConst (EventMouseConstGc fptr' ptr') = EventConstGc fptr' $ castEventMouseToEvent ptr'

instance M2.RefConstPtr EventMouseConst where
  toRefConst (EventMouseConst ptr') = M2.RefConst $ castEventMouseToRef ptr'
  toRefConst (EventMouseConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventMouseToRef ptr'

data EventMouse =
    EventMouse (HoppyF.Ptr EventMouse)
  | EventMouseGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventMouse)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventMouse where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventMouse where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventMouseToNonconst :: EventMouseConst -> EventMouse
castEventMouseToNonconst (EventMouseConst ptr') = EventMouse $ HoppyF.castPtr ptr'
castEventMouseToNonconst (EventMouseConstGc fptr' ptr') = EventMouseGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventMouse where
  nullptr = EventMouse HoppyF.nullPtr
  
  withCppPtr (EventMouse ptr') f' = f' ptr'
  withCppPtr (EventMouseGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventMouse ptr') = ptr'
  toPtr (EventMouseGc _ ptr') = ptr'
  
  touchCppPtr (EventMouse _) = HoppyP.return ()
  touchCppPtr (EventMouseGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventMouse where
  delete (EventMouse ptr') = delete'EventMouse $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventMouseConst)
  delete (EventMouseGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventMouse", " object."]
  
  toGc this'@(EventMouse ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventMouseGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventMouse :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventMouseGc {}) = HoppyP.return this'

instance EventMouseConstPtr EventMouse where
  toEventMouseConst (EventMouse ptr') = EventMouseConst $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'
  toEventMouseConst (EventMouseGc fptr' ptr') = EventMouseConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'

instance EventMousePtr EventMouse where
  toEventMouse = HoppyP.id

instance EventConstPtr EventMouse where
  toEventConst (EventMouse ptr') = EventConst $ castEventMouseToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'
  toEventConst (EventMouseGc fptr' ptr') = EventConstGc fptr' $ castEventMouseToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'

instance EventPtr EventMouse where
  toEvent (EventMouse ptr') = Event $ (HoppyF.castPtr :: HoppyF.Ptr EventConst -> HoppyF.Ptr Event) $ castEventMouseToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'
  toEvent (EventMouseGc fptr' ptr') = EventGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventConst -> HoppyF.Ptr Event) $ castEventMouseToEvent $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'

instance M2.RefConstPtr EventMouse where
  toRefConst (EventMouse ptr') = M2.RefConst $ castEventMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'
  toRefConst (EventMouseGc fptr' ptr') = M2.RefConstGc fptr' $ castEventMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'

instance M2.RefPtr EventMouse where
  toRef (EventMouse ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'
  toRef (EventMouseGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventMouseToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventMouse -> HoppyF.Ptr EventMouseConst) ptr'

class EventMouseSuper a where
  downToEventMouse :: a -> EventMouse

instance EventMouseSuper Event where
  downToEventMouse = castEventMouseToNonconst . cast' . castEventToConst
    where
      cast' (EventConst ptr') = EventMouseConst $ castEventToEventMouse ptr'
      cast' (EventConstGc fptr' ptr') = EventMouseConstGc fptr' $ castEventToEventMouse ptr'
instance EventMouseSuper M2.Ref where
  downToEventMouse = castEventMouseToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventMouseConst $ castRefToEventMouse ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventMouseConstGc fptr' $ castRefToEventMouse ptr'

class EventMouseSuperConst a where
  downToEventMouseConst :: a -> EventMouseConst

instance EventMouseSuperConst EventConst where
  downToEventMouseConst = cast'
    where
      cast' (EventConst ptr') = EventMouseConst $ castEventToEventMouse ptr'
      cast' (EventConstGc fptr' ptr') = EventMouseConstGc fptr' $ castEventToEventMouse ptr'
instance EventMouseSuperConst M2.RefConst where
  downToEventMouseConst = cast'
    where
      cast' (M2.RefConst ptr') = EventMouseConst $ castRefToEventMouse ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventMouseConstGc fptr' $ castRefToEventMouse ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventMouse)) EventMouse where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventMouse)) EventMouse where
  decode = HoppyP.fmap EventMouse . HoppyF.peek

eventMouseCallback_newFunPtr :: (EventMouse -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventMouse -> HoppyP.IO ()))
eventMouseCallback_newFunPtr f'hs = eventMouseCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = EventMouse arg'1 in
  (f'hs arg'1')

eventMouseCallback_new :: (EventMouse -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventMouse -> HoppyP.IO ()))
eventMouseCallback_new f'hs = do
  f'p <- eventMouseCallback_newFunPtr f'hs
  eventMouseCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class EventTouchValue a where
  withEventTouchPtr :: a -> (EventTouchConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventTouchConstPtr a => EventTouchValue a where
#else
instance EventTouchConstPtr a => EventTouchValue a where
#endif
  withEventTouchPtr = HoppyP.flip ($) . toEventTouchConst

class (M2.RefConstPtr this) => EventTouchConstPtr this where
  toEventTouchConst :: this -> EventTouchConst

eventTouch_getLocation :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getLocation arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getLocation' arg'1')

eventTouch_getPreviousLocation :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getPreviousLocation arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getPreviousLocation' arg'1')

eventTouch_getStartLocation :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getStartLocation arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getStartLocation' arg'1')

eventTouch_getDelta :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getDelta arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getDelta' arg'1')

eventTouch_getLocationInView :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getLocationInView arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getLocationInView' arg'1')

eventTouch_getPreviousLocationInView :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getPreviousLocationInView arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getPreviousLocationInView' arg'1')

eventTouch_getStartLocationInView :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
eventTouch_getStartLocationInView arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (eventTouch_getStartLocationInView' arg'1')

eventTouch_getID :: (EventTouchValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
eventTouch_getID arg'1 =
  withEventTouchPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (eventTouch_getID' arg'1')

class (EventTouchConstPtr this, M2.RefPtr this) => EventTouchPtr this where
  toEventTouch :: this -> EventTouch

data EventTouchConst =
    EventTouchConst (HoppyF.Ptr EventTouchConst)
  | EventTouchConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchToConst :: EventTouch -> EventTouchConst
castEventTouchToConst (EventTouch ptr') = EventTouchConst $ HoppyF.castPtr ptr'
castEventTouchToConst (EventTouchGc fptr' ptr') = EventTouchConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchConst where
  nullptr = EventTouchConst HoppyF.nullPtr
  
  withCppPtr (EventTouchConst ptr') f' = f' ptr'
  withCppPtr (EventTouchConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchConst ptr') = ptr'
  toPtr (EventTouchConstGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchConst _) = HoppyP.return ()
  touchCppPtr (EventTouchConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchConst where
  delete (EventTouchConst ptr') = delete'EventTouch ptr'
  delete (EventTouchConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchConst", " object."]
  
  toGc this'@(EventTouchConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouch :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchConstGc {}) = HoppyP.return this'

instance EventTouchConstPtr EventTouchConst where
  toEventTouchConst = HoppyP.id

instance M2.RefConstPtr EventTouchConst where
  toRefConst (EventTouchConst ptr') = M2.RefConst $ castEventTouchToRef ptr'
  toRefConst (EventTouchConstGc fptr' ptr') = M2.RefConstGc fptr' $ castEventTouchToRef ptr'

data EventTouch =
    EventTouch (HoppyF.Ptr EventTouch)
  | EventTouchGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouch)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouch where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouch where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchToNonconst :: EventTouchConst -> EventTouch
castEventTouchToNonconst (EventTouchConst ptr') = EventTouch $ HoppyF.castPtr ptr'
castEventTouchToNonconst (EventTouchConstGc fptr' ptr') = EventTouchGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouch where
  nullptr = EventTouch HoppyF.nullPtr
  
  withCppPtr (EventTouch ptr') f' = f' ptr'
  withCppPtr (EventTouchGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouch ptr') = ptr'
  toPtr (EventTouchGc _ ptr') = ptr'
  
  touchCppPtr (EventTouch _) = HoppyP.return ()
  touchCppPtr (EventTouchGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouch where
  delete (EventTouch ptr') = delete'EventTouch $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventTouchConst)
  delete (EventTouchGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouch", " object."]
  
  toGc this'@(EventTouch ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouch :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchGc {}) = HoppyP.return this'

instance EventTouchConstPtr EventTouch where
  toEventTouchConst (EventTouch ptr') = EventTouchConst $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'
  toEventTouchConst (EventTouchGc fptr' ptr') = EventTouchConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'

instance EventTouchPtr EventTouch where
  toEventTouch = HoppyP.id

instance M2.RefConstPtr EventTouch where
  toRefConst (EventTouch ptr') = M2.RefConst $ castEventTouchToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'
  toRefConst (EventTouchGc fptr' ptr') = M2.RefConstGc fptr' $ castEventTouchToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'

instance M2.RefPtr EventTouch where
  toRef (EventTouch ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventTouchToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'
  toRef (EventTouchGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castEventTouchToRef $ (HoppyF.castPtr :: HoppyF.Ptr EventTouch -> HoppyF.Ptr EventTouchConst) ptr'

class EventTouchSuper a where
  downToEventTouch :: a -> EventTouch

instance EventTouchSuper M2.Ref where
  downToEventTouch = castEventTouchToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = EventTouchConst $ castRefToEventTouch ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventTouchConstGc fptr' $ castRefToEventTouch ptr'

class EventTouchSuperConst a where
  downToEventTouchConst :: a -> EventTouchConst

instance EventTouchSuperConst M2.RefConst where
  downToEventTouchConst = cast'
    where
      cast' (M2.RefConst ptr') = EventTouchConst $ castRefToEventTouch ptr'
      cast' (M2.RefConstGc fptr' ptr') = EventTouchConstGc fptr' $ castRefToEventTouch ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventTouch)) EventTouch where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventTouch)) EventTouch where
  decode = HoppyP.fmap EventTouch . HoppyF.peek

eventTouchBeganCallback_newFunPtr :: (EventTouch -> Event -> HoppyP.IO HoppyP.Bool) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool))
eventTouchBeganCallback_newFunPtr f'hs = eventTouchBeganCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = EventTouch arg'1 in
  let arg'2' = Event arg'2 in
  HoppyP.fmap (\x -> if x then 1 else 0)
  (f'hs arg'1' arg'2')

eventTouchBeganCallback_new :: (EventTouch -> Event -> HoppyP.IO HoppyP.Bool) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO HoppyFHR.CBool))
eventTouchBeganCallback_new f'hs = do
  f'p <- eventTouchBeganCallback_newFunPtr f'hs
  eventTouchBeganCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

eventTouchCallback_newFunPtr :: (EventTouch -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventTouchCallback_newFunPtr f'hs = eventTouchCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = EventTouch arg'1 in
  let arg'2' = Event arg'2 in
  (f'hs arg'1' arg'2')

eventTouchCallback_new :: (EventTouch -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouch -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventTouchCallback_new f'hs = do
  f'p <- eventTouchCallback_newFunPtr f'hs
  eventTouchCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class EventTouchVectorValue a where
  withEventTouchVectorPtr :: a -> (EventTouchVectorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventTouchVectorConstPtr a => EventTouchVectorValue a where
#else
instance EventTouchVectorConstPtr a => EventTouchVectorValue a where
#endif
  withEventTouchVectorPtr = HoppyP.flip ($) . toEventTouchVectorConst

class (HoppyFHR.CppPtr this) => EventTouchVectorConstPtr this where
  toEventTouchVectorConst :: this -> EventTouchVectorConst

eventTouchVector_atConst :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_atConst arg'1 arg'2 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVector_atConst' arg'1' arg'2')

eventTouchVector_backConst :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_backConst arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVector_backConst' arg'1')

eventTouchVector_beginConst :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVector_beginConst arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVector_beginConst' arg'1')

eventTouchVector_capacity :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
eventTouchVector_capacity arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVector_capacity' arg'1')

eventTouchVector_empty :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
eventTouchVector_empty arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (eventTouchVector_empty' arg'1')

eventTouchVector_endConst :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVector_endConst arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVector_endConst' arg'1')

eventTouchVector_frontConst :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_frontConst arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVector_frontConst' arg'1')

eventTouchVector_maxSize :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
eventTouchVector_maxSize arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVector_maxSize' arg'1')

eventTouchVector_size :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
eventTouchVector_size arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVector_size' arg'1')

class (EventTouchVectorConstPtr this) => EventTouchVectorPtr this where
  toEventTouchVector :: this -> EventTouchVector

eventTouchVector_at :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVector_at' arg'1' arg'2')

eventTouchVector_back :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_back arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  (eventTouchVector_back' arg'1')

eventTouchVector_begin :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorIterator
eventTouchVector_begin arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVector_begin' arg'1')

eventTouchVector_clear :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
eventTouchVector_clear arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  (eventTouchVector_clear' arg'1')

eventTouchVector_end :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorIterator
eventTouchVector_end arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVector_end' arg'1')

eventTouchVector_erase :: (EventTouchVectorPtr arg'1, EventTouchVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventTouchVector_erase arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (eventTouchVector_erase' arg'1' arg'2')

eventTouchVector_eraseRange :: (EventTouchVectorPtr arg'1, EventTouchVectorIteratorValue arg'2, EventTouchVectorIteratorValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
eventTouchVector_eraseRange arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  withEventTouchVectorIteratorPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (eventTouchVector_eraseRange' arg'1' arg'2' arg'3')

eventTouchVector_front :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVector_front arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  (eventTouchVector_front' arg'1')

eventTouchVector_insert :: (EventTouchVectorPtr arg'1, EventTouchVectorIteratorValue arg'2, EventTouchPtr arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO EventTouchVectorIterator
eventTouchVector_insert arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.withCppPtr (toEventTouch arg'3) $ \arg'3' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVector_insert' arg'1' arg'2' arg'3')

eventTouchVector_popBack :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
eventTouchVector_popBack arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  (eventTouchVector_popBack' arg'1')

eventTouchVector_pushBack :: (EventTouchVectorPtr arg'1, EventTouchPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventTouchVector_pushBack arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toEventTouch arg'2) $ \arg'2' ->
  (eventTouchVector_pushBack' arg'1' arg'2')

eventTouchVector_reserve :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
eventTouchVector_reserve arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVector_reserve' arg'1' arg'2')

eventTouchVector_resize :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyFC.CSize -> HoppyP.IO ()
eventTouchVector_resize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVector_resize' arg'1' arg'2')

eventTouchVector_resizeWith :: (EventTouchVectorPtr arg'1, EventTouchPtr arg'3) => arg'1 -> HoppyFC.CSize -> arg'3 -> HoppyP.IO ()
eventTouchVector_resizeWith arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.withCppPtr (toEventTouch arg'3) $ \arg'3' ->
  (eventTouchVector_resizeWith' arg'1' arg'2' arg'3')

eventTouchVector_shrinkToFit :: (EventTouchVectorPtr arg'1) => arg'1 -> HoppyP.IO ()
eventTouchVector_shrinkToFit arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  (eventTouchVector_shrinkToFit' arg'1')

eventTouchVector_swap :: (EventTouchVectorPtr arg'1, EventTouchVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventTouchVector_swap arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toEventTouchVector arg'2) $ \arg'2' ->
  (eventTouchVector_swap' arg'1' arg'2')

eventTouchVector_ASSIGN :: (EventTouchVectorPtr arg'1, EventTouchVectorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO EventTouchVector
eventTouchVector_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVector arg'1) $ \arg'1' ->
  withEventTouchVectorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap EventTouchVector
  (eventTouchVector_ASSIGN' arg'1' arg'2')

data EventTouchVectorConst =
    EventTouchVectorConst (HoppyF.Ptr EventTouchVectorConst)
  | EventTouchVectorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVectorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVectorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVectorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorToConst :: EventTouchVector -> EventTouchVectorConst
castEventTouchVectorToConst (EventTouchVector ptr') = EventTouchVectorConst $ HoppyF.castPtr ptr'
castEventTouchVectorToConst (EventTouchVectorGc fptr' ptr') = EventTouchVectorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVectorConst where
  nullptr = EventTouchVectorConst HoppyF.nullPtr
  
  withCppPtr (EventTouchVectorConst ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVectorConst ptr') = ptr'
  toPtr (EventTouchVectorConstGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVectorConst _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVectorConst where
  delete (EventTouchVectorConst ptr') = delete'EventTouchVector ptr'
  delete (EventTouchVectorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVectorConst", " object."]
  
  toGc this'@(EventTouchVectorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorConstGc {}) = HoppyP.return this'

instance EventTouchVectorConstPtr EventTouchVectorConst where
  toEventTouchVectorConst = HoppyP.id

data EventTouchVector =
    EventTouchVector (HoppyF.Ptr EventTouchVector)
  | EventTouchVectorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVector)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVector where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVector where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorToNonconst :: EventTouchVectorConst -> EventTouchVector
castEventTouchVectorToNonconst (EventTouchVectorConst ptr') = EventTouchVector $ HoppyF.castPtr ptr'
castEventTouchVectorToNonconst (EventTouchVectorConstGc fptr' ptr') = EventTouchVectorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVector where
  nullptr = EventTouchVector HoppyF.nullPtr
  
  withCppPtr (EventTouchVector ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVector ptr') = ptr'
  toPtr (EventTouchVectorGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVector _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVector where
  delete (EventTouchVector ptr') = delete'EventTouchVector $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventTouchVectorConst)
  delete (EventTouchVectorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVector", " object."]
  
  toGc this'@(EventTouchVector ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVector :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorGc {}) = HoppyP.return this'

instance EventTouchVectorConstPtr EventTouchVector where
  toEventTouchVectorConst (EventTouchVector ptr') = EventTouchVectorConst $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorConst) ptr'
  toEventTouchVectorConst (EventTouchVectorGc fptr' ptr') = EventTouchVectorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVector -> HoppyF.Ptr EventTouchVectorConst) ptr'

instance EventTouchVectorPtr EventTouchVector where
  toEventTouchVector = HoppyP.id

eventTouchVector_new ::  HoppyP.IO EventTouchVector
eventTouchVector_new =
  HoppyP.fmap EventTouchVector
  (eventTouchVector_new')

eventTouchVector_newCopy :: (EventTouchVectorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVector
eventTouchVector_newCopy arg'1 =
  withEventTouchVectorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap EventTouchVector
  (eventTouchVector_newCopy' arg'1')

class EventTouchVectorSuper a where
  downToEventTouchVector :: a -> EventTouchVector


class EventTouchVectorSuperConst a where
  downToEventTouchVectorConst :: a -> EventTouchVectorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventTouchVector)) EventTouchVector where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance EventTouchVectorValue a => HoppyFHR.Assignable EventTouchVector a where
  assign x' y' = eventTouchVector_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventTouchVector)) EventTouchVector where
  decode = HoppyP.fmap EventTouchVector . HoppyF.peek

instance HoppyFHR.HasContents EventTouchVectorConst (EventTouch) where
  toContents this' = do
    size' <- eventTouchVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< eventTouchVector_atConst this') [0..size'-1]

instance HoppyFHR.HasContents EventTouchVector (EventTouch) where
  toContents this' = do
    size' <- eventTouchVector_size this'
    HoppyP.mapM (HoppyFHR.decode <=< eventTouchVector_at this') [0..size'-1]

instance HoppyFHR.FromContents EventTouchVector (EventTouch) where
  fromContents values' = do
    vector' <- eventTouchVector_new
    eventTouchVector_reserve vector' $ HoppyFHR.coerceIntegral $ HoppyP.length values'
    HoppyP.mapM_ (eventTouchVector_pushBack vector') values'
    HoppyP.return vector'

class EventTouchVectorConstIteratorValue a where
  withEventTouchVectorConstIteratorPtr :: a -> (EventTouchVectorConstIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventTouchVectorConstIteratorConstPtr a => EventTouchVectorConstIteratorValue a where
#else
instance EventTouchVectorConstIteratorConstPtr a => EventTouchVectorConstIteratorValue a where
#endif
  withEventTouchVectorConstIteratorPtr = HoppyP.flip ($) . toEventTouchVectorConstIteratorConst

class (HoppyFHR.CppPtr this) => EventTouchVectorConstIteratorConstPtr this where
  toEventTouchVectorConstIteratorConst :: this -> EventTouchVectorConstIteratorConst

eventTouchVectorConstIterator_deconst :: (EventTouchVectorConstIteratorValue arg'1, EventTouchVectorPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorConstIterator_deconst arg'1 arg'2 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toEventTouchVector arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorConstIterator_deconst' arg'1' arg'2')

eventTouchVectorConstIterator_getConst :: (EventTouchVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorConstIterator_getConst arg'1 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVectorConstIterator_getConst' arg'1')

eventTouchVectorConstIterator_EQ :: (EventTouchVectorConstIteratorValue arg'1, EventTouchVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
eventTouchVectorConstIterator_EQ arg'1 arg'2 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withEventTouchVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (eventTouchVectorConstIterator_EQ' arg'1' arg'2')

eventTouchVectorConstIterator_NE :: (EventTouchVectorConstIteratorValue arg'1, EventTouchVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
eventTouchVectorConstIterator_NE arg'1 arg'2 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withEventTouchVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (eventTouchVectorConstIterator_NE' arg'1' arg'2')

eventTouchVectorConstIterator_atConst :: (EventTouchVectorConstIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorConstIterator_atConst arg'1 arg'2 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVectorConstIterator_atConst' arg'1' arg'2')

class (EventTouchVectorConstIteratorConstPtr this) => EventTouchVectorConstIteratorPtr this where
  toEventTouchVectorConstIterator :: this -> EventTouchVectorConstIterator

eventTouchVectorConstIterator_ASSIGN :: (EventTouchVectorConstIteratorPtr arg'1, EventTouchVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  withEventTouchVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_ASSIGN' arg'1' arg'2')

eventTouchVectorConstIterator_next :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_next arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_next' arg'1')

eventTouchVectorConstIterator_prev :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_prev' arg'1')

eventTouchVectorConstIterator_plus :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_plus' arg'1' arg'2')

eventTouchVectorConstIterator_add :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_add' arg'1' arg'2')

eventTouchVectorConstIterator_minus :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_minus' arg'1' arg'2')

eventTouchVectorConstIterator_difference :: (EventTouchVectorConstIteratorPtr arg'1, EventTouchVectorConstIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
eventTouchVectorConstIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  withEventTouchVectorConstIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (eventTouchVectorConstIterator_difference' arg'1' arg'2')

eventTouchVectorConstIterator_subtract :: (EventTouchVectorConstIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorConstIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_subtract' arg'1' arg'2')

data EventTouchVectorConstIteratorConst =
    EventTouchVectorConstIteratorConst (HoppyF.Ptr EventTouchVectorConstIteratorConst)
  | EventTouchVectorConstIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVectorConstIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVectorConstIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVectorConstIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorConstIteratorToConst :: EventTouchVectorConstIterator -> EventTouchVectorConstIteratorConst
castEventTouchVectorConstIteratorToConst (EventTouchVectorConstIterator ptr') = EventTouchVectorConstIteratorConst $ HoppyF.castPtr ptr'
castEventTouchVectorConstIteratorToConst (EventTouchVectorConstIteratorGc fptr' ptr') = EventTouchVectorConstIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVectorConstIteratorConst where
  nullptr = EventTouchVectorConstIteratorConst HoppyF.nullPtr
  
  withCppPtr (EventTouchVectorConstIteratorConst ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorConstIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVectorConstIteratorConst ptr') = ptr'
  toPtr (EventTouchVectorConstIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVectorConstIteratorConst _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorConstIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVectorConstIteratorConst where
  delete (EventTouchVectorConstIteratorConst ptr') = delete'EventTouchVectorConstIterator ptr'
  delete (EventTouchVectorConstIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVectorConstIteratorConst", " object."]
  
  toGc this'@(EventTouchVectorConstIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorConstIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorConstIteratorConstGc {}) = HoppyP.return this'

instance EventTouchVectorConstIteratorConstPtr EventTouchVectorConstIteratorConst where
  toEventTouchVectorConstIteratorConst = HoppyP.id

data EventTouchVectorConstIterator =
    EventTouchVectorConstIterator (HoppyF.Ptr EventTouchVectorConstIterator)
  | EventTouchVectorConstIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVectorConstIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVectorConstIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVectorConstIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorConstIteratorToNonconst :: EventTouchVectorConstIteratorConst -> EventTouchVectorConstIterator
castEventTouchVectorConstIteratorToNonconst (EventTouchVectorConstIteratorConst ptr') = EventTouchVectorConstIterator $ HoppyF.castPtr ptr'
castEventTouchVectorConstIteratorToNonconst (EventTouchVectorConstIteratorConstGc fptr' ptr') = EventTouchVectorConstIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVectorConstIterator where
  nullptr = EventTouchVectorConstIterator HoppyF.nullPtr
  
  withCppPtr (EventTouchVectorConstIterator ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorConstIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVectorConstIterator ptr') = ptr'
  toPtr (EventTouchVectorConstIteratorGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVectorConstIterator _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorConstIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVectorConstIterator where
  delete (EventTouchVectorConstIterator ptr') = delete'EventTouchVectorConstIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventTouchVectorConstIteratorConst)
  delete (EventTouchVectorConstIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVectorConstIterator", " object."]
  
  toGc this'@(EventTouchVectorConstIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorConstIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVectorConstIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorConstIteratorGc {}) = HoppyP.return this'

instance EventTouchVectorConstIteratorConstPtr EventTouchVectorConstIterator where
  toEventTouchVectorConstIteratorConst (EventTouchVectorConstIterator ptr') = EventTouchVectorConstIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVectorConstIterator -> HoppyF.Ptr EventTouchVectorConstIteratorConst) ptr'
  toEventTouchVectorConstIteratorConst (EventTouchVectorConstIteratorGc fptr' ptr') = EventTouchVectorConstIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVectorConstIterator -> HoppyF.Ptr EventTouchVectorConstIteratorConst) ptr'

instance EventTouchVectorConstIteratorPtr EventTouchVectorConstIterator where
  toEventTouchVectorConstIterator = HoppyP.id

eventTouchVectorConstIterator_newFromNonconst :: (EventTouchVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_newFromNonconst arg'1 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_newFromNonconst' arg'1')

eventTouchVectorConstIterator_new ::  HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_new =
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_new')

eventTouchVectorConstIterator_newCopy :: (EventTouchVectorConstIteratorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVectorConstIterator
eventTouchVectorConstIterator_newCopy arg'1 =
  withEventTouchVectorConstIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap EventTouchVectorConstIterator
  (eventTouchVectorConstIterator_newCopy' arg'1')

class EventTouchVectorConstIteratorSuper a where
  downToEventTouchVectorConstIterator :: a -> EventTouchVectorConstIterator


class EventTouchVectorConstIteratorSuperConst a where
  downToEventTouchVectorConstIteratorConst :: a -> EventTouchVectorConstIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventTouchVectorConstIterator)) EventTouchVectorConstIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance EventTouchVectorConstIteratorValue a => HoppyFHR.Assignable EventTouchVectorConstIterator a where
  assign x' y' = eventTouchVectorConstIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventTouchVectorConstIterator)) EventTouchVectorConstIterator where
  decode = HoppyP.fmap EventTouchVectorConstIterator . HoppyF.peek

class EventTouchVectorIteratorValue a where
  withEventTouchVectorIteratorPtr :: a -> (EventTouchVectorIteratorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} EventTouchVectorIteratorConstPtr a => EventTouchVectorIteratorValue a where
#else
instance EventTouchVectorIteratorConstPtr a => EventTouchVectorIteratorValue a where
#endif
  withEventTouchVectorIteratorPtr = HoppyP.flip ($) . toEventTouchVectorIteratorConst

class (HoppyFHR.CppPtr this) => EventTouchVectorIteratorConstPtr this where
  toEventTouchVectorIteratorConst :: this -> EventTouchVectorIteratorConst

eventTouchVectorIterator_getConst :: (EventTouchVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorIterator_getConst arg'1 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (eventTouchVectorIterator_getConst' arg'1')

eventTouchVectorIterator_EQ :: (EventTouchVectorIteratorValue arg'1, EventTouchVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
eventTouchVectorIterator_EQ arg'1 arg'2 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (eventTouchVectorIterator_EQ' arg'1' arg'2')

eventTouchVectorIterator_NE :: (EventTouchVectorIteratorValue arg'1, EventTouchVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
eventTouchVectorIterator_NE arg'1 arg'2 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (eventTouchVectorIterator_NE' arg'1' arg'2')

eventTouchVectorIterator_atConst :: (EventTouchVectorIteratorValue arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorIterator_atConst arg'1 arg'2 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVectorIterator_atConst' arg'1' arg'2')

class (EventTouchVectorIteratorConstPtr this) => EventTouchVectorIteratorPtr this where
  toEventTouchVectorIterator :: this -> EventTouchVectorIterator

eventTouchVectorIterator_get :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorIterator_get arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  (eventTouchVectorIterator_get' arg'1')

eventTouchVectorIterator_put :: (EventTouchVectorIteratorPtr arg'1, EventTouchPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
eventTouchVectorIterator_put arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toEventTouch arg'2) $ \arg'2' ->
  (eventTouchVectorIterator_put' arg'1' arg'2')

eventTouchVectorIterator_ASSIGN :: (EventTouchVectorIteratorPtr arg'1, EventTouchVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_ASSIGN' arg'1' arg'2')

eventTouchVectorIterator_next :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_next arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_next' arg'1')

eventTouchVectorIterator_prev :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_prev arg'1 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_prev' arg'1')

eventTouchVectorIterator_plus :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_plus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_plus' arg'1' arg'2')

eventTouchVectorIterator_add :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_add arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_add' arg'1' arg'2')

eventTouchVectorIterator_minus :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_minus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyFHR.toGc =<<
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_minus' arg'1' arg'2')

eventTouchVectorIterator_difference :: (EventTouchVectorIteratorPtr arg'1, EventTouchVectorIteratorValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyFC.CPtrdiff
eventTouchVectorIterator_difference arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  withEventTouchVectorIteratorPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (eventTouchVectorIterator_difference' arg'1' arg'2')

eventTouchVectorIterator_subtract :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_subtract arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_subtract' arg'1' arg'2')

eventTouchVectorIterator_at :: (EventTouchVectorIteratorPtr arg'1) => arg'1 -> HoppyFC.CPtrdiff -> HoppyP.IO (HoppyF.Ptr (HoppyF.Ptr EventTouch))
eventTouchVectorIterator_at arg'1 arg'2 =
  HoppyFHR.withCppPtr (toEventTouchVectorIterator arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (eventTouchVectorIterator_at' arg'1' arg'2')

data EventTouchVectorIteratorConst =
    EventTouchVectorIteratorConst (HoppyF.Ptr EventTouchVectorIteratorConst)
  | EventTouchVectorIteratorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVectorIteratorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVectorIteratorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVectorIteratorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorIteratorToConst :: EventTouchVectorIterator -> EventTouchVectorIteratorConst
castEventTouchVectorIteratorToConst (EventTouchVectorIterator ptr') = EventTouchVectorIteratorConst $ HoppyF.castPtr ptr'
castEventTouchVectorIteratorToConst (EventTouchVectorIteratorGc fptr' ptr') = EventTouchVectorIteratorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVectorIteratorConst where
  nullptr = EventTouchVectorIteratorConst HoppyF.nullPtr
  
  withCppPtr (EventTouchVectorIteratorConst ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorIteratorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVectorIteratorConst ptr') = ptr'
  toPtr (EventTouchVectorIteratorConstGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVectorIteratorConst _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorIteratorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVectorIteratorConst where
  delete (EventTouchVectorIteratorConst ptr') = delete'EventTouchVectorIterator ptr'
  delete (EventTouchVectorIteratorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVectorIteratorConst", " object."]
  
  toGc this'@(EventTouchVectorIteratorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorIteratorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorIteratorConstGc {}) = HoppyP.return this'

instance EventTouchVectorIteratorConstPtr EventTouchVectorIteratorConst where
  toEventTouchVectorIteratorConst = HoppyP.id

data EventTouchVectorIterator =
    EventTouchVectorIterator (HoppyF.Ptr EventTouchVectorIterator)
  | EventTouchVectorIteratorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr EventTouchVectorIterator)
  deriving (HoppyP.Show)

instance HoppyP.Eq EventTouchVectorIterator where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord EventTouchVectorIterator where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castEventTouchVectorIteratorToNonconst :: EventTouchVectorIteratorConst -> EventTouchVectorIterator
castEventTouchVectorIteratorToNonconst (EventTouchVectorIteratorConst ptr') = EventTouchVectorIterator $ HoppyF.castPtr ptr'
castEventTouchVectorIteratorToNonconst (EventTouchVectorIteratorConstGc fptr' ptr') = EventTouchVectorIteratorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr EventTouchVectorIterator where
  nullptr = EventTouchVectorIterator HoppyF.nullPtr
  
  withCppPtr (EventTouchVectorIterator ptr') f' = f' ptr'
  withCppPtr (EventTouchVectorIteratorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (EventTouchVectorIterator ptr') = ptr'
  toPtr (EventTouchVectorIteratorGc _ ptr') = ptr'
  
  touchCppPtr (EventTouchVectorIterator _) = HoppyP.return ()
  touchCppPtr (EventTouchVectorIteratorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable EventTouchVectorIterator where
  delete (EventTouchVectorIterator ptr') = delete'EventTouchVectorIterator $ (HoppyF.castPtr ptr' :: HoppyF.Ptr EventTouchVectorIteratorConst)
  delete (EventTouchVectorIteratorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "EventTouchVectorIterator", " object."]
  
  toGc this'@(EventTouchVectorIterator ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip EventTouchVectorIteratorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'EventTouchVectorIterator :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(EventTouchVectorIteratorGc {}) = HoppyP.return this'

instance EventTouchVectorIteratorConstPtr EventTouchVectorIterator where
  toEventTouchVectorIteratorConst (EventTouchVectorIterator ptr') = EventTouchVectorIteratorConst $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVectorIterator -> HoppyF.Ptr EventTouchVectorIteratorConst) ptr'
  toEventTouchVectorIteratorConst (EventTouchVectorIteratorGc fptr' ptr') = EventTouchVectorIteratorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr EventTouchVectorIterator -> HoppyF.Ptr EventTouchVectorIteratorConst) ptr'

instance EventTouchVectorIteratorPtr EventTouchVectorIterator where
  toEventTouchVectorIterator = HoppyP.id

eventTouchVectorIterator_new ::  HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_new =
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_new')

eventTouchVectorIterator_newCopy :: (EventTouchVectorIteratorValue arg'1) => arg'1 -> HoppyP.IO EventTouchVectorIterator
eventTouchVectorIterator_newCopy arg'1 =
  withEventTouchVectorIteratorPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap EventTouchVectorIterator
  (eventTouchVectorIterator_newCopy' arg'1')

class EventTouchVectorIteratorSuper a where
  downToEventTouchVectorIterator :: a -> EventTouchVectorIterator


class EventTouchVectorIteratorSuperConst a where
  downToEventTouchVectorIteratorConst :: a -> EventTouchVectorIteratorConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr EventTouchVectorIterator)) EventTouchVectorIterator where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance EventTouchVectorIteratorValue a => HoppyFHR.Assignable EventTouchVectorIterator a where
  assign x' y' = eventTouchVectorIterator_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr EventTouchVectorIterator)) EventTouchVectorIterator where
  decode = HoppyP.fmap EventTouchVectorIterator . HoppyF.peek

eventTouchesCallback_newFunPtr :: (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventTouchesCallback_newFunPtr f'hs = eventTouchesCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = EventTouchVectorConst arg'1 in
  let arg'2' = Event arg'2 in
  (f'hs arg'1' arg'2')

eventTouchesCallback_new :: (EventTouchVectorConst -> Event -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr EventTouchVectorConst -> HoppyF.Ptr Event -> HoppyP.IO ()))
eventTouchesCallback_new f'hs = do
  f'p <- eventTouchesCallback_newFunPtr f'hs
  eventTouchesCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

data KeyCode =
  KeyCode_None
  | KeyCode_Pause
  | KeyCode_ScrollLock
  | KeyCode_Print
  | KeyCode_Sysreq
  | KeyCode_Break
  | KeyCode_Escape
  | KeyCode_Back
  | KeyCode_Backspace
  | KeyCode_Tab
  | KeyCode_BackTab
  | KeyCode_Return
  | KeyCode_CapsLock
  | KeyCode_Shift
  | KeyCode_LeftShift
  | KeyCode_RightShift
  | KeyCode_Ctrl
  | KeyCode_LeftCtrl
  | KeyCode_RightCtrl
  | KeyCode_Alt
  | KeyCode_LeftAlt
  | KeyCode_RightAlt
  | KeyCode_Menu
  | KeyCode_Hyper
  | KeyCode_Insert
  | KeyCode_Home
  | KeyCode_PgUp
  | KeyCode_Delete
  | KeyCode_End
  | KeyCode_PgDown
  | KeyCode_LeftArrow
  | KeyCode_RightArrow
  | KeyCode_UpArrow
  | KeyCode_DownArrow
  | KeyCode_NumLock
  | KeyCode_KpPlus
  | KeyCode_KpMinus
  | KeyCode_KpMultiply
  | KeyCode_KpDivide
  | KeyCode_KpEnter
  | KeyCode_KpHome
  | KeyCode_KpUp
  | KeyCode_KpPgUp
  | KeyCode_KpLeft
  | KeyCode_KpFive
  | KeyCode_KpRight
  | KeyCode_KpEnd
  | KeyCode_KpDown
  | KeyCode_KpPgDown
  | KeyCode_KpInsert
  | KeyCode_KpDelete
  | KeyCode_F1
  | KeyCode_F2
  | KeyCode_F3
  | KeyCode_F4
  | KeyCode_F5
  | KeyCode_F6
  | KeyCode_F7
  | KeyCode_F8
  | KeyCode_F9
  | KeyCode_F10
  | KeyCode_F11
  | KeyCode_F12
  | KeyCode_Space
  | KeyCode_Exclam
  | KeyCode_Quote
  | KeyCode_Number
  | KeyCode_Dollar
  | KeyCode_Percent
  | KeyCode_Circumflex
  | KeyCode_Ampersand
  | KeyCode_Apostrophe
  | KeyCode_LeftParenthesis
  | KeyCode_RightParenthesis
  | KeyCode_Asterisk
  | KeyCode_Plus
  | KeyCode_Comma
  | KeyCode_Minus
  | KeyCode_Period
  | KeyCode_Slash
  | KeyCode_0
  | KeyCode_1
  | KeyCode_2
  | KeyCode_3
  | KeyCode_4
  | KeyCode_5
  | KeyCode_6
  | KeyCode_7
  | KeyCode_8
  | KeyCode_9
  | KeyCode_Colon
  | KeyCode_Semicolon
  | KeyCode_LessThan
  | KeyCode_Equal
  | KeyCode_GreaterThan
  | KeyCode_Question
  | KeyCode_At
  | KeyCode_CapitalA
  | KeyCode_CapitalB
  | KeyCode_CapitalC
  | KeyCode_CapitalD
  | KeyCode_CapitalE
  | KeyCode_CapitalF
  | KeyCode_CapitalG
  | KeyCode_CapitalH
  | KeyCode_CapitalI
  | KeyCode_CapitalJ
  | KeyCode_CapitalK
  | KeyCode_CapitalL
  | KeyCode_CapitalM
  | KeyCode_CapitalN
  | KeyCode_CapitalO
  | KeyCode_CapitalP
  | KeyCode_CapitalQ
  | KeyCode_CapitalR
  | KeyCode_CapitalS
  | KeyCode_CapitalT
  | KeyCode_CapitalU
  | KeyCode_CapitalV
  | KeyCode_CapitalW
  | KeyCode_CapitalX
  | KeyCode_CapitalY
  | KeyCode_CapitalZ
  | KeyCode_LeftBracket
  | KeyCode_BackSlash
  | KeyCode_RightBracket
  | KeyCode_Underscore
  | KeyCode_Grave
  | KeyCode_A
  | KeyCode_B
  | KeyCode_C
  | KeyCode_D
  | KeyCode_E
  | KeyCode_F
  | KeyCode_G
  | KeyCode_H
  | KeyCode_I
  | KeyCode_J
  | KeyCode_K
  | KeyCode_L
  | KeyCode_M
  | KeyCode_N
  | KeyCode_O
  | KeyCode_P
  | KeyCode_Q
  | KeyCode_R
  | KeyCode_S
  | KeyCode_T
  | KeyCode_U
  | KeyCode_V
  | KeyCode_W
  | KeyCode_X
  | KeyCode_Y
  | KeyCode_Z
  | KeyCode_LeftBrace
  | KeyCode_Bar
  | KeyCode_RightBrace
  | KeyCode_Tilde
  | KeyCode_Euro
  | KeyCode_Pound
  | KeyCode_Yen
  | KeyCode_MiddleDot
  | KeyCode_Search
  | KeyCode_DpadLeft
  | KeyCode_DpadRight
  | KeyCode_DpadUp
  | KeyCode_DpadDown
  | KeyCode_DpadCenter
  | KeyCode_Enter
  | KeyCode_Play
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum KeyCode where
  fromEnum KeyCode_None = 0
  fromEnum KeyCode_Pause = 1
  fromEnum KeyCode_ScrollLock = 2
  fromEnum KeyCode_Print = 3
  fromEnum KeyCode_Sysreq = 4
  fromEnum KeyCode_Break = 5
  fromEnum KeyCode_Escape = 6
  fromEnum KeyCode_Back = 6
  fromEnum KeyCode_Backspace = 7
  fromEnum KeyCode_Tab = 8
  fromEnum KeyCode_BackTab = 9
  fromEnum KeyCode_Return = 10
  fromEnum KeyCode_CapsLock = 11
  fromEnum KeyCode_Shift = 12
  fromEnum KeyCode_LeftShift = 12
  fromEnum KeyCode_RightShift = 13
  fromEnum KeyCode_Ctrl = 14
  fromEnum KeyCode_LeftCtrl = 14
  fromEnum KeyCode_RightCtrl = 15
  fromEnum KeyCode_Alt = 16
  fromEnum KeyCode_LeftAlt = 16
  fromEnum KeyCode_RightAlt = 17
  fromEnum KeyCode_Menu = 18
  fromEnum KeyCode_Hyper = 19
  fromEnum KeyCode_Insert = 20
  fromEnum KeyCode_Home = 21
  fromEnum KeyCode_PgUp = 22
  fromEnum KeyCode_Delete = 23
  fromEnum KeyCode_End = 24
  fromEnum KeyCode_PgDown = 25
  fromEnum KeyCode_LeftArrow = 26
  fromEnum KeyCode_RightArrow = 27
  fromEnum KeyCode_UpArrow = 28
  fromEnum KeyCode_DownArrow = 29
  fromEnum KeyCode_NumLock = 30
  fromEnum KeyCode_KpPlus = 31
  fromEnum KeyCode_KpMinus = 32
  fromEnum KeyCode_KpMultiply = 33
  fromEnum KeyCode_KpDivide = 34
  fromEnum KeyCode_KpEnter = 35
  fromEnum KeyCode_KpHome = 36
  fromEnum KeyCode_KpUp = 37
  fromEnum KeyCode_KpPgUp = 38
  fromEnum KeyCode_KpLeft = 39
  fromEnum KeyCode_KpFive = 40
  fromEnum KeyCode_KpRight = 41
  fromEnum KeyCode_KpEnd = 42
  fromEnum KeyCode_KpDown = 43
  fromEnum KeyCode_KpPgDown = 44
  fromEnum KeyCode_KpInsert = 45
  fromEnum KeyCode_KpDelete = 46
  fromEnum KeyCode_F1 = 47
  fromEnum KeyCode_F2 = 48
  fromEnum KeyCode_F3 = 49
  fromEnum KeyCode_F4 = 50
  fromEnum KeyCode_F5 = 51
  fromEnum KeyCode_F6 = 52
  fromEnum KeyCode_F7 = 53
  fromEnum KeyCode_F8 = 54
  fromEnum KeyCode_F9 = 55
  fromEnum KeyCode_F10 = 56
  fromEnum KeyCode_F11 = 57
  fromEnum KeyCode_F12 = 58
  fromEnum KeyCode_Space = 59
  fromEnum KeyCode_Exclam = 60
  fromEnum KeyCode_Quote = 61
  fromEnum KeyCode_Number = 62
  fromEnum KeyCode_Dollar = 63
  fromEnum KeyCode_Percent = 64
  fromEnum KeyCode_Circumflex = 65
  fromEnum KeyCode_Ampersand = 66
  fromEnum KeyCode_Apostrophe = 67
  fromEnum KeyCode_LeftParenthesis = 68
  fromEnum KeyCode_RightParenthesis = 69
  fromEnum KeyCode_Asterisk = 70
  fromEnum KeyCode_Plus = 71
  fromEnum KeyCode_Comma = 72
  fromEnum KeyCode_Minus = 73
  fromEnum KeyCode_Period = 74
  fromEnum KeyCode_Slash = 75
  fromEnum KeyCode_0 = 76
  fromEnum KeyCode_1 = 77
  fromEnum KeyCode_2 = 78
  fromEnum KeyCode_3 = 79
  fromEnum KeyCode_4 = 80
  fromEnum KeyCode_5 = 81
  fromEnum KeyCode_6 = 82
  fromEnum KeyCode_7 = 83
  fromEnum KeyCode_8 = 84
  fromEnum KeyCode_9 = 85
  fromEnum KeyCode_Colon = 86
  fromEnum KeyCode_Semicolon = 87
  fromEnum KeyCode_LessThan = 88
  fromEnum KeyCode_Equal = 89
  fromEnum KeyCode_GreaterThan = 90
  fromEnum KeyCode_Question = 91
  fromEnum KeyCode_At = 92
  fromEnum KeyCode_CapitalA = 93
  fromEnum KeyCode_CapitalB = 94
  fromEnum KeyCode_CapitalC = 95
  fromEnum KeyCode_CapitalD = 96
  fromEnum KeyCode_CapitalE = 97
  fromEnum KeyCode_CapitalF = 98
  fromEnum KeyCode_CapitalG = 99
  fromEnum KeyCode_CapitalH = 100
  fromEnum KeyCode_CapitalI = 101
  fromEnum KeyCode_CapitalJ = 102
  fromEnum KeyCode_CapitalK = 103
  fromEnum KeyCode_CapitalL = 104
  fromEnum KeyCode_CapitalM = 105
  fromEnum KeyCode_CapitalN = 106
  fromEnum KeyCode_CapitalO = 107
  fromEnum KeyCode_CapitalP = 108
  fromEnum KeyCode_CapitalQ = 109
  fromEnum KeyCode_CapitalR = 110
  fromEnum KeyCode_CapitalS = 111
  fromEnum KeyCode_CapitalT = 112
  fromEnum KeyCode_CapitalU = 113
  fromEnum KeyCode_CapitalV = 114
  fromEnum KeyCode_CapitalW = 115
  fromEnum KeyCode_CapitalX = 116
  fromEnum KeyCode_CapitalY = 117
  fromEnum KeyCode_CapitalZ = 118
  fromEnum KeyCode_LeftBracket = 119
  fromEnum KeyCode_BackSlash = 120
  fromEnum KeyCode_RightBracket = 121
  fromEnum KeyCode_Underscore = 122
  fromEnum KeyCode_Grave = 123
  fromEnum KeyCode_A = 124
  fromEnum KeyCode_B = 125
  fromEnum KeyCode_C = 126
  fromEnum KeyCode_D = 127
  fromEnum KeyCode_E = 128
  fromEnum KeyCode_F = 129
  fromEnum KeyCode_G = 130
  fromEnum KeyCode_H = 131
  fromEnum KeyCode_I = 132
  fromEnum KeyCode_J = 133
  fromEnum KeyCode_K = 134
  fromEnum KeyCode_L = 135
  fromEnum KeyCode_M = 136
  fromEnum KeyCode_N = 137
  fromEnum KeyCode_O = 138
  fromEnum KeyCode_P = 139
  fromEnum KeyCode_Q = 140
  fromEnum KeyCode_R = 141
  fromEnum KeyCode_S = 142
  fromEnum KeyCode_T = 143
  fromEnum KeyCode_U = 144
  fromEnum KeyCode_V = 145
  fromEnum KeyCode_W = 146
  fromEnum KeyCode_X = 147
  fromEnum KeyCode_Y = 148
  fromEnum KeyCode_Z = 149
  fromEnum KeyCode_LeftBrace = 150
  fromEnum KeyCode_Bar = 151
  fromEnum KeyCode_RightBrace = 152
  fromEnum KeyCode_Tilde = 153
  fromEnum KeyCode_Euro = 154
  fromEnum KeyCode_Pound = 155
  fromEnum KeyCode_Yen = 156
  fromEnum KeyCode_MiddleDot = 157
  fromEnum KeyCode_Search = 158
  fromEnum KeyCode_DpadLeft = 159
  fromEnum KeyCode_DpadRight = 160
  fromEnum KeyCode_DpadUp = 161
  fromEnum KeyCode_DpadDown = 162
  fromEnum KeyCode_DpadCenter = 163
  fromEnum KeyCode_Enter = 164
  fromEnum KeyCode_Play = 165
  
  toEnum (0) = KeyCode_None
  toEnum (1) = KeyCode_Pause
  toEnum (2) = KeyCode_ScrollLock
  toEnum (3) = KeyCode_Print
  toEnum (4) = KeyCode_Sysreq
  toEnum (5) = KeyCode_Break
  toEnum (6) = KeyCode_Escape
  toEnum (6) = KeyCode_Back
  toEnum (7) = KeyCode_Backspace
  toEnum (8) = KeyCode_Tab
  toEnum (9) = KeyCode_BackTab
  toEnum (10) = KeyCode_Return
  toEnum (11) = KeyCode_CapsLock
  toEnum (12) = KeyCode_Shift
  toEnum (12) = KeyCode_LeftShift
  toEnum (13) = KeyCode_RightShift
  toEnum (14) = KeyCode_Ctrl
  toEnum (14) = KeyCode_LeftCtrl
  toEnum (15) = KeyCode_RightCtrl
  toEnum (16) = KeyCode_Alt
  toEnum (16) = KeyCode_LeftAlt
  toEnum (17) = KeyCode_RightAlt
  toEnum (18) = KeyCode_Menu
  toEnum (19) = KeyCode_Hyper
  toEnum (20) = KeyCode_Insert
  toEnum (21) = KeyCode_Home
  toEnum (22) = KeyCode_PgUp
  toEnum (23) = KeyCode_Delete
  toEnum (24) = KeyCode_End
  toEnum (25) = KeyCode_PgDown
  toEnum (26) = KeyCode_LeftArrow
  toEnum (27) = KeyCode_RightArrow
  toEnum (28) = KeyCode_UpArrow
  toEnum (29) = KeyCode_DownArrow
  toEnum (30) = KeyCode_NumLock
  toEnum (31) = KeyCode_KpPlus
  toEnum (32) = KeyCode_KpMinus
  toEnum (33) = KeyCode_KpMultiply
  toEnum (34) = KeyCode_KpDivide
  toEnum (35) = KeyCode_KpEnter
  toEnum (36) = KeyCode_KpHome
  toEnum (37) = KeyCode_KpUp
  toEnum (38) = KeyCode_KpPgUp
  toEnum (39) = KeyCode_KpLeft
  toEnum (40) = KeyCode_KpFive
  toEnum (41) = KeyCode_KpRight
  toEnum (42) = KeyCode_KpEnd
  toEnum (43) = KeyCode_KpDown
  toEnum (44) = KeyCode_KpPgDown
  toEnum (45) = KeyCode_KpInsert
  toEnum (46) = KeyCode_KpDelete
  toEnum (47) = KeyCode_F1
  toEnum (48) = KeyCode_F2
  toEnum (49) = KeyCode_F3
  toEnum (50) = KeyCode_F4
  toEnum (51) = KeyCode_F5
  toEnum (52) = KeyCode_F6
  toEnum (53) = KeyCode_F7
  toEnum (54) = KeyCode_F8
  toEnum (55) = KeyCode_F9
  toEnum (56) = KeyCode_F10
  toEnum (57) = KeyCode_F11
  toEnum (58) = KeyCode_F12
  toEnum (59) = KeyCode_Space
  toEnum (60) = KeyCode_Exclam
  toEnum (61) = KeyCode_Quote
  toEnum (62) = KeyCode_Number
  toEnum (63) = KeyCode_Dollar
  toEnum (64) = KeyCode_Percent
  toEnum (65) = KeyCode_Circumflex
  toEnum (66) = KeyCode_Ampersand
  toEnum (67) = KeyCode_Apostrophe
  toEnum (68) = KeyCode_LeftParenthesis
  toEnum (69) = KeyCode_RightParenthesis
  toEnum (70) = KeyCode_Asterisk
  toEnum (71) = KeyCode_Plus
  toEnum (72) = KeyCode_Comma
  toEnum (73) = KeyCode_Minus
  toEnum (74) = KeyCode_Period
  toEnum (75) = KeyCode_Slash
  toEnum (76) = KeyCode_0
  toEnum (77) = KeyCode_1
  toEnum (78) = KeyCode_2
  toEnum (79) = KeyCode_3
  toEnum (80) = KeyCode_4
  toEnum (81) = KeyCode_5
  toEnum (82) = KeyCode_6
  toEnum (83) = KeyCode_7
  toEnum (84) = KeyCode_8
  toEnum (85) = KeyCode_9
  toEnum (86) = KeyCode_Colon
  toEnum (87) = KeyCode_Semicolon
  toEnum (88) = KeyCode_LessThan
  toEnum (89) = KeyCode_Equal
  toEnum (90) = KeyCode_GreaterThan
  toEnum (91) = KeyCode_Question
  toEnum (92) = KeyCode_At
  toEnum (93) = KeyCode_CapitalA
  toEnum (94) = KeyCode_CapitalB
  toEnum (95) = KeyCode_CapitalC
  toEnum (96) = KeyCode_CapitalD
  toEnum (97) = KeyCode_CapitalE
  toEnum (98) = KeyCode_CapitalF
  toEnum (99) = KeyCode_CapitalG
  toEnum (100) = KeyCode_CapitalH
  toEnum (101) = KeyCode_CapitalI
  toEnum (102) = KeyCode_CapitalJ
  toEnum (103) = KeyCode_CapitalK
  toEnum (104) = KeyCode_CapitalL
  toEnum (105) = KeyCode_CapitalM
  toEnum (106) = KeyCode_CapitalN
  toEnum (107) = KeyCode_CapitalO
  toEnum (108) = KeyCode_CapitalP
  toEnum (109) = KeyCode_CapitalQ
  toEnum (110) = KeyCode_CapitalR
  toEnum (111) = KeyCode_CapitalS
  toEnum (112) = KeyCode_CapitalT
  toEnum (113) = KeyCode_CapitalU
  toEnum (114) = KeyCode_CapitalV
  toEnum (115) = KeyCode_CapitalW
  toEnum (116) = KeyCode_CapitalX
  toEnum (117) = KeyCode_CapitalY
  toEnum (118) = KeyCode_CapitalZ
  toEnum (119) = KeyCode_LeftBracket
  toEnum (120) = KeyCode_BackSlash
  toEnum (121) = KeyCode_RightBracket
  toEnum (122) = KeyCode_Underscore
  toEnum (123) = KeyCode_Grave
  toEnum (124) = KeyCode_A
  toEnum (125) = KeyCode_B
  toEnum (126) = KeyCode_C
  toEnum (127) = KeyCode_D
  toEnum (128) = KeyCode_E
  toEnum (129) = KeyCode_F
  toEnum (130) = KeyCode_G
  toEnum (131) = KeyCode_H
  toEnum (132) = KeyCode_I
  toEnum (133) = KeyCode_J
  toEnum (134) = KeyCode_K
  toEnum (135) = KeyCode_L
  toEnum (136) = KeyCode_M
  toEnum (137) = KeyCode_N
  toEnum (138) = KeyCode_O
  toEnum (139) = KeyCode_P
  toEnum (140) = KeyCode_Q
  toEnum (141) = KeyCode_R
  toEnum (142) = KeyCode_S
  toEnum (143) = KeyCode_T
  toEnum (144) = KeyCode_U
  toEnum (145) = KeyCode_V
  toEnum (146) = KeyCode_W
  toEnum (147) = KeyCode_X
  toEnum (148) = KeyCode_Y
  toEnum (149) = KeyCode_Z
  toEnum (150) = KeyCode_LeftBrace
  toEnum (151) = KeyCode_Bar
  toEnum (152) = KeyCode_RightBrace
  toEnum (153) = KeyCode_Tilde
  toEnum (154) = KeyCode_Euro
  toEnum (155) = KeyCode_Pound
  toEnum (156) = KeyCode_Yen
  toEnum (157) = KeyCode_MiddleDot
  toEnum (158) = KeyCode_Search
  toEnum (159) = KeyCode_DpadLeft
  toEnum (160) = KeyCode_DpadRight
  toEnum (161) = KeyCode_DpadUp
  toEnum (162) = KeyCode_DpadDown
  toEnum (163) = KeyCode_DpadCenter
  toEnum (164) = KeyCode_Enter
  toEnum (165) = KeyCode_Play
  toEnum n' = HoppyP.error $ "Unknown KeyCode numeric value: " ++ HoppyP.show n'

data Type =
  Type_Unknown
  | Type_TouchOneByOne
  | Type_TouchAllAtOnce
  | Type_Keyboard
  | Type_Mouse
  | Type_Acceleration
  | Type_Focus
  | Type_GameController
  | Type_Custom
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum Type where
  fromEnum Type_Unknown = 0
  fromEnum Type_TouchOneByOne = 1
  fromEnum Type_TouchAllAtOnce = 2
  fromEnum Type_Keyboard = 3
  fromEnum Type_Mouse = 4
  fromEnum Type_Acceleration = 5
  fromEnum Type_Focus = 6
  fromEnum Type_GameController = 7
  fromEnum Type_Custom = 8
  
  toEnum (0) = Type_Unknown
  toEnum (1) = Type_TouchOneByOne
  toEnum (2) = Type_TouchAllAtOnce
  toEnum (3) = Type_Keyboard
  toEnum (4) = Type_Mouse
  toEnum (5) = Type_Acceleration
  toEnum (6) = Type_Focus
  toEnum (7) = Type_GameController
  toEnum (8) = Type_Custom
  toEnum n' = HoppyP.error $ "Unknown Type numeric value: " ++ HoppyP.show n'