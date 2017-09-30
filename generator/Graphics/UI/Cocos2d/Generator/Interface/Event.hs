module Graphics.UI.Cocos2d.Generator.Interface.Event
    (
      mod_event
    , c_EventAcceleration
    -- , c_Controller
    -- , c_ControllerKeyStatus
    , c_Event
    , c_EventCustom
    , c_EventListener
    , c_EventListenerAcceleration
    -- , c_EventListenerController
    , c_EventListenerCustom
    , c_EventListenerFocus
    , c_EventListenerKeyboard
    , c_EventListenerMouse
    , c_EventListenerTouchAllAtOnce
    , c_EventListenerTouchOneByOne
    , c_EventMouse
    , c_EventTouch
    , cb_EventAccelerationCallback
    -- , cb_EventControllerCallback
    -- , cb_EventControllerWithKeyCodeCallback
    , cb_EventCustomCallback
    , cb_EventFocusCallback
    , cb_EventKeyboardCallback
    , cb_EventMouseCallback
    , cb_EventTouchBeganCallback
    , cb_EventTouchCallback
    , cb_EventTouchesCallback
    -- , e_ControllerEventType
    -- , e_ControllerKey
    , e_EventType
    , e_EventListenerType
    , e_KeyCode
    -- , vectorController
    , vectorEventTouch
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std (ValueConversion(..))
import Foreign.Hoppy.Generator.Std.String
import qualified Foreign.Hoppy.Generator.Std.Vector as V

import Graphics.UI.Cocos2d.Generator.Interface.Common
import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Widget

mod_event :: Module
mod_event =
  moduleModify' (makeModule "event" "Event.hpp" "Event.cpp") $
    moduleAddExports $
    [ ExportClass c_Event
    , ExportClass c_EventAcceleration
    -- , ExportClass c_Controller
    -- , ExportClass c_ControllerKeyStatus
    , ExportClass c_Event
    , ExportClass c_EventCustom
    , ExportClass c_EventListener
    , ExportClass c_EventListenerAcceleration
    -- , ExportClass c_EventListenerController
    , ExportClass c_EventListenerCustom
    , ExportClass c_EventListenerFocus
    , ExportClass c_EventListenerKeyboard
    , ExportClass c_EventListenerMouse
    , ExportClass c_EventListenerTouchAllAtOnce
    , ExportClass c_EventListenerTouchOneByOne
    , ExportClass c_EventMouse
    , ExportClass c_EventTouch
    , ExportCallback cb_EventAccelerationCallback
    -- , ExportCallback cb_EventControllerCallback
    -- , ExportCallback cb_EventControllerWithKeyCodeCallback
    , ExportCallback cb_EventCustomCallback
    , ExportCallback cb_EventFocusCallback
    , ExportCallback cb_EventKeyboardCallback
    , ExportCallback cb_EventMouseCallback
    , ExportCallback cb_EventTouchBeganCallback
    , ExportCallback cb_EventTouchCallback
    , ExportCallback cb_EventTouchesCallback
    -- , ExportEnum e_ControllerEventType
    -- , ExportEnum e_ControllerKey
    , ExportEnum e_EventType
    , ExportEnum e_EventListenerType
    , ExportEnum e_KeyCode
    ]
    -- ++
    -- V.toExports vectorController
    ++
    V.toExports vectorEventTouch

e_EventType :: CppEnum
e_EventType =
  makeEnum (ident2 "cocos2d" "Event" "Type") Nothing
    [ (0, ["touch"])
    , (1, ["keyboard"])
    , (2, ["acceleration"])
    , (3, ["mouse"])
    , (4, ["focus"])
    , (5, ["game", "controller"])
    , (6, ["game", "custom"])
    ]

e_EventListenerType :: CppEnum
e_EventListenerType =
  makeEnum (ident2 "cocos2d" "EventListener" "Type") Nothing
    [ (0, ["unknown"])
    , (1, ["touch", "one", "by", "one"])
    , (2, ["touch", "all", "at", "once"])
    , (3, ["keyboard"])
    , (4, ["mouse"])
    , (5, ["acceleration"])
    , (6, ["focus"])
    , (7, ["game", "controller"])
    , (8, ["custom"])
    ]

c_Event :: Class
c_Event =
  addReqIncludes [includeStd "base/CCEvent.h"] $
    makeClass (ident1 "cocos2d" "Event") Nothing [c_Ref]
      [ mkConstMethod "getType" [] $ enumT e_EventType
      , mkConstMethod "isStopped" [] boolT
      , mkMethod "stopPropagation" [] voidT
      , mkMethod "getCurrentTarget" [] $ ptrT $ objT c_Node
      ]

c_EventCustom :: Class
c_EventCustom =
  addReqIncludes [includeStd "base/CCEventCustom.h"] $
    makeClass (ident1 "cocos2d" "EventCustom") Nothing [c_Event]
      [ mkMethod "setUserData" [ptrT voidT] voidT
      , mkConstMethod "getUserData" [] $ ptrT voidT
      , mkConstMethod "getEventName" [] $ refT $ constT $ objT c_string
      ]

c_EventMouse :: Class
c_EventMouse =
  addReqIncludes [includeStd "base/CCEventMouse.h"] $
    makeClass (ident1 "cocos2d" "EventMouse") Nothing [c_Event]
      [
        -- mkMethod "setScrollData" [floatT, floatT] voidT
        mkConstMethod "getScrollX" [] floatT
      , mkConstMethod "getScrollY" [] floatT
      -- , mkMethod "setCursorPosition" [floatT, floatT] voidT
      -- , mkMethod "setMouseButton" [intT] voidT
      , mkConstMethod "getMouseButton" [] intT
      , mkConstMethod "getCursorX" [] floatT
      , mkConstMethod "getCursorY" [] floatT
      , mkConstMethod "getLocation" [] $ objT c_Vec2
      , mkConstMethod "getPreviousLocation" [] $ objT c_Vec2
      , mkConstMethod "getStartLocation" [] $ objT c_Vec2
      , mkConstMethod "getDelta" [] $ objT c_Vec2
      , mkConstMethod "getLocationInView" [] $ objT c_Vec2
      , mkConstMethod "getPreviousLocationInView" [] $ objT c_Vec2
      , mkConstMethod "getStartLocationInView" [] $ objT c_Vec2
      ]

-- e_ControllerEventType :: CppEnum
-- e_ControllerEventType =
--   makeEnum (ident2 "cocos2d" "EventController" "ControllerEventType") Nothing
--     [ (0, ["connection"])
--     , (1, ["button", "status", "changed"])
--     , (2, ["axis", "status", "changed"])
--     ]
--
-- e_ControllerKey :: CppEnum
-- e_ControllerKey =
--   makeEnum (ident2 "cocos2d" "Controller" "Key") (Just $ toExtName "ControllerKey")
--     [ (1000, ["joystick", "left", "x"])
--     , (1001, ["joystick", "left", "y"])
--     , (1002, ["joystick", "right", "x"])
--     , (1003, ["joystick", "right", "y"])
--     , (1004, ["button", "a"])
--     , (1005, ["button", "b"])
--     , (1006, ["button", "c"])
--     , (1007, ["button", "x"])
--     , (1008, ["button", "y"])
--     , (1009, ["button", "z"])
--     , (1010, ["button", "dpad", "up"])
--     , (1011, ["button", "dpad", "down"])
--     , (1012, ["button", "dpad", "left"])
--     , (1013, ["button", "dpad", "right"])
--     , (1014, ["button", "dpad", "center"])
--     , (1015, ["button", "left", "shoulder"])
--     , (1016, ["button", "right", "shoulder"])
--     , (1017, ["axis", "left", "trigger"])
--     , (1018, ["axis", "right", "trigger"])
--     , (1019, ["button", "left", "thumbstick"])
--     , (1020, ["button", "right", "thumbstick"])
--     , (1021, ["button", "start"])
--     , (1022, ["button", "select"])
--     , (1023, ["button", "pause"])
--     , (1024, ["key", "max"])
--     ]
--
-- c_ControllerKeyStatus :: Class
-- c_ControllerKeyStatus =
--   addReqIncludes [includeStd "base/CCController.h"] $
--     makeClass (ident2 "cocos2d" "Controller" "KeyStatus") (Just $ toExtName "ControllerKeyStatus") []
--       [ mkClassVariable "isPressed" boolT
--       , mkClassVariable "value" floatT
--       , mkClassVariable "isAnalog" boolT
--       ]

-- vectorController :: V.Contents
-- vectorController = V.instantiate "ControllerVector" (ptrT $ objT c_Controller) reqs
--   where
--     reqs = reqInclude $ includeStd "base/CCController.h"
--
-- c_Controller :: Class
-- c_Controller =
--   addReqIncludes [includeStd "base/CCController.h"] $
--     classSetDtorPrivate $
--       makeClass (ident1 "cocos2d" "Controller") Nothing []
--         [ mkStaticMethod "getAllController" [] $ refT $ constT $ objT $ V.c_vector vectorController
--         , mkStaticMethod "getControllerByTag" [intT] $ ptrT $ objT c_Controller
--         , mkStaticMethod "startDiscoveryController" [] voidT
--         , mkStaticMethod "stopDiscoveryController" [] voidT
--         , mkConstMethod "getDeviceName" [] $ refT $ constT $ objT c_string
--         , mkConstMethod "getDeviceId" [] intT
--         , mkConstMethod "isConnected" [] boolT
--         -- pass in keyCode
--         , mkMethod "getKeyStatus" [intT] $ refT $ constT $ objT c_ControllerKeyStatus
--         -- (externalKeyCode, receive)
--         , mkMethod "receiveExternalKeyEvent" [intT, boolT] voidT
--         , mkConstMethod "getTag" [] intT
--         , mkMethod "setTag" [intT] voidT
--         ]

e_KeyCode :: CppEnum
e_KeyCode =
  makeEnum (ident2 "cocos2d" "EventKeyboard" "KeyCode") Nothing
    [ (0,   ["none"])
    , (1,   ["pause"])
    , (2,   ["scroll", "lock"])
    , (3,   ["print"])
    , (4,   ["sysreq"])
    , (5,   ["break"])
    , (6,   ["escape"])
    , (6,   ["back"])
    , (7,   ["backspace"])
    , (8,   ["tab"])
    , (9,   ["back", "tab"])
    , (10,  ["return"])
    , (11,  ["caps", "lock"])
    , (12,  ["shift"])
    , (12,  ["left", "shift"])
    , (13,  ["right", "shift"])
    , (14,  ["ctrl"])
    , (14,  ["left", "ctrl"])
    , (15,  ["right", "ctrl"])
    , (16,  ["alt"])
    , (16,  ["left", "alt"])
    , (17,  ["right", "alt"])
    , (18,  ["menu"])
    , (19,  ["hyper"])
    , (20,  ["insert"])
    , (21,  ["home"])
    , (22,  ["pg", "up"])
    , (23,  ["delete"])
    , (24,  ["end"])
    , (25,  ["pg", "down"])
    , (26,  ["left", "arrow"])
    , (27,  ["right", "arrow"])
    , (28,  ["up", "arrow"])
    , (29,  ["down", "arrow"])
    , (30,  ["num", "lock"])
    , (31,  ["kp", "plus"])
    , (32,  ["kp", "minus"])
    , (33,  ["kp", "multiply"])
    , (34,  ["kp", "divide"])
    , (35,  ["kp", "enter"])
    , (36,  ["kp", "home"])
    , (37,  ["kp", "up"])
    , (38,  ["kp", "pg", "up"])
    , (39,  ["kp", "left"])
    , (40,  ["kp", "five"])
    , (41,  ["kp", "right"])
    , (42,  ["kp", "end"])
    , (43,  ["kp", "down"])
    , (44,  ["kp", "pg", "down"])
    , (45,  ["kp", "insert"])
    , (46,  ["kp", "delete"])
    , (47,  ["f1"])
    , (48,  ["f2"])
    , (49,  ["f3"])
    , (50,  ["f4"])
    , (51,  ["f5"])
    , (52,  ["f6"])
    , (53,  ["f7"])
    , (54,  ["f8"])
    , (55,  ["f9"])
    , (56,  ["f10"])
    , (57,  ["f11"])
    , (58,  ["f12"])
    , (59,  ["space"])
    , (60,  ["exclam"])
    , (61,  ["quote"])
    , (62,  ["number"])
    , (63,  ["dollar"])
    , (64,  ["percent"])
    , (65,  ["circumflex"])
    , (66,  ["ampersand"])
    , (67,  ["apostrophe"])
    , (68,  ["left", "parenthesis"])
    , (69,  ["right", "parenthesis"])
    , (70,  ["asterisk"])
    , (71,  ["plus"])
    , (72,  ["comma"])
    , (73,  ["minus"])
    , (74,  ["period"])
    , (75,  ["slash"])
    , (76,  ["0"])
    , (77,  ["1"])
    , (78,  ["2"])
    , (79,  ["3"])
    , (80,  ["4"])
    , (81,  ["5"])
    , (82,  ["6"])
    , (83,  ["7"])
    , (84,  ["8"])
    , (85,  ["9"])
    , (86,  ["colon"])
    , (87,  ["semicolon"])
    , (88,  ["less", "than"])
    , (89,  ["equal"])
    , (90,  ["greater", "than"])
    , (91,  ["question"])
    , (92,  ["at"])
    , (93,  ["capital", "a"])
    , (94,  ["capital", "b"])
    , (95,  ["capital", "c"])
    , (96,  ["capital", "d"])
    , (97,  ["capital", "e"])
    , (98,  ["capital", "f"])
    , (99,  ["capital", "g"])
    , (100, ["capital", "h"])
    , (101, ["capital", "i"])
    , (102, ["capital", "j"])
    , (103, ["capital", "k"])
    , (104, ["capital", "l"])
    , (105, ["capital", "m"])
    , (106, ["capital", "n"])
    , (107, ["capital", "o"])
    , (108, ["capital", "p"])
    , (109, ["capital", "q"])
    , (110, ["capital", "r"])
    , (111, ["capital", "s"])
    , (112, ["capital", "t"])
    , (113, ["capital", "u"])
    , (114, ["capital", "v"])
    , (115, ["capital", "w"])
    , (116, ["capital", "x"])
    , (117, ["capital", "y"])
    , (118, ["capital", "z"])
    , (119, ["left", "bracket"])
    , (120, ["back", "slash"])
    , (121, ["right", "bracket"])
    , (122, ["underscore"])
    , (123, ["grave"])
    , (124, ["a"])
    , (125, ["b"])
    , (126, ["c"])
    , (127, ["d"])
    , (128, ["e"])
    , (129, ["f"])
    , (130, ["g"])
    , (131, ["h"])
    , (132, ["i"])
    , (133, ["j"])
    , (134, ["k"])
    , (135, ["l"])
    , (136, ["m"])
    , (137, ["n"])
    , (138, ["o"])
    , (139, ["p"])
    , (140, ["q"])
    , (141, ["r"])
    , (142, ["s"])
    , (143, ["t"])
    , (144, ["u"])
    , (145, ["v"])
    , (146, ["w"])
    , (147, ["x"])
    , (148, ["y"])
    , (149, ["z"])
    , (150, ["left", "brace"])
    , (151, ["bar"])
    , (152, ["right", "brace"])
    , (153, ["tilde"])
    , (154, ["euro"])
    , (155, ["pound"])
    , (156, ["yen"])
    , (157, ["middle", "dot"])
    , (158, ["search"])
    , (159, ["dpad", "left"])
    , (160, ["dpad", "right"])
    , (161, ["dpad", "up"])
    , (162, ["dpad", "down"])
    , (163, ["dpad", "center"])
    , (164, ["enter"])
    , (165, ["play"])
    ]


------ Listeners

c_EventListener :: Class
c_EventListener =
  addReqIncludes [includeStd "base/CCEventListener.h"] $
    makeClass (ident1 "cocos2d" "EventListener") Nothing [c_Ref]
      [ mkMethod "checkAvailable" [] boolT
      , mkConstMethod "isEnabled" [] boolT
      , mkMethod "setEnabled" [boolT] voidT
      ]

cb_EventKeyboardCallback :: Callback
cb_EventKeyboardCallback =
  addReqIncludes [includeStd "base/CCEventKeyboard.h"] $
    makeCallback (toExtName "EventKeyboardCallback") [enumT e_KeyCode, ptrT $ objT c_Event] voidT

c_EventListenerKeyboard :: Class
c_EventListenerKeyboard =
  addReqIncludes [includeStd "base/CCEventListenerKeyboard.h"] $
    makeClass (ident1 "cocos2d" "EventListenerKeyboard") Nothing [c_EventListener]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerKeyboard
      , makeClassVariable "onKeyPressed" Nothing (callbackT cb_EventKeyboardCallback) Nonstatic False
      , makeClassVariable "onKeyReleased" Nothing (callbackT cb_EventKeyboardCallback) Nonstatic False
      ]

