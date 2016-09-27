module Graphics.UI.Cocos2d.Generator.Interface.Widget
    (
      mod_widget
    , c_Widget
    , c_Button
    , e_BrightStyle
    , e_TextureResType
    , e_SizeType
    , e_PositionType
    , e_FocusDirection
    , e_TouchEventType
    , cb_WidgetTouchCallback
    , cb_WidgetClickCallback
    , cb_WidgetEventCallback
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_widget :: Module
mod_widget =
  moduleModify' (makeModule "widget" "Widget.hpp" "Widget.cpp") $
    moduleAddExports
    [ ExportClass c_ProtectedNode
    , ExportClass c_Widget
    , ExportClass c_Button
    , ExportEnum e_BrightStyle
    , ExportEnum e_TextureResType
    , ExportEnum e_SizeType
    , ExportEnum e_PositionType
    , ExportEnum e_FocusDirection
    , ExportEnum e_TouchEventType
    , ExportCallback cb_WidgetTouchCallback
    , ExportCallback cb_WidgetClickCallback
    , ExportCallback cb_WidgetEventCallback
    ]

c_ProtectedNode :: Class
c_ProtectedNode =
  addReqIncludes [includeStd "2d/CCProtectedNode.h"] $
    makeClass (ident1 "cocos2d" "ProtectedNode") Nothing [c_Node]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_ProtectedNode
      , mkMethod "addProtectedChild" [ptrT $ objT c_Node] voidT
      , mkMethod' "addProtectedChild" "addProtectedChildWithLocalZOrder" [ptrT $ objT c_Node, intT] voidT
      , mkMethod' "addProtectedChild" "addProtectedChildWithLocalZOrderAndTag" [ptrT $ objT c_Node, intT, intT] voidT
      , mkMethod "getProtectedChildByTag" [intT] $ ptrT $ objT c_Node
      , mkMethod "removeProtectedChild" [ptrT $ objT c_Node] voidT -- cleanup = true
      , mkMethod' "removeProtectedChild" "removeProtectedChildWithCleanup" [ptrT $ objT c_Node, boolT] voidT
      , mkMethod "removeProtectedChildByTag" [intT] voidT
      , mkMethod' "removeProtectedChildByTag" "removeProtectedChildByTagWithCleanup" [intT, boolT] voidT
      , mkMethod "removeAllProtectedChildren" [] voidT
      , mkMethod "removeAllProtectedChildrenWithCleanup" [boolT] voidT
      , mkMethod "reorderProtectedChild" [ptrT $ objT c_Node, intT] voidT
      , mkMethod "sortAllProtectedChildren" [] voidT
      ]

e_BrightStyle :: CppEnum
e_BrightStyle =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "BrightStyle") Nothing
    [ (-1, ["none"])
    , ( 0, ["normal"])
    , ( 1, ["highlight"])
    ]

e_TextureResType :: CppEnum
e_TextureResType =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "TextureResType") Nothing
    [ (0, ["local"])
    , (1, ["plist"])
    ]

e_SizeType :: CppEnum
e_SizeType =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "SizeType") Nothing
    [ (0, ["absolute"])
    , (1, ["percent"])
    ]

e_PositionType :: CppEnum
e_PositionType =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "PositionType") Nothing
    [ (0, ["absolute"])
    , (1, ["percent"])
    ]

e_FocusDirection :: CppEnum
e_FocusDirection =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "FocusDirection") Nothing
    [ (0, ["left"])
    , (1, ["right"])
    , (2, ["up"])
    , (3, ["down"])
    ]

e_TouchEventType :: CppEnum
e_TouchEventType =
  makeEnum (ident3 "cocos2d" "ui" "Widget" "TouchEventType") (Just $ toExtName "WidgetTouchEventType")
    [ (0, ["began"])
    , (1, ["moved"])
    , (2, ["ended"])
    , (3, ["canceled"])
    ]

cb_WidgetTouchCallback :: Callback
cb_WidgetTouchCallback =
  makeCallback (toExtName "WidgetTouchCallback") [ptrT $ objT c_Ref, enumT e_TouchEventType] voidT

cb_WidgetClickCallback :: Callback
cb_WidgetClickCallback =
  makeCallback (toExtName "WidgetClickCallback") [ptrT $ objT c_Ref] voidT

cb_WidgetEventCallback :: Callback
cb_WidgetEventCallback =
  makeCallback (toExtName "WidgetEventCallback") [ptrT $ objT c_Ref, intT] voidT