cb_EventCustomCallback :: Callback
cb_EventCustomCallback =
  makeCallback (toExtName "EventCustomCallback") [ptrT $ objT c_EventCustom] voidT

c_EventListenerCustom :: Class
c_EventListenerCustom =
  addReqIncludes [includeStd "base/CCEventListenerCustom.h"] $
    makeClass (ident1 "cocos2d" "EventListenerCustom") Nothing [c_EventListener]
      [ mkStaticMethod "create"
          [ refT $ constT $ objT c_string
          , callbackT cb_EventCustomCallback
          ] $ ptrT $ objT c_EventListenerCustom
      ]

-- cb_EventControllerCallback :: Callback
-- cb_EventControllerCallback =
--   makeCallback (toExtName "EventControllerCallback") [ptrT $ objT c_Controller, ptrT $ objT c_Event] voidT
--
-- cb_EventControllerWithKeyCodeCallback :: Callback
-- cb_EventControllerWithKeyCodeCallback =
--   makeCallback (toExtName "EventControllerWithKeyCodeCallback") [ptrT $ objT c_Controller, intT, ptrT $ objT c_Event] voidT
--
-- c_EventListenerController :: Class
-- c_EventListenerController =
--   addReqIncludes [includeStd "base/CCEventListenerController.h"] $
--     makeClass (ident1 "cocos2d" "EventListenerController") Nothing [c_EventListener]
--       [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerController
--       , makeClassVariable "onConnected" Nothing (callbackT cb_EventControllerCallback) Nonstatic False
--       , makeClassVariable "onDisconnected" Nothing (callbackT cb_EventControllerCallback) Nonstatic False
--       , makeClassVariable "onKeyDown" Nothing (callbackT cb_EventControllerWithKeyCodeCallback) Nonstatic False
--       , makeClassVariable "onKeyUp" Nothing (callbackT cb_EventControllerWithKeyCodeCallback) Nonstatic False
--       , makeClassVariable "onKeyRepeat" Nothing (callbackT cb_EventControllerWithKeyCodeCallback) Nonstatic False
--       , makeClassVariable "onAxisEvent" Nothing (callbackT cb_EventControllerWithKeyCodeCallback) Nonstatic False
--       ]

cb_EventFocusCallback :: Callback
cb_EventFocusCallback =
  makeCallback (toExtName "EventFocusCallback") [ptrT $ objT c_Widget, ptrT $ objT c_Widget] voidT

c_EventListenerFocus :: Class
c_EventListenerFocus =
  addReqIncludes [includeStd "base/CCEventListenerFocus.h"] $
    makeClass (ident1 "cocos2d" "EventListenerFocus") Nothing [c_EventListener]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerFocus
      , makeClassVariable "onFocusChanged" Nothing (callbackT cb_EventFocusCallback) Nonstatic False
      ]

c_EventAcceleration :: Class
c_EventAcceleration =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeClass (ident1 "cocos2d" "Acceleration") (Just $ toExtName "EventAcceleration") [c_Ref]
      [ mkCtor "new" []
      , mkClassVariable "x" doubleT
      , mkClassVariable "y" doubleT
      , mkClassVariable "z" doubleT
      , mkClassVariable "timestamp" doubleT
      ]

cb_EventAccelerationCallback :: Callback
cb_EventAccelerationCallback =
  makeCallback (toExtName "EventAccelerationCallback") [ptrT $ objT c_EventAcceleration, ptrT $ objT c_Event] voidT

c_EventListenerAcceleration :: Class
c_EventListenerAcceleration =
  addReqIncludes [includeStd "base/CCEventListenerAcceleration.h"] $
    makeClass (ident1 "cocos2d" "EventListenerAcceleration") Nothing [c_EventListener]
      [ mkStaticMethod "create" [callbackT cb_EventAccelerationCallback] $ ptrT $ objT c_EventListenerAcceleration
      ]