c_Widget :: Class
c_Widget =
  addReqIncludes [includeStd "ui/UIWidget.h"] $
    makeClass (ident2 "cocos2d" "ui" "Widget") Nothing [c_ProtectedNode]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Widget
      , mkConstMethod "isEnabled" [] boolT
      , mkMethod "setEnabled" [boolT] voidT
      , mkConstMethod "isBright" [] boolT
      , mkMethod "setBright" [boolT] voidT
      , mkMethod "setBrightStyle" [enumT e_BrightStyle] voidT
      , mkConstMethod "isTouchEnabled" [] boolT
      , mkMethod "setTouchEnabled" [boolT] voidT
      , mkConstMethod "isHighlighted" [] boolT
      , mkMethod "setHighlighted" [boolT] voidT
      , mkConstMethod "getLeftBoundary" [] floatT
      , mkConstMethod "getBottomBoundary" [] floatT
      , mkConstMethod "getRightBoundary" [] floatT
      , mkConstMethod "getTopBoundary" [] floatT
      , mkMethod "addTouchEventListener" [callbackT cb_WidgetTouchCallback] voidT
      , mkMethod "addClickEventListener" [callbackT cb_WidgetClickCallback] voidT
      , mkMethod "addCCSEventListener" [callbackT cb_WidgetEventCallback] voidT
      , mkMethod "setPositionPercent" [refT $ constT $ objT c_Vec2] voidT
      , mkMethod "getPositionPercent" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setPositionType" [enumT e_PositionType] voidT
      , mkConstMethod "getPositionType" [] $ enumT e_PositionType
      , mkConstMethod "isFlippedX" [] boolT
      , mkMethod "setFlippedX" [boolT] voidT
      , mkConstMethod "isFlippedY" [] boolT
      , mkMethod "setFlippedY" [boolT] voidT
      , mkMethod "isClippingParentContainsPoint" [] boolT
      , mkConstMethod "getTouchBeganPosition" [] $ refT $ constT $ objT c_Vec2
      , mkConstMethod "getTouchMovePosition" [] $ refT $ constT $ objT c_Vec2
      , mkConstMethod "getTouchEndPosition" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setSizePercent" [refT $ constT $ objT c_Vec2] voidT
      , mkMethod "setSizeType" [enumT e_SizeType] voidT
      , mkConstMethod "getSizeType" [] $ enumT e_SizeType
      , mkConstMethod "getCustomSize" [] $ refT $ constT $ objT c_Size
      , mkMethod "getLayoutSize" [] $ refT $ constT $ objT c_Size
      , mkMethod "getSizePercent" [] $ refT $ constT $ objT c_Vec2
      -- TODO: setLayoutParameters
      , mkConstMethod "isIgnoreContentAdaptWithSize" [] boolT
      , mkMethod "ignoreContentAdaptWithSize" [boolT] voidT
      , mkMethod "getWorldPosition" [] $ objT c_Vec2
      , mkConstMethod "getActionTag" [] intT
      , mkMethod "setActionTag" [intT] voidT
      , mkConstMethod "isPropagateTouchEvents" [] boolT
      , mkMethod "setPropagateTouchEvents" [boolT] voidT
      , mkConstMethod "isSwallowTouches" [] boolT
      , mkMethod "setSwallowTouches" [boolT] voidT
      , mkConstMethod "isFocused" [] boolT
      , mkMethod "setFocused" [boolT] voidT
      , mkConstMethod "isFocusEnabled" [] boolT
      , mkMethod "setFocusEnabled" [boolT] voidT
      , mkMethod "findNextFocusedWidget" [enumT e_FocusDirection, ptrT $ objT c_Widget] $ ptrT $ objT c_Widget
      , mkMethod "requestFocus" [] voidT
      , mkConstMethod "getCurrentFocusedWidget" [] $ ptrT $ objT c_Widget
      , mkMethod "enableDpadNavigation" [boolT] voidT
      , mkConstMethod "isUnifySizeEnabled" [] boolT
      , mkMethod "setUnifySizeEnabled" [boolT] voidT
      , mkConstMethod "getCallbackName" [] $ refT $ constT $ objT c_string
      , mkMethod "setCallbackName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getCallbackType" [] $ refT $ constT $ objT c_string
      , mkMethod "setCallbackType" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "isLayoutComponentEnabled" [] boolT
      , mkMethod "setLayoutComponentEnabled" [boolT] voidT
      ]

c_Button :: Class
c_Button =
  addReqIncludes [includeStd "ui/UIButton.h"] $
    makeClass (ident2 "cocos2d" "ui" "Button") Nothing [c_Widget]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Button
      , mkStaticMethod' "create" "createWithImages"
          [ refT $ constT $ objT c_string --normalImage
          , refT $ constT $ objT c_string --selectedImage / pass empty string for nothing
          , refT $ constT $ objT c_string --disableImage
          , enumT e_TextureResType
          ] $ ptrT $ objT c_Button
      , mkMethod "loadTextures"
          [ refT $ constT $ objT c_string --normalImage
          , refT $ constT $ objT c_string --selectedImage / pass empty string for nothing
          , refT $ constT $ objT c_string --disableImage
          , enumT e_TextureResType
          ] voidT
      , mkMethod "setCapInsets" [refT $ constT $ objT c_Rect] voidT
      , mkConstMethod "isScale9Enabled" [] boolT
      , mkMethod "setScale9Enabled" [boolT] voidT
      , mkMethod "setPressedActionEnabled" [boolT] voidT
      , mkMethod "setTitleText" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getTitleText" [] $ refT $ constT $ objT c_string
      , mkMethod "setTitleColor" [refT $ constT $ objT c_Color3B] voidT
      , mkConstMethod "getTitleColor" [] $ objT c_Color3B
      , mkMethod "setTitleFontSize" [floatT] voidT
      , mkConstMethod "getTitleFontSize" [] floatT
      , mkMethod "setTitleFontName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getTitleFontName" [] $ objT c_string
      , mkMethod' "setTitleAlignment" "setTitleHorizontalAlignment" [enumT e_TextHAlignment] voidT
      , mkMethod "setTitleAlignment" [enumT e_TextHAlignment, enumT e_TextVAlignment] voidT
      , mkMethod "setZoomScale" [floatT] voidT
      , mkConstMethod "getZoomScale" [] floatT
      ]


-- TODO: UIText
-- TODO: UILayout