cb_EventMouseCallback :: Callback
cb_EventMouseCallback =
  makeCallback (toExtName "EventMouseCallback") [ptrT $ objT c_EventMouse] voidT

c_EventListenerMouse :: Class
c_EventListenerMouse =
  addReqIncludes [includeStd "base/CCEventListenerMouse.h"] $
    makeClass (ident1 "cocos2d" "EventListenerMouse") Nothing [c_EventListener]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerMouse
      , makeClassVariable "onMouseDown" Nothing (callbackT cb_EventMouseCallback) Nonstatic False
      , makeClassVariable "onMouseUp" Nothing (callbackT cb_EventMouseCallback) Nonstatic False
      , makeClassVariable "onMouseMove" Nothing (callbackT cb_EventMouseCallback) Nonstatic False
      , makeClassVariable "onMouseScroll" Nothing (callbackT cb_EventMouseCallback) Nonstatic False
      ]

c_EventTouch :: Class
c_EventTouch =
  addReqIncludes [includeStd "base/CCTouch.h"] $
    -- rename to EventTouch for consistency (and leaves the name 'Touch' for pure counterparts)
    makeClass (ident1 "cocos2d" "Touch") (Just $ toExtName "EventTouch") [c_Ref]
      [ mkConstMethod "getLocation" [] $ objT c_Vec2
      , mkConstMethod "getPreviousLocation" [] $ objT c_Vec2
      , mkConstMethod "getStartLocation" [] $ objT c_Vec2
      , mkConstMethod "getDelta" [] $ objT c_Vec2
      , mkConstMethod "getLocationInView" [] $ objT c_Vec2
      , mkConstMethod "getPreviousLocationInView" [] $ objT c_Vec2
      , mkConstMethod "getStartLocationInView" [] $ objT c_Vec2
      -- , mkMethod "setTouchInfo" [intT, floatT, floatT] voidT
      , mkConstMethod "getID" [] intT
      ]

cb_EventTouchBeganCallback :: Callback
cb_EventTouchBeganCallback =
  makeCallback (toExtName "EventTouchBeganCallback") [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] boolT

cb_EventTouchCallback :: Callback
cb_EventTouchCallback =
  makeCallback (toExtName "EventTouchCallback") [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] voidT

c_EventListenerTouchOneByOne :: Class
c_EventListenerTouchOneByOne =
  addReqIncludes [includeStd "base/CCEventListenerTouch.h"] $
    makeClass (ident1 "cocos2d" "EventListenerTouchOneByOne") Nothing [c_EventListener]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerTouchOneByOne
      , mkConstMethod "isSwallowTouches" [] boolT
      , mkMethod "setSwallowTouches" [boolT] voidT
      , makeClassVariable "onTouchBegan" Nothing (ptrT $ fnT [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] boolT) Nonstatic False
      , makeClassVariable "onTouchMoved" Nothing (ptrT $ fnT [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] voidT) Nonstatic False
      , makeClassVariable "onTouchEnded" Nothing (ptrT $ fnT [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] voidT) Nonstatic False
      , makeClassVariable "onTouchCancelled" Nothing (ptrT $ fnT [ptrT $ objT c_EventTouch, ptrT $ objT c_Event] voidT) Nonstatic False
      ]

vectorEventTouch :: V.Contents
vectorEventTouch = V.instantiate' "EventTouchVector" (ptrT $ objT c_EventTouch) reqs opts
  where
    reqs = reqInclude $ includeStd "base/CCTouch.h"
    opts = V.Options [] $ Just ConvertValue

cb_EventTouchesCallback :: Callback
cb_EventTouchesCallback =
  makeCallback (toExtName "EventTouchesCallback") [refT $ constT $ objT $ V.c_vector vectorEventTouch, ptrT $ objT c_Event] voidT

c_EventListenerTouchAllAtOnce :: Class
c_EventListenerTouchAllAtOnce =
  addReqIncludes [includeStd "base/CCEventListenerTouch.h"] $
    makeClass (ident1 "cocos2d" "EventListenerTouchAllAtOnce") Nothing [c_EventListener]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_EventListenerTouchAllAtOnce
      , makeClassVariable "onTouchesBegan" Nothing (callbackT cb_EventTouchesCallback) Nonstatic False
      , makeClassVariable "onTouchesMoved" Nothing (callbackT cb_EventTouchesCallback) Nonstatic False
      , makeClassVariable "onTouchesEnded" Nothing (callbackT cb_EventTouchesCallback) Nonstatic False
      , makeClassVariable "onTouchesCancelled" Nothing (callbackT cb_EventTouchesCallback) Nonstatic False
      ]
