{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Widget (
  castButtonToWidget,
  castWidgetToButton,
  castButtonToProtectedNode,
  castProtectedNodeToButton,
  castButtonToNode,
  castNodeToButton,
  castButtonToRef,
  castRefToButton,
  castLayoutToWidget,
  castWidgetToLayout,
  castLayoutToProtectedNode,
  castProtectedNodeToLayout,
  castLayoutToNode,
  castNodeToLayout,
  castLayoutToRef,
  castRefToLayout,
  castProtectedNodeToNode,
  castNodeToProtectedNode,
  castProtectedNodeToRef,
  castRefToProtectedNode,
  castTextToWidget,
  castWidgetToText,
  castTextToProtectedNode,
  castProtectedNodeToText,
  castTextToNode,
  castNodeToText,
  castTextToRef,
  castRefToText,
  castWidgetToProtectedNode,
  castProtectedNodeToWidget,
  castWidgetToNode,
  castNodeToWidget,
  castWidgetToRef,
  castRefToWidget,
  BackGroundColorType (..),
  BrightStyle (..),
  ButtonValue (..),
  ButtonConstPtr (..),
  button_isScale9Enabled,
  button_getTitleText,
  button_getTitleColor,
  button_getTitleFontSize,
  button_getTitleFontName,
  button_getZoomScale,
  ButtonPtr (..),
  button_loadTextures,
  button_setCapInsets,
  button_setScale9Enabled,
  button_setPressedActionEnabled,
  button_setTitleText,
  button_setTitleColor,
  button_setTitleFontSize,
  button_setTitleFontName,
  button_setTitleHorizontalAlignment,
  button_setTitleAlignment,
  button_setZoomScale,
  button_create,
  button_createWithImages,
  ButtonConst (..),
  castButtonToConst,
  Button (..),
  castButtonToNonconst,
  ButtonSuper (..),
  ButtonSuperConst (..),
  ClippingType (..),
  FocusDirection (..),
  LayoutValue (..),
  LayoutConstPtr (..),
  layout_getBackGroundImageCapInsets,
  layout_getBackGroundColorType,
  layout_isBackGroundImageScale9Enabled,
  layout_getBackGroundColor,
  layout_getBackGroundStartColor,
  layout_getBackGroundEndColor,
  layout_getBackGroundColorOpacity,
  layout_getBackGroundColorVector,
  layout_getBackGroundImageColor,
  layout_getBackGroundImageOpacity,
  layout_getBackGroundImageTextureSize,
  layout_getClippingType,
  layout_isClippingEnabled,
  layout_getLayoutType,
  layout_isLoopFocus,
  layout_isPassFocusToChild,
  LayoutPtr (..),
  layout_setBackGroundImage,
  layout_setBackGroundImageCapInsets,
  layout_setBackGroundColorType,
  layout_setBackGroundImageScale9Enabled,
  layout_setBackGroundColor,
  layout_setBackGroundGradientColor,
  layout_setBackGroundColorOpacity,
  layout_setBackGroundColorVector,
  layout_setBackGroundImageColor,
  layout_setBackGroundImageOpacity,
  layout_removeBackGroundImage,
  layout_setClippingEnabled,
  layout_setClippingType,
  layout_setLayoutType,
  layout_forceDoLayout,
  layout_requestDoLayout,
  layout_setLoopFocus,
  layout_setPassFocusToChild,
  layout_create,
  LayoutConst (..),
  castLayoutToConst,
  Layout (..),
  castLayoutToNonconst,
  LayoutSuper (..),
  LayoutSuperConst (..),
  LayoutType (..),
  PositionType (..),
  ProtectedNodeValue (..),
  ProtectedNodeConstPtr (..),
  ProtectedNodePtr (..),
  protectedNode_addProtectedChild,
  protectedNode_addProtectedChildWithLocalZOrder,
  protectedNode_addProtectedChildWithLocalZOrderAndTag,
  protectedNode_getProtectedChildByTag,
  protectedNode_removeProtectedChild,
  protectedNode_removeProtectedChildWithCleanup,
  protectedNode_removeProtectedChildByTag,
  protectedNode_removeProtectedChildByTagWithCleanup,
  protectedNode_removeAllProtectedChildren,
  protectedNode_removeAllProtectedChildrenWithCleanup,
  protectedNode_reorderProtectedChild,
  protectedNode_sortAllProtectedChildren,
  protectedNode_create,
  ProtectedNodeConst (..),
  castProtectedNodeToConst,
  ProtectedNode (..),
  castProtectedNodeToNonconst,
  ProtectedNodeSuper (..),
  ProtectedNodeSuperConst (..),
  SizeType (..),
  TextValue (..),
  TextConstPtr (..),
  text_getString,
  text_getStringLength,
  text_getFontSize,
  text_getFontName,
  text_getType,
  text_isTouchScaleChangeEnabled,
  text_getTextAreaSize,
  text_getTextHorizontalAlignment,
  text_getTextVerticalAlignment,
  text_getTextColor,
  TextPtr (..),
  text_setString,
  text_setFontSize,
  text_setFontName,
  text_setTouchScaleChangeEnabled,
  text_setTextAreaSize,
  text_setTextHorizontalAlignment,
  text_setTextVerticalAlignment,
  text_setTextColor,
  text_enableShadow,
  text_enableShadowWithOffset,
  text_enableOutline,
  text_enableOutlineWithSize,
  text_enableGlow,
  text_disableEffect,
  text_disableLabelEffect,
  text_create,
  text_createWithText,
  TextConst (..),
  castTextToConst,
  Text (..),
  castTextToNonconst,
  TextSuper (..),
  TextSuperConst (..),
  TextType (..),
  TextureResType (..),
  TouchEventType (..),
  UiHelperValue (..),
  UiHelperConstPtr (..),
  UiHelperPtr (..),
  uiHelper_seekWidgetByTag,
  uiHelper_seekWidgetByName,
  uiHelper_seekActionWidgetByActionTag,
  uiHelper_doLayout,
  uiHelper_changeLayoutSystemActiveState,
  uiHelper_restrictCapInsetRect,
  uiHelper_convertBoundingBoxToScreen,
  UiHelperConst (..),
  castUiHelperToConst,
  UiHelper (..),
  castUiHelperToNonconst,
  UiHelperSuper (..),
  UiHelperSuperConst (..),
  WidgetValue (..),
  WidgetConstPtr (..),
  widget_isEnabled,
  widget_isBright,
  widget_isTouchEnabled,
  widget_isHighlighted,
  widget_getLeftBoundary,
  widget_getBottomBoundary,
  widget_getRightBoundary,
  widget_getTopBoundary,
  widget_getPositionType,
  widget_isFlippedX,
  widget_isFlippedY,
  widget_getTouchBeganPosition,
  widget_getTouchMovePosition,
  widget_getTouchEndPosition,
  widget_getSizeType,
  widget_getCustomSize,
  widget_isIgnoreContentAdaptWithSize,
  widget_getActionTag,
  widget_isPropagateTouchEvents,
  widget_isSwallowTouches,
  widget_isFocused,
  widget_isFocusEnabled,
  widget_getCurrentFocusedWidget,
  widget_isUnifySizeEnabled,
  widget_getCallbackName,
  widget_getCallbackType,
  widget_isLayoutComponentEnabled,
  WidgetPtr (..),
  widget_setEnabled,
  widget_setBright,
  widget_setBrightStyle,
  widget_setTouchEnabled,
  widget_setHighlighted,
  widget_addTouchEventListener,
  widget_addClickEventListener,
  widget_addCCSEventListener,
  widget_setPositionPercent,
  widget_getPositionPercent,
  widget_setPositionType,
  widget_setFlippedX,
  widget_setFlippedY,
  widget_isClippingParentContainsPoint,
  widget_setSizePercent,
  widget_setSizeType,
  widget_getLayoutSize,
  widget_getSizePercent,
  widget_ignoreContentAdaptWithSize,
  widget_getWorldPosition,
  widget_setActionTag,
  widget_setPropagateTouchEvents,
  widget_setSwallowTouches,
  widget_setFocused,
  widget_setFocusEnabled,
  widget_findNextFocusedWidget,
  widget_requestFocus,
  widget_enableDpadNavigation,
  widget_setUnifySizeEnabled,
  widget_setCallbackName,
  widget_setCallbackType,
  widget_setLayoutComponentEnabled,
  widget_create,
  WidgetConst (..),
  castWidgetToConst,
  Widget (..),
  castWidgetToNonconst,
  WidgetSuper (..),
  WidgetSuperConst (..),
  widgetClickCallback_newFunPtr,
  widgetClickCallback_new,
  widgetEventCallback_newFunPtr,
  widgetEventCallback_new,
  widgetTouchCallback_newFunPtr,
  widgetTouchCallback_new,
  ) where

import Data.Colour
import qualified Data.Word as HoppyDW
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Std as M1
import Linear.V2
import Prelude (($), (++), (.), (/=), (=<<), (==), (>>=), Float)
import qualified Prelude as HoppyP
import qualified System.Posix.Types as HoppySPT

foreign import ccall "genpop__Button_create" button_create' ::  HoppyP.IO (HoppyF.Ptr Button)
foreign import ccall "genpop__Button_createWithImages" button_createWithImages' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Button)
foreign import ccall "genpop__Button_loadTextures" button_loadTextures' ::  HoppyF.Ptr Button -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Button_setCapInsets" button_setCapInsets' ::  HoppyF.Ptr Button -> HoppyF.Ptr M2.RectConst -> HoppyP.IO ()
foreign import ccall "genpop__Button_isScale9Enabled" button_isScale9Enabled' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Button_setScale9Enabled" button_setScale9Enabled' ::  HoppyF.Ptr Button -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Button_setPressedActionEnabled" button_setPressedActionEnabled' ::  HoppyF.Ptr Button -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Button_setTitleText" button_setTitleText' ::  HoppyF.Ptr Button -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Button_getTitleText" button_getTitleText' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Button_setTitleColor" button_setTitleColor' ::  HoppyF.Ptr Button -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Button_getTitleColor" button_getTitleColor' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Button_setTitleFontSize" button_setTitleFontSize' ::  HoppyF.Ptr Button -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Button_getTitleFontSize" button_getTitleFontSize' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Button_setTitleFontName" button_setTitleFontName' ::  HoppyF.Ptr Button -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Button_getTitleFontName" button_getTitleFontName' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Button_setTitleHorizontalAlignment" button_setTitleHorizontalAlignment' ::  HoppyF.Ptr Button -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Button_setTitleAlignment" button_setTitleAlignment' ::  HoppyF.Ptr Button -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Button_setZoomScale" button_setZoomScale' ::  HoppyF.Ptr Button -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Button_getZoomScale" button_getZoomScale' ::  HoppyF.Ptr ButtonConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "gencast__Button__Widget" castButtonToWidget :: HoppyF.Ptr ButtonConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gencast__Widget__Button" castWidgetToButton :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr ButtonConst
foreign import ccall "gencast__Button__ProtectedNode" castButtonToProtectedNode :: HoppyF.Ptr ButtonConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gencast__ProtectedNode__Button" castProtectedNodeToButton :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ButtonConst
foreign import ccall "gencast__Button__Node" castButtonToNode :: HoppyF.Ptr ButtonConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Button" castNodeToButton :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr ButtonConst
foreign import ccall "gencast__Button__Ref" castButtonToRef :: HoppyF.Ptr ButtonConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Button" castRefToButton :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr ButtonConst
foreign import ccall "gendel__Button" delete'Button :: HoppyF.Ptr ButtonConst -> HoppyP.IO ()
foreign import ccall "&gendel__Button" deletePtr'Button :: HoppyF.FunPtr (HoppyF.Ptr ButtonConst -> HoppyP.IO ())
foreign import ccall "genpop__Layout_create" layout_create' ::  HoppyP.IO (HoppyF.Ptr Layout)
foreign import ccall "genpop__Layout_setBackGroundImage" layout_setBackGroundImage' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Layout_setBackGroundImageCapInsets" layout_setBackGroundImageCapInsets' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M2.RectConst -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundImageCapInsets" layout_getBackGroundImageCapInsets' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.RectConst)
foreign import ccall "genpop__Layout_setBackGroundColorType" layout_setBackGroundColorType' ::  HoppyF.Ptr Layout -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundColorType" layout_getBackGroundColorType' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Layout_setBackGroundImageScale9Enabled" layout_setBackGroundImageScale9Enabled' ::  HoppyF.Ptr Layout -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Layout_isBackGroundImageScale9Enabled" layout_isBackGroundImageScale9Enabled' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Layout_setBackGroundColor" layout_setBackGroundColor' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundColor" layout_getBackGroundColor' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Layout_setBackGroundGradientColor" layout_setBackGroundGradientColor' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M2.Color3BConst -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundStartColor" layout_getBackGroundStartColor' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Layout_getBackGroundEndColor" layout_getBackGroundEndColor' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Layout_setBackGroundColorOpacity" layout_setBackGroundColorOpacity' ::  HoppyF.Ptr Layout -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundColorOpacity" layout_getBackGroundColorOpacity' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Layout_setBackGroundColorVector" layout_setBackGroundColorVector' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundColorVector" layout_getBackGroundColorVector' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Layout_setBackGroundImageColor" layout_setBackGroundImageColor' ::  HoppyF.Ptr Layout -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Layout_setBackGroundImageOpacity" layout_setBackGroundImageOpacity' ::  HoppyF.Ptr Layout -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundImageColor" layout_getBackGroundImageColor' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Layout_getBackGroundImageOpacity" layout_getBackGroundImageOpacity' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Layout_removeBackGroundImage" layout_removeBackGroundImage' ::  HoppyF.Ptr Layout -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getBackGroundImageTextureSize" layout_getBackGroundImageTextureSize' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Layout_setClippingEnabled" layout_setClippingEnabled' ::  HoppyF.Ptr Layout -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Layout_setClippingType" layout_setClippingType' ::  HoppyF.Ptr Layout -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getClippingType" layout_getClippingType' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Layout_isClippingEnabled" layout_isClippingEnabled' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Layout_setLayoutType" layout_setLayoutType' ::  HoppyF.Ptr Layout -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Layout_getLayoutType" layout_getLayoutType' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Layout_forceDoLayout" layout_forceDoLayout' ::  HoppyF.Ptr Layout -> HoppyP.IO ()
foreign import ccall "genpop__Layout_requestDoLayout" layout_requestDoLayout' ::  HoppyF.Ptr Layout -> HoppyP.IO ()
foreign import ccall "genpop__Layout_isLoopFocus" layout_isLoopFocus' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Layout_setLoopFocus" layout_setLoopFocus' ::  HoppyF.Ptr Layout -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Layout_setPassFocusToChild" layout_setPassFocusToChild' ::  HoppyF.Ptr Layout -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Layout_isPassFocusToChild" layout_isPassFocusToChild' ::  HoppyF.Ptr LayoutConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "gencast__Layout__Widget" castLayoutToWidget :: HoppyF.Ptr LayoutConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gencast__Widget__Layout" castWidgetToLayout :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr LayoutConst
foreign import ccall "gencast__Layout__ProtectedNode" castLayoutToProtectedNode :: HoppyF.Ptr LayoutConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gencast__ProtectedNode__Layout" castProtectedNodeToLayout :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr LayoutConst
foreign import ccall "gencast__Layout__Node" castLayoutToNode :: HoppyF.Ptr LayoutConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Layout" castNodeToLayout :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr LayoutConst
foreign import ccall "gencast__Layout__Ref" castLayoutToRef :: HoppyF.Ptr LayoutConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Layout" castRefToLayout :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LayoutConst
foreign import ccall "gendel__Layout" delete'Layout :: HoppyF.Ptr LayoutConst -> HoppyP.IO ()
foreign import ccall "&gendel__Layout" deletePtr'Layout :: HoppyF.FunPtr (HoppyF.Ptr LayoutConst -> HoppyP.IO ())
foreign import ccall "genpop__ProtectedNode_create" protectedNode_create' ::  HoppyP.IO (HoppyF.Ptr ProtectedNode)
foreign import ccall "genpop__ProtectedNode_addProtectedChild" protectedNode_addProtectedChild' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_addProtectedChildWithLocalZOrder" protectedNode_addProtectedChildWithLocalZOrder' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_addProtectedChildWithLocalZOrderAndTag" protectedNode_addProtectedChildWithLocalZOrderAndTag' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_getProtectedChildByTag" protectedNode_getProtectedChildByTag' ::  HoppyF.Ptr ProtectedNode -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "genpop__ProtectedNode_removeProtectedChild" protectedNode_removeProtectedChild' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_removeProtectedChildWithCleanup" protectedNode_removeProtectedChildWithCleanup' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_removeProtectedChildByTag" protectedNode_removeProtectedChildByTag' ::  HoppyF.Ptr ProtectedNode -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_removeProtectedChildByTagWithCleanup" protectedNode_removeProtectedChildByTagWithCleanup' ::  HoppyF.Ptr ProtectedNode -> HoppyFC.CInt -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_removeAllProtectedChildren" protectedNode_removeAllProtectedChildren' ::  HoppyF.Ptr ProtectedNode -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_removeAllProtectedChildrenWithCleanup" protectedNode_removeAllProtectedChildrenWithCleanup' ::  HoppyF.Ptr ProtectedNode -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_reorderProtectedChild" protectedNode_reorderProtectedChild' ::  HoppyF.Ptr ProtectedNode -> HoppyF.Ptr M5.Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__ProtectedNode_sortAllProtectedChildren" protectedNode_sortAllProtectedChildren' ::  HoppyF.Ptr ProtectedNode -> HoppyP.IO ()
foreign import ccall "gencast__ProtectedNode__Node" castProtectedNodeToNode :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__ProtectedNode" castNodeToProtectedNode :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gencast__ProtectedNode__Ref" castProtectedNodeToRef :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__ProtectedNode" castRefToProtectedNode :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gendel__ProtectedNode" delete'ProtectedNode :: HoppyF.Ptr ProtectedNodeConst -> HoppyP.IO ()
foreign import ccall "&gendel__ProtectedNode" deletePtr'ProtectedNode :: HoppyF.FunPtr (HoppyF.Ptr ProtectedNodeConst -> HoppyP.IO ())
foreign import ccall "genpop__Text_create" text_create' ::  HoppyP.IO (HoppyF.Ptr Text)
foreign import ccall "genpop__Text_createWithText" text_createWithText' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Text)
foreign import ccall "genpop__Text_getString" text_getString' ::  HoppyF.Ptr TextConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Text_setString" text_setString' ::  HoppyF.Ptr Text -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_getStringLength" text_getStringLength' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppySPT.CSsize
foreign import ccall "genpop__Text_setFontSize" text_setFontSize' ::  HoppyF.Ptr Text -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Text_getFontSize" text_getFontSize' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Text_setFontName" text_setFontName' ::  HoppyF.Ptr Text -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_getFontName" text_getFontName' ::  HoppyF.Ptr TextConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Text_getType" text_getType' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Text_setTouchScaleChangeEnabled" text_setTouchScaleChangeEnabled' ::  HoppyF.Ptr Text -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Text_isTouchScaleChangeEnabled" text_isTouchScaleChangeEnabled' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Text_setTextAreaSize" text_setTextAreaSize' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.SizeConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_getTextAreaSize" text_getTextAreaSize' ::  HoppyF.Ptr TextConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Text_setTextHorizontalAlignment" text_setTextHorizontalAlignment' ::  HoppyF.Ptr Text -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Text_getTextHorizontalAlignment" text_getTextHorizontalAlignment' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Text_setTextVerticalAlignment" text_setTextVerticalAlignment' ::  HoppyF.Ptr Text -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Text_getTextVerticalAlignment" text_getTextVerticalAlignment' ::  HoppyF.Ptr TextConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Text_setTextColor" text_setTextColor' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_getTextColor" text_getTextColor' ::  HoppyF.Ptr TextConst -> HoppyP.IO (HoppyF.Ptr M2.Color4BConst)
foreign import ccall "genpop__Text_enableShadow" text_enableShadow' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_enableShadowWithOffset" text_enableShadowWithOffset' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyF.Ptr M2.SizeConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Text_enableOutline" text_enableOutline' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_enableOutlineWithSize" text_enableOutlineWithSize' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Text_enableGlow" text_enableGlow' ::  HoppyF.Ptr Text -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Text_disableEffect" text_disableEffect' ::  HoppyF.Ptr Text -> HoppyP.IO ()
foreign import ccall "genpop__Text_disableLabelEffect" text_disableLabelEffect' ::  HoppyF.Ptr Text -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "gencast__Text__Widget" castTextToWidget :: HoppyF.Ptr TextConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gencast__Widget__Text" castWidgetToText :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr TextConst
foreign import ccall "gencast__Text__ProtectedNode" castTextToProtectedNode :: HoppyF.Ptr TextConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gencast__ProtectedNode__Text" castProtectedNodeToText :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr TextConst
foreign import ccall "gencast__Text__Node" castTextToNode :: HoppyF.Ptr TextConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Text" castNodeToText :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr TextConst
foreign import ccall "gencast__Text__Ref" castTextToRef :: HoppyF.Ptr TextConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Text" castRefToText :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr TextConst
foreign import ccall "gendel__Text" delete'Text :: HoppyF.Ptr TextConst -> HoppyP.IO ()
foreign import ccall "&gendel__Text" deletePtr'Text :: HoppyF.FunPtr (HoppyF.Ptr TextConst -> HoppyP.IO ())
foreign import ccall "genpop__UiHelper_seekWidgetByTag" uiHelper_seekWidgetByTag' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__UiHelper_seekWidgetByName" uiHelper_seekWidgetByName' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__UiHelper_seekActionWidgetByActionTag" uiHelper_seekActionWidgetByActionTag' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__UiHelper_doLayout" uiHelper_doLayout' ::  HoppyF.Ptr M5.Node -> HoppyP.IO ()
foreign import ccall "genpop__UiHelper_changeLayoutSystemActiveState" uiHelper_changeLayoutSystemActiveState' ::  HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__UiHelper_restrictCapInsetRect" uiHelper_restrictCapInsetRect' ::  HoppyF.Ptr M2.RectConst -> HoppyF.Ptr M2.SizeConst -> HoppyP.IO (HoppyF.Ptr M2.Rect)
foreign import ccall "genpop__UiHelper_convertBoundingBoxToScreen" uiHelper_convertBoundingBoxToScreen' ::  HoppyF.Ptr M5.Node -> HoppyP.IO (HoppyF.Ptr M2.Rect)
foreign import ccall "gendel__UiHelper" delete'UiHelper :: HoppyF.Ptr UiHelperConst -> HoppyP.IO ()
foreign import ccall "&gendel__UiHelper" deletePtr'UiHelper :: HoppyF.FunPtr (HoppyF.Ptr UiHelperConst -> HoppyP.IO ())
foreign import ccall "genpop__Widget_create" widget_create' ::  HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__Widget_isEnabled" widget_isEnabled' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setEnabled" widget_setEnabled' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isBright" widget_isBright' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setBright" widget_setBright' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_setBrightStyle" widget_setBrightStyle' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isTouchEnabled" widget_isTouchEnabled' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setTouchEnabled" widget_setTouchEnabled' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isHighlighted" widget_isHighlighted' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setHighlighted" widget_setHighlighted' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getLeftBoundary" widget_getLeftBoundary' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Widget_getBottomBoundary" widget_getBottomBoundary' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Widget_getRightBoundary" widget_getRightBoundary' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Widget_getTopBoundary" widget_getTopBoundary' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Widget_addTouchEventListener" widget_addTouchEventListener' ::  HoppyF.Ptr Widget -> HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__Widget_addClickEventListener" widget_addClickEventListener' ::  HoppyF.Ptr Widget -> HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__Widget_addCCSEventListener" widget_addCCSEventListener' ::  HoppyF.Ptr Widget -> HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__Widget_setPositionPercent" widget_setPositionPercent' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getPositionPercent" widget_getPositionPercent' ::  HoppyF.Ptr Widget -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_setPositionType" widget_setPositionType' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getPositionType" widget_getPositionType' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Widget_isFlippedX" widget_isFlippedX' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setFlippedX" widget_setFlippedX' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isFlippedY" widget_isFlippedY' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setFlippedY" widget_setFlippedY' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isClippingParentContainsPoint" widget_isClippingParentContainsPoint' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_getTouchBeganPosition" widget_getTouchBeganPosition' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_getTouchMovePosition" widget_getTouchMovePosition' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_getTouchEndPosition" widget_getTouchEndPosition' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_setSizePercent" widget_setSizePercent' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Widget_setSizeType" widget_setSizeType' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getSizeType" widget_getSizeType' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Widget_getCustomSize" widget_getCustomSize' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Widget_getLayoutSize" widget_getLayoutSize' ::  HoppyF.Ptr Widget -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Widget_getSizePercent" widget_getSizePercent' ::  HoppyF.Ptr Widget -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_isIgnoreContentAdaptWithSize" widget_isIgnoreContentAdaptWithSize' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_ignoreContentAdaptWithSize" widget_ignoreContentAdaptWithSize' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getWorldPosition" widget_getWorldPosition' ::  HoppyF.Ptr Widget -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Widget_getActionTag" widget_getActionTag' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Widget_setActionTag" widget_setActionTag' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isPropagateTouchEvents" widget_isPropagateTouchEvents' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setPropagateTouchEvents" widget_setPropagateTouchEvents' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isSwallowTouches" widget_isSwallowTouches' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setSwallowTouches" widget_setSwallowTouches' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isFocused" widget_isFocused' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setFocused" widget_setFocused' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isFocusEnabled" widget_isFocusEnabled' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setFocusEnabled" widget_setFocusEnabled' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_findNextFocusedWidget" widget_findNextFocusedWidget' ::  HoppyF.Ptr Widget -> HoppyFC.CInt -> HoppyF.Ptr Widget -> HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__Widget_requestFocus" widget_requestFocus' ::  HoppyF.Ptr Widget -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getCurrentFocusedWidget" widget_getCurrentFocusedWidget' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr Widget)
foreign import ccall "genpop__Widget_enableDpadNavigation" widget_enableDpadNavigation' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isUnifySizeEnabled" widget_isUnifySizeEnabled' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setUnifySizeEnabled" widget_setUnifySizeEnabled' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getCallbackName" widget_getCallbackName' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Widget_setCallbackName" widget_setCallbackName' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Widget_getCallbackType" widget_getCallbackType' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Widget_setCallbackType" widget_setCallbackType' ::  HoppyF.Ptr Widget -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Widget_isLayoutComponentEnabled" widget_isLayoutComponentEnabled' ::  HoppyF.Ptr WidgetConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Widget_setLayoutComponentEnabled" widget_setLayoutComponentEnabled' ::  HoppyF.Ptr Widget -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "gencast__Widget__ProtectedNode" castWidgetToProtectedNode :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr ProtectedNodeConst
foreign import ccall "gencast__ProtectedNode__Widget" castProtectedNodeToWidget :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gencast__Widget__Node" castWidgetToNode :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Widget" castNodeToWidget :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gencast__Widget__Ref" castWidgetToRef :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Widget" castRefToWidget :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr WidgetConst
foreign import ccall "gendel__Widget" delete'Widget :: HoppyF.Ptr WidgetConst -> HoppyP.IO ()
foreign import ccall "&gendel__Widget" deletePtr'Widget :: HoppyF.FunPtr (HoppyF.Ptr WidgetConst -> HoppyP.IO ())
foreign import ccall "wrapper" widgetClickCallback_new'newFunPtr :: (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
foreign import ccall "genpop__WidgetClickCallback" widgetClickCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
foreign import ccall "wrapper" widgetEventCallback_new'newFunPtr :: (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
foreign import ccall "genpop__WidgetEventCallback" widgetEventCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
foreign import ccall "wrapper" widgetTouchCallback_new'newFunPtr :: (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
foreign import ccall "genpop__WidgetTouchCallback" widgetTouchCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))

data BackGroundColorType =
  BackGroundColorType_None
  | BackGroundColorType_Solid
  | BackGroundColorType_Gradient
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum BackGroundColorType where
  fromEnum BackGroundColorType_None = 0
  fromEnum BackGroundColorType_Solid = 1
  fromEnum BackGroundColorType_Gradient = 2
  
  toEnum (0) = BackGroundColorType_None
  toEnum (1) = BackGroundColorType_Solid
  toEnum (2) = BackGroundColorType_Gradient
  toEnum n' = HoppyP.error $ "Unknown BackGroundColorType numeric value: " ++ HoppyP.show n'

data BrightStyle =
  BrightStyle_None
  | BrightStyle_Normal
  | BrightStyle_Highlight
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum BrightStyle where
  fromEnum BrightStyle_None = -1
  fromEnum BrightStyle_Normal = 0
  fromEnum BrightStyle_Highlight = 1
  
  toEnum (-1) = BrightStyle_None
  toEnum (0) = BrightStyle_Normal
  toEnum (1) = BrightStyle_Highlight
  toEnum n' = HoppyP.error $ "Unknown BrightStyle numeric value: " ++ HoppyP.show n'

class ButtonValue a where
  withButtonPtr :: a -> (ButtonConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ButtonConstPtr a => ButtonValue a where
#else
instance ButtonConstPtr a => ButtonValue a where
#endif
  withButtonPtr = HoppyP.flip ($) . toButtonConst

class (WidgetConstPtr this) => ButtonConstPtr this where
  toButtonConst :: this -> ButtonConst

button_isScale9Enabled :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
button_isScale9Enabled arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (button_isScale9Enabled' arg'1')

button_getTitleText :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO HoppyP.String
button_getTitleText arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M1.StdStringConst) =<<
  (button_getTitleText' arg'1')

button_getTitleColor :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO (Colour Float)
button_getTitleColor arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Color3BConst) =<<
  (button_getTitleColor' arg'1')

button_getTitleFontSize :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
button_getTitleFontSize arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (button_getTitleFontSize' arg'1')

button_getTitleFontName :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO HoppyP.String
button_getTitleFontName arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M1.StdStringConst) =<<
  (button_getTitleFontName' arg'1')

button_getZoomScale :: (ButtonValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
button_getZoomScale arg'1 =
  withButtonPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (button_getZoomScale' arg'1')

class (ButtonConstPtr this, WidgetPtr this) => ButtonPtr this where
  toButton :: this -> Button

button_loadTextures :: (ButtonPtr arg'1, M1.StdStringValue arg'2, M1.StdStringValue arg'3, M1.StdStringValue arg'4) => arg'1 -> arg'2 -> arg'3 -> arg'4 -> TextureResType -> HoppyP.IO ()
button_loadTextures arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M1.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  M1.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  let arg'5' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'5 in
  (button_loadTextures' arg'1' arg'2' arg'3' arg'4' arg'5')

button_setCapInsets :: (ButtonPtr arg'1, M2.RectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
button_setCapInsets arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  M2.withRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (button_setCapInsets' arg'1' arg'2')

button_setScale9Enabled :: (ButtonPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
button_setScale9Enabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (button_setScale9Enabled' arg'1' arg'2')

button_setPressedActionEnabled :: (ButtonPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
button_setPressedActionEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (button_setPressedActionEnabled' arg'1' arg'2')

button_setTitleText :: (ButtonPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
button_setTitleText arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (button_setTitleText' arg'1' arg'2')

button_setTitleColor :: (ButtonPtr arg'1, M2.Color3BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
button_setTitleColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (button_setTitleColor' arg'1' arg'2')

button_setTitleFontSize :: (ButtonPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
button_setTitleFontSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (button_setTitleFontSize' arg'1' arg'2')

button_setTitleFontName :: (ButtonPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
button_setTitleFontName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (button_setTitleFontName' arg'1' arg'2')

button_setTitleHorizontalAlignment :: (ButtonPtr arg'1) => arg'1 -> M2.TextHAlignment -> HoppyP.IO ()
button_setTitleHorizontalAlignment arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (button_setTitleHorizontalAlignment' arg'1' arg'2')

button_setTitleAlignment :: (ButtonPtr arg'1) => arg'1 -> M2.TextHAlignment -> M2.TextVAlignment -> HoppyP.IO ()
button_setTitleAlignment arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  (button_setTitleAlignment' arg'1' arg'2' arg'3')

button_setZoomScale :: (ButtonPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
button_setZoomScale arg'1 arg'2 =
  HoppyFHR.withCppPtr (toButton arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (button_setZoomScale' arg'1' arg'2')

button_create ::  HoppyP.IO Button
button_create =
  HoppyP.fmap Button
  (button_create')

button_createWithImages :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M1.StdStringValue arg'3) => arg'1 -> arg'2 -> arg'3 -> TextureResType -> HoppyP.IO Button
button_createWithImages arg'1 arg'2 arg'3 arg'4 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M1.withStdStringPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'4 in
  HoppyP.fmap Button
  (button_createWithImages' arg'1' arg'2' arg'3' arg'4')

data ButtonConst =
    ButtonConst (HoppyF.Ptr ButtonConst)
  | ButtonConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ButtonConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ButtonConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ButtonConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castButtonToConst :: Button -> ButtonConst
castButtonToConst (Button ptr') = ButtonConst $ HoppyF.castPtr ptr'
castButtonToConst (ButtonGc fptr' ptr') = ButtonConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ButtonConst where
  nullptr = ButtonConst HoppyF.nullPtr
  
  withCppPtr (ButtonConst ptr') f' = f' ptr'
  withCppPtr (ButtonConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ButtonConst ptr') = ptr'
  toPtr (ButtonConstGc _ ptr') = ptr'
  
  touchCppPtr (ButtonConst _) = HoppyP.return ()
  touchCppPtr (ButtonConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ButtonConst where
  delete (ButtonConst ptr') = delete'Button ptr'
  delete (ButtonConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ButtonConst", " object."]
  
  toGc this'@(ButtonConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ButtonConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Button :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ButtonConstGc {}) = HoppyP.return this'

instance ButtonConstPtr ButtonConst where
  toButtonConst = HoppyP.id

instance WidgetConstPtr ButtonConst where
  toWidgetConst (ButtonConst ptr') = WidgetConst $ castButtonToWidget ptr'
  toWidgetConst (ButtonConstGc fptr' ptr') = WidgetConstGc fptr' $ castButtonToWidget ptr'

instance ProtectedNodeConstPtr ButtonConst where
  toProtectedNodeConst (ButtonConst ptr') = ProtectedNodeConst $ castButtonToProtectedNode ptr'
  toProtectedNodeConst (ButtonConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castButtonToProtectedNode ptr'

instance M5.NodeConstPtr ButtonConst where
  toNodeConst (ButtonConst ptr') = M5.NodeConst $ castButtonToNode ptr'
  toNodeConst (ButtonConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castButtonToNode ptr'

instance M2.RefConstPtr ButtonConst where
  toRefConst (ButtonConst ptr') = M2.RefConst $ castButtonToRef ptr'
  toRefConst (ButtonConstGc fptr' ptr') = M2.RefConstGc fptr' $ castButtonToRef ptr'

data Button =
    Button (HoppyF.Ptr Button)
  | ButtonGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Button)
  deriving (HoppyP.Show)

instance HoppyP.Eq Button where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Button where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castButtonToNonconst :: ButtonConst -> Button
castButtonToNonconst (ButtonConst ptr') = Button $ HoppyF.castPtr ptr'
castButtonToNonconst (ButtonConstGc fptr' ptr') = ButtonGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Button where
  nullptr = Button HoppyF.nullPtr
  
  withCppPtr (Button ptr') f' = f' ptr'
  withCppPtr (ButtonGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Button ptr') = ptr'
  toPtr (ButtonGc _ ptr') = ptr'
  
  touchCppPtr (Button _) = HoppyP.return ()
  touchCppPtr (ButtonGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Button where
  delete (Button ptr') = delete'Button $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ButtonConst)
  delete (ButtonGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Button", " object."]
  
  toGc this'@(Button ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ButtonGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Button :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ButtonGc {}) = HoppyP.return this'

instance ButtonConstPtr Button where
  toButtonConst (Button ptr') = ButtonConst $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toButtonConst (ButtonGc fptr' ptr') = ButtonConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance ButtonPtr Button where
  toButton = HoppyP.id

instance WidgetConstPtr Button where
  toWidgetConst (Button ptr') = WidgetConst $ castButtonToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toWidgetConst (ButtonGc fptr' ptr') = WidgetConstGc fptr' $ castButtonToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance WidgetPtr Button where
  toWidget (Button ptr') = Widget $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castButtonToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toWidget (ButtonGc fptr' ptr') = WidgetGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castButtonToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance ProtectedNodeConstPtr Button where
  toProtectedNodeConst (Button ptr') = ProtectedNodeConst $ castButtonToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toProtectedNodeConst (ButtonGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castButtonToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance ProtectedNodePtr Button where
  toProtectedNode (Button ptr') = ProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castButtonToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toProtectedNode (ButtonGc fptr' ptr') = ProtectedNodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castButtonToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance M5.NodeConstPtr Button where
  toNodeConst (Button ptr') = M5.NodeConst $ castButtonToNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toNodeConst (ButtonGc fptr' ptr') = M5.NodeConstGc fptr' $ castButtonToNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance M5.NodePtr Button where
  toNode (Button ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castButtonToNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toNode (ButtonGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castButtonToNode $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance M2.RefConstPtr Button where
  toRefConst (Button ptr') = M2.RefConst $ castButtonToRef $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toRefConst (ButtonGc fptr' ptr') = M2.RefConstGc fptr' $ castButtonToRef $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

instance M2.RefPtr Button where
  toRef (Button ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castButtonToRef $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'
  toRef (ButtonGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castButtonToRef $ (HoppyF.castPtr :: HoppyF.Ptr Button -> HoppyF.Ptr ButtonConst) ptr'

class ButtonSuper a where
  downToButton :: a -> Button

instance ButtonSuper Widget where
  downToButton = castButtonToNonconst . cast' . castWidgetToConst
    where
      cast' (WidgetConst ptr') = ButtonConst $ castWidgetToButton ptr'
      cast' (WidgetConstGc fptr' ptr') = ButtonConstGc fptr' $ castWidgetToButton ptr'
instance ButtonSuper ProtectedNode where
  downToButton = castButtonToNonconst . cast' . castProtectedNodeToConst
    where
      cast' (ProtectedNodeConst ptr') = ButtonConst $ castProtectedNodeToButton ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = ButtonConstGc fptr' $ castProtectedNodeToButton ptr'
instance ButtonSuper M5.Node where
  downToButton = castButtonToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = ButtonConst $ castNodeToButton ptr'
      cast' (M5.NodeConstGc fptr' ptr') = ButtonConstGc fptr' $ castNodeToButton ptr'
instance ButtonSuper M2.Ref where
  downToButton = castButtonToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = ButtonConst $ castRefToButton ptr'
      cast' (M2.RefConstGc fptr' ptr') = ButtonConstGc fptr' $ castRefToButton ptr'

class ButtonSuperConst a where
  downToButtonConst :: a -> ButtonConst

instance ButtonSuperConst WidgetConst where
  downToButtonConst = cast'
    where
      cast' (WidgetConst ptr') = ButtonConst $ castWidgetToButton ptr'
      cast' (WidgetConstGc fptr' ptr') = ButtonConstGc fptr' $ castWidgetToButton ptr'
instance ButtonSuperConst ProtectedNodeConst where
  downToButtonConst = cast'
    where
      cast' (ProtectedNodeConst ptr') = ButtonConst $ castProtectedNodeToButton ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = ButtonConstGc fptr' $ castProtectedNodeToButton ptr'
instance ButtonSuperConst M5.NodeConst where
  downToButtonConst = cast'
    where
      cast' (M5.NodeConst ptr') = ButtonConst $ castNodeToButton ptr'
      cast' (M5.NodeConstGc fptr' ptr') = ButtonConstGc fptr' $ castNodeToButton ptr'
instance ButtonSuperConst M2.RefConst where
  downToButtonConst = cast'
    where
      cast' (M2.RefConst ptr') = ButtonConst $ castRefToButton ptr'
      cast' (M2.RefConstGc fptr' ptr') = ButtonConstGc fptr' $ castRefToButton ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Button)) Button where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Button)) Button where
  decode = HoppyP.fmap Button . HoppyF.peek

data ClippingType =
  ClippingType_Stencil
  | ClippingType_Scissor
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum ClippingType where
  fromEnum ClippingType_Stencil = 0
  fromEnum ClippingType_Scissor = 1
  
  toEnum (0) = ClippingType_Stencil
  toEnum (1) = ClippingType_Scissor
  toEnum n' = HoppyP.error $ "Unknown ClippingType numeric value: " ++ HoppyP.show n'

data FocusDirection =
  FocusDirection_Left
  | FocusDirection_Right
  | FocusDirection_Up
  | FocusDirection_Down
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum FocusDirection where
  fromEnum FocusDirection_Left = 0
  fromEnum FocusDirection_Right = 1
  fromEnum FocusDirection_Up = 2
  fromEnum FocusDirection_Down = 3
  
  toEnum (0) = FocusDirection_Left
  toEnum (1) = FocusDirection_Right
  toEnum (2) = FocusDirection_Up
  toEnum (3) = FocusDirection_Down
  toEnum n' = HoppyP.error $ "Unknown FocusDirection numeric value: " ++ HoppyP.show n'

class LayoutValue a where
  withLayoutPtr :: a -> (LayoutConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LayoutConstPtr a => LayoutValue a where
#else
instance LayoutConstPtr a => LayoutValue a where
#endif
  withLayoutPtr = HoppyP.flip ($) . toLayoutConst

class (WidgetConstPtr this) => LayoutConstPtr this where
  toLayoutConst :: this -> LayoutConst

layout_getBackGroundImageCapInsets :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.RectConst
layout_getBackGroundImageCapInsets arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RectConst
  (layout_getBackGroundImageCapInsets' arg'1')

layout_getBackGroundColorType :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO BackGroundColorType
layout_getBackGroundColorType arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (layout_getBackGroundColorType' arg'1')

layout_isBackGroundImageScale9Enabled :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
layout_isBackGroundImageScale9Enabled arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (layout_isBackGroundImageScale9Enabled' arg'1')

layout_getBackGroundColor :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layout_getBackGroundColor arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layout_getBackGroundColor' arg'1')

layout_getBackGroundStartColor :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layout_getBackGroundStartColor arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layout_getBackGroundStartColor' arg'1')

layout_getBackGroundEndColor :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layout_getBackGroundEndColor arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layout_getBackGroundEndColor' arg'1')

layout_getBackGroundColorOpacity :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
layout_getBackGroundColorOpacity arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (layout_getBackGroundColorOpacity' arg'1')

layout_getBackGroundColorVector :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
layout_getBackGroundColorVector arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (layout_getBackGroundColorVector' arg'1')

layout_getBackGroundImageColor :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layout_getBackGroundImageColor arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layout_getBackGroundImageColor' arg'1')

layout_getBackGroundImageOpacity :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
layout_getBackGroundImageOpacity arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (layout_getBackGroundImageOpacity' arg'1')

layout_getBackGroundImageTextureSize :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
layout_getBackGroundImageTextureSize arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (layout_getBackGroundImageTextureSize' arg'1')

layout_getClippingType :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO ClippingType
layout_getClippingType arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (layout_getClippingType' arg'1')

layout_isClippingEnabled :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
layout_isClippingEnabled arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (layout_isClippingEnabled' arg'1')

layout_getLayoutType :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO LayoutType
layout_getLayoutType arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (layout_getLayoutType' arg'1')

layout_isLoopFocus :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
layout_isLoopFocus arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (layout_isLoopFocus' arg'1')

layout_isPassFocusToChild :: (LayoutValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
layout_isPassFocusToChild arg'1 =
  withLayoutPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (layout_isPassFocusToChild' arg'1')

class (LayoutConstPtr this, WidgetPtr this) => LayoutPtr this where
  toLayout :: this -> Layout

layout_setBackGroundImage :: (LayoutPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> TextureResType -> HoppyP.IO ()
layout_setBackGroundImage arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  (layout_setBackGroundImage' arg'1' arg'2' arg'3')

layout_setBackGroundImageCapInsets :: (LayoutPtr arg'1, M2.RectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
layout_setBackGroundImageCapInsets arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M2.withRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layout_setBackGroundImageCapInsets' arg'1' arg'2')

layout_setBackGroundColorType :: (LayoutPtr arg'1) => arg'1 -> BackGroundColorType -> HoppyP.IO ()
layout_setBackGroundColorType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (layout_setBackGroundColorType' arg'1' arg'2')

layout_setBackGroundImageScale9Enabled :: (LayoutPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
layout_setBackGroundImageScale9Enabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (layout_setBackGroundImageScale9Enabled' arg'1' arg'2')

layout_setBackGroundColor :: (LayoutPtr arg'1, M2.Color3BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
layout_setBackGroundColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layout_setBackGroundColor' arg'1' arg'2')

layout_setBackGroundGradientColor :: (LayoutPtr arg'1, M2.Color3BValue arg'2, M2.Color3BValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
layout_setBackGroundGradientColor arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withColor3BPtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (layout_setBackGroundGradientColor' arg'1' arg'2' arg'3')

layout_setBackGroundColorOpacity :: (LayoutPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
layout_setBackGroundColorOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (layout_setBackGroundColorOpacity' arg'1' arg'2')

layout_setBackGroundColorVector :: (LayoutPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
layout_setBackGroundColorVector arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layout_setBackGroundColorVector' arg'1' arg'2')

layout_setBackGroundImageColor :: (LayoutPtr arg'1, M2.Color3BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
layout_setBackGroundImageColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layout_setBackGroundImageColor' arg'1' arg'2')

layout_setBackGroundImageOpacity :: (LayoutPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
layout_setBackGroundImageOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (layout_setBackGroundImageOpacity' arg'1' arg'2')

layout_removeBackGroundImage :: (LayoutPtr arg'1) => arg'1 -> HoppyP.IO ()
layout_removeBackGroundImage arg'1 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  (layout_removeBackGroundImage' arg'1')

layout_setClippingEnabled :: (LayoutPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
layout_setClippingEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (layout_setClippingEnabled' arg'1' arg'2')

layout_setClippingType :: (LayoutPtr arg'1) => arg'1 -> ClippingType -> HoppyP.IO ()
layout_setClippingType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (layout_setClippingType' arg'1' arg'2')

layout_setLayoutType :: (LayoutPtr arg'1) => arg'1 -> LayoutType -> HoppyP.IO ()
layout_setLayoutType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (layout_setLayoutType' arg'1' arg'2')

layout_forceDoLayout :: (LayoutPtr arg'1) => arg'1 -> HoppyP.IO ()
layout_forceDoLayout arg'1 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  (layout_forceDoLayout' arg'1')

layout_requestDoLayout :: (LayoutPtr arg'1) => arg'1 -> HoppyP.IO ()
layout_requestDoLayout arg'1 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  (layout_requestDoLayout' arg'1')

layout_setLoopFocus :: (LayoutPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
layout_setLoopFocus arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (layout_setLoopFocus' arg'1' arg'2')

layout_setPassFocusToChild :: (LayoutPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
layout_setPassFocusToChild arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayout arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (layout_setPassFocusToChild' arg'1' arg'2')

layout_create ::  HoppyP.IO Layout
layout_create =
  HoppyP.fmap Layout
  (layout_create')

data LayoutConst =
    LayoutConst (HoppyF.Ptr LayoutConst)
  | LayoutConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayoutConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayoutConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayoutConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayoutToConst :: Layout -> LayoutConst
castLayoutToConst (Layout ptr') = LayoutConst $ HoppyF.castPtr ptr'
castLayoutToConst (LayoutGc fptr' ptr') = LayoutConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayoutConst where
  nullptr = LayoutConst HoppyF.nullPtr
  
  withCppPtr (LayoutConst ptr') f' = f' ptr'
  withCppPtr (LayoutConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayoutConst ptr') = ptr'
  toPtr (LayoutConstGc _ ptr') = ptr'
  
  touchCppPtr (LayoutConst _) = HoppyP.return ()
  touchCppPtr (LayoutConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayoutConst where
  delete (LayoutConst ptr') = delete'Layout ptr'
  delete (LayoutConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayoutConst", " object."]
  
  toGc this'@(LayoutConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayoutConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Layout :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayoutConstGc {}) = HoppyP.return this'

instance LayoutConstPtr LayoutConst where
  toLayoutConst = HoppyP.id

instance WidgetConstPtr LayoutConst where
  toWidgetConst (LayoutConst ptr') = WidgetConst $ castLayoutToWidget ptr'
  toWidgetConst (LayoutConstGc fptr' ptr') = WidgetConstGc fptr' $ castLayoutToWidget ptr'

instance ProtectedNodeConstPtr LayoutConst where
  toProtectedNodeConst (LayoutConst ptr') = ProtectedNodeConst $ castLayoutToProtectedNode ptr'
  toProtectedNodeConst (LayoutConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castLayoutToProtectedNode ptr'

instance M5.NodeConstPtr LayoutConst where
  toNodeConst (LayoutConst ptr') = M5.NodeConst $ castLayoutToNode ptr'
  toNodeConst (LayoutConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castLayoutToNode ptr'

instance M2.RefConstPtr LayoutConst where
  toRefConst (LayoutConst ptr') = M2.RefConst $ castLayoutToRef ptr'
  toRefConst (LayoutConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLayoutToRef ptr'

data Layout =
    Layout (HoppyF.Ptr Layout)
  | LayoutGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Layout)
  deriving (HoppyP.Show)

instance HoppyP.Eq Layout where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Layout where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayoutToNonconst :: LayoutConst -> Layout
castLayoutToNonconst (LayoutConst ptr') = Layout $ HoppyF.castPtr ptr'
castLayoutToNonconst (LayoutConstGc fptr' ptr') = LayoutGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Layout where
  nullptr = Layout HoppyF.nullPtr
  
  withCppPtr (Layout ptr') f' = f' ptr'
  withCppPtr (LayoutGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Layout ptr') = ptr'
  toPtr (LayoutGc _ ptr') = ptr'
  
  touchCppPtr (Layout _) = HoppyP.return ()
  touchCppPtr (LayoutGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Layout where
  delete (Layout ptr') = delete'Layout $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LayoutConst)
  delete (LayoutGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Layout", " object."]
  
  toGc this'@(Layout ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayoutGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Layout :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayoutGc {}) = HoppyP.return this'

instance LayoutConstPtr Layout where
  toLayoutConst (Layout ptr') = LayoutConst $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toLayoutConst (LayoutGc fptr' ptr') = LayoutConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance LayoutPtr Layout where
  toLayout = HoppyP.id

instance WidgetConstPtr Layout where
  toWidgetConst (Layout ptr') = WidgetConst $ castLayoutToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toWidgetConst (LayoutGc fptr' ptr') = WidgetConstGc fptr' $ castLayoutToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance WidgetPtr Layout where
  toWidget (Layout ptr') = Widget $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castLayoutToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toWidget (LayoutGc fptr' ptr') = WidgetGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castLayoutToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance ProtectedNodeConstPtr Layout where
  toProtectedNodeConst (Layout ptr') = ProtectedNodeConst $ castLayoutToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toProtectedNodeConst (LayoutGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castLayoutToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance ProtectedNodePtr Layout where
  toProtectedNode (Layout ptr') = ProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castLayoutToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toProtectedNode (LayoutGc fptr' ptr') = ProtectedNodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castLayoutToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance M5.NodeConstPtr Layout where
  toNodeConst (Layout ptr') = M5.NodeConst $ castLayoutToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toNodeConst (LayoutGc fptr' ptr') = M5.NodeConstGc fptr' $ castLayoutToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance M5.NodePtr Layout where
  toNode (Layout ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castLayoutToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toNode (LayoutGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castLayoutToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance M2.RefConstPtr Layout where
  toRefConst (Layout ptr') = M2.RefConst $ castLayoutToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toRefConst (LayoutGc fptr' ptr') = M2.RefConstGc fptr' $ castLayoutToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

instance M2.RefPtr Layout where
  toRef (Layout ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayoutToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'
  toRef (LayoutGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayoutToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layout -> HoppyF.Ptr LayoutConst) ptr'

class LayoutSuper a where
  downToLayout :: a -> Layout

instance LayoutSuper Widget where
  downToLayout = castLayoutToNonconst . cast' . castWidgetToConst
    where
      cast' (WidgetConst ptr') = LayoutConst $ castWidgetToLayout ptr'
      cast' (WidgetConstGc fptr' ptr') = LayoutConstGc fptr' $ castWidgetToLayout ptr'
instance LayoutSuper ProtectedNode where
  downToLayout = castLayoutToNonconst . cast' . castProtectedNodeToConst
    where
      cast' (ProtectedNodeConst ptr') = LayoutConst $ castProtectedNodeToLayout ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = LayoutConstGc fptr' $ castProtectedNodeToLayout ptr'
instance LayoutSuper M5.Node where
  downToLayout = castLayoutToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = LayoutConst $ castNodeToLayout ptr'
      cast' (M5.NodeConstGc fptr' ptr') = LayoutConstGc fptr' $ castNodeToLayout ptr'
instance LayoutSuper M2.Ref where
  downToLayout = castLayoutToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LayoutConst $ castRefToLayout ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayoutConstGc fptr' $ castRefToLayout ptr'

class LayoutSuperConst a where
  downToLayoutConst :: a -> LayoutConst

instance LayoutSuperConst WidgetConst where
  downToLayoutConst = cast'
    where
      cast' (WidgetConst ptr') = LayoutConst $ castWidgetToLayout ptr'
      cast' (WidgetConstGc fptr' ptr') = LayoutConstGc fptr' $ castWidgetToLayout ptr'
instance LayoutSuperConst ProtectedNodeConst where
  downToLayoutConst = cast'
    where
      cast' (ProtectedNodeConst ptr') = LayoutConst $ castProtectedNodeToLayout ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = LayoutConstGc fptr' $ castProtectedNodeToLayout ptr'
instance LayoutSuperConst M5.NodeConst where
  downToLayoutConst = cast'
    where
      cast' (M5.NodeConst ptr') = LayoutConst $ castNodeToLayout ptr'
      cast' (M5.NodeConstGc fptr' ptr') = LayoutConstGc fptr' $ castNodeToLayout ptr'
instance LayoutSuperConst M2.RefConst where
  downToLayoutConst = cast'
    where
      cast' (M2.RefConst ptr') = LayoutConst $ castRefToLayout ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayoutConstGc fptr' $ castRefToLayout ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Layout)) Layout where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Layout)) Layout where
  decode = HoppyP.fmap Layout . HoppyF.peek

data LayoutType =
  LayoutType_Absolute
  | LayoutType_Vertical
  | LayoutType_Horizontal
  | LayoutType_Relative
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum LayoutType where
  fromEnum LayoutType_Absolute = 0
  fromEnum LayoutType_Vertical = 1
  fromEnum LayoutType_Horizontal = 2
  fromEnum LayoutType_Relative = 3
  
  toEnum (0) = LayoutType_Absolute
  toEnum (1) = LayoutType_Vertical
  toEnum (2) = LayoutType_Horizontal
  toEnum (3) = LayoutType_Relative
  toEnum n' = HoppyP.error $ "Unknown LayoutType numeric value: " ++ HoppyP.show n'

data PositionType =
  PositionType_Absolute
  | PositionType_Percent
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum PositionType where
  fromEnum PositionType_Absolute = 0
  fromEnum PositionType_Percent = 1
  
  toEnum (0) = PositionType_Absolute
  toEnum (1) = PositionType_Percent
  toEnum n' = HoppyP.error $ "Unknown PositionType numeric value: " ++ HoppyP.show n'

class ProtectedNodeValue a where
  withProtectedNodePtr :: a -> (ProtectedNodeConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} ProtectedNodeConstPtr a => ProtectedNodeValue a where
#else
instance ProtectedNodeConstPtr a => ProtectedNodeValue a where
#endif
  withProtectedNodePtr = HoppyP.flip ($) . toProtectedNodeConst

class (M5.NodeConstPtr this) => ProtectedNodeConstPtr this where
  toProtectedNodeConst :: this -> ProtectedNodeConst

class (ProtectedNodeConstPtr this, M5.NodePtr this) => ProtectedNodePtr this where
  toProtectedNode :: this -> ProtectedNode

protectedNode_addProtectedChild :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
protectedNode_addProtectedChild arg'1 arg'2 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  (protectedNode_addProtectedChild' arg'1' arg'2')

protectedNode_addProtectedChildWithLocalZOrder :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
protectedNode_addProtectedChildWithLocalZOrder arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (protectedNode_addProtectedChildWithLocalZOrder' arg'1' arg'2' arg'3')

protectedNode_addProtectedChildWithLocalZOrderAndTag :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO ()
protectedNode_addProtectedChildWithLocalZOrderAndTag arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  (protectedNode_addProtectedChildWithLocalZOrderAndTag' arg'1' arg'2' arg'3' arg'4')

protectedNode_getProtectedChildByTag :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO M5.Node
protectedNode_getProtectedChildByTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap M5.Node
  (protectedNode_getProtectedChildByTag' arg'1' arg'2')

protectedNode_removeProtectedChild :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
protectedNode_removeProtectedChild arg'1 arg'2 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  (protectedNode_removeProtectedChild' arg'1' arg'2')

protectedNode_removeProtectedChildWithCleanup :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
protectedNode_removeProtectedChildWithCleanup arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (protectedNode_removeProtectedChildWithCleanup' arg'1' arg'2' arg'3')

protectedNode_removeProtectedChildByTag :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
protectedNode_removeProtectedChildByTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (protectedNode_removeProtectedChildByTag' arg'1' arg'2')

protectedNode_removeProtectedChildByTagWithCleanup :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.Bool -> HoppyP.IO ()
protectedNode_removeProtectedChildByTagWithCleanup arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  let arg'3' = if arg'3 then 1 else 0 in
  (protectedNode_removeProtectedChildByTagWithCleanup' arg'1' arg'2' arg'3')

protectedNode_removeAllProtectedChildren :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.IO ()
protectedNode_removeAllProtectedChildren arg'1 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  (protectedNode_removeAllProtectedChildren' arg'1')

protectedNode_removeAllProtectedChildrenWithCleanup :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
protectedNode_removeAllProtectedChildrenWithCleanup arg'1 arg'2 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (protectedNode_removeAllProtectedChildrenWithCleanup' arg'1' arg'2')

protectedNode_reorderProtectedChild :: (ProtectedNodePtr arg'1, M5.NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
protectedNode_reorderProtectedChild arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M5.toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (protectedNode_reorderProtectedChild' arg'1' arg'2' arg'3')

protectedNode_sortAllProtectedChildren :: (ProtectedNodePtr arg'1) => arg'1 -> HoppyP.IO ()
protectedNode_sortAllProtectedChildren arg'1 =
  HoppyFHR.withCppPtr (toProtectedNode arg'1) $ \arg'1' ->
  (protectedNode_sortAllProtectedChildren' arg'1')

protectedNode_create ::  HoppyP.IO ProtectedNode
protectedNode_create =
  HoppyP.fmap ProtectedNode
  (protectedNode_create')

data ProtectedNodeConst =
    ProtectedNodeConst (HoppyF.Ptr ProtectedNodeConst)
  | ProtectedNodeConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ProtectedNodeConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq ProtectedNodeConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ProtectedNodeConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castProtectedNodeToConst :: ProtectedNode -> ProtectedNodeConst
castProtectedNodeToConst (ProtectedNode ptr') = ProtectedNodeConst $ HoppyF.castPtr ptr'
castProtectedNodeToConst (ProtectedNodeGc fptr' ptr') = ProtectedNodeConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ProtectedNodeConst where
  nullptr = ProtectedNodeConst HoppyF.nullPtr
  
  withCppPtr (ProtectedNodeConst ptr') f' = f' ptr'
  withCppPtr (ProtectedNodeConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ProtectedNodeConst ptr') = ptr'
  toPtr (ProtectedNodeConstGc _ ptr') = ptr'
  
  touchCppPtr (ProtectedNodeConst _) = HoppyP.return ()
  touchCppPtr (ProtectedNodeConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ProtectedNodeConst where
  delete (ProtectedNodeConst ptr') = delete'ProtectedNode ptr'
  delete (ProtectedNodeConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ProtectedNodeConst", " object."]
  
  toGc this'@(ProtectedNodeConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ProtectedNodeConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ProtectedNode :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ProtectedNodeConstGc {}) = HoppyP.return this'

instance ProtectedNodeConstPtr ProtectedNodeConst where
  toProtectedNodeConst = HoppyP.id

instance M5.NodeConstPtr ProtectedNodeConst where
  toNodeConst (ProtectedNodeConst ptr') = M5.NodeConst $ castProtectedNodeToNode ptr'
  toNodeConst (ProtectedNodeConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castProtectedNodeToNode ptr'

instance M2.RefConstPtr ProtectedNodeConst where
  toRefConst (ProtectedNodeConst ptr') = M2.RefConst $ castProtectedNodeToRef ptr'
  toRefConst (ProtectedNodeConstGc fptr' ptr') = M2.RefConstGc fptr' $ castProtectedNodeToRef ptr'

data ProtectedNode =
    ProtectedNode (HoppyF.Ptr ProtectedNode)
  | ProtectedNodeGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr ProtectedNode)
  deriving (HoppyP.Show)

instance HoppyP.Eq ProtectedNode where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord ProtectedNode where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castProtectedNodeToNonconst :: ProtectedNodeConst -> ProtectedNode
castProtectedNodeToNonconst (ProtectedNodeConst ptr') = ProtectedNode $ HoppyF.castPtr ptr'
castProtectedNodeToNonconst (ProtectedNodeConstGc fptr' ptr') = ProtectedNodeGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr ProtectedNode where
  nullptr = ProtectedNode HoppyF.nullPtr
  
  withCppPtr (ProtectedNode ptr') f' = f' ptr'
  withCppPtr (ProtectedNodeGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (ProtectedNode ptr') = ptr'
  toPtr (ProtectedNodeGc _ ptr') = ptr'
  
  touchCppPtr (ProtectedNode _) = HoppyP.return ()
  touchCppPtr (ProtectedNodeGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable ProtectedNode where
  delete (ProtectedNode ptr') = delete'ProtectedNode $ (HoppyF.castPtr ptr' :: HoppyF.Ptr ProtectedNodeConst)
  delete (ProtectedNodeGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "ProtectedNode", " object."]
  
  toGc this'@(ProtectedNode ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip ProtectedNodeGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'ProtectedNode :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(ProtectedNodeGc {}) = HoppyP.return this'

instance ProtectedNodeConstPtr ProtectedNode where
  toProtectedNodeConst (ProtectedNode ptr') = ProtectedNodeConst $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'
  toProtectedNodeConst (ProtectedNodeGc fptr' ptr') = ProtectedNodeConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'

instance ProtectedNodePtr ProtectedNode where
  toProtectedNode = HoppyP.id

instance M5.NodeConstPtr ProtectedNode where
  toNodeConst (ProtectedNode ptr') = M5.NodeConst $ castProtectedNodeToNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'
  toNodeConst (ProtectedNodeGc fptr' ptr') = M5.NodeConstGc fptr' $ castProtectedNodeToNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'

instance M5.NodePtr ProtectedNode where
  toNode (ProtectedNode ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castProtectedNodeToNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'
  toNode (ProtectedNodeGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castProtectedNodeToNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'

instance M2.RefConstPtr ProtectedNode where
  toRefConst (ProtectedNode ptr') = M2.RefConst $ castProtectedNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'
  toRefConst (ProtectedNodeGc fptr' ptr') = M2.RefConstGc fptr' $ castProtectedNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'

instance M2.RefPtr ProtectedNode where
  toRef (ProtectedNode ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castProtectedNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'
  toRef (ProtectedNodeGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castProtectedNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNode -> HoppyF.Ptr ProtectedNodeConst) ptr'

class ProtectedNodeSuper a where
  downToProtectedNode :: a -> ProtectedNode

instance ProtectedNodeSuper M5.Node where
  downToProtectedNode = castProtectedNodeToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = ProtectedNodeConst $ castNodeToProtectedNode ptr'
      cast' (M5.NodeConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castNodeToProtectedNode ptr'
instance ProtectedNodeSuper M2.Ref where
  downToProtectedNode = castProtectedNodeToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = ProtectedNodeConst $ castRefToProtectedNode ptr'
      cast' (M2.RefConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castRefToProtectedNode ptr'

class ProtectedNodeSuperConst a where
  downToProtectedNodeConst :: a -> ProtectedNodeConst

instance ProtectedNodeSuperConst M5.NodeConst where
  downToProtectedNodeConst = cast'
    where
      cast' (M5.NodeConst ptr') = ProtectedNodeConst $ castNodeToProtectedNode ptr'
      cast' (M5.NodeConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castNodeToProtectedNode ptr'
instance ProtectedNodeSuperConst M2.RefConst where
  downToProtectedNodeConst = cast'
    where
      cast' (M2.RefConst ptr') = ProtectedNodeConst $ castRefToProtectedNode ptr'
      cast' (M2.RefConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castRefToProtectedNode ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr ProtectedNode)) ProtectedNode where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr ProtectedNode)) ProtectedNode where
  decode = HoppyP.fmap ProtectedNode . HoppyF.peek

data SizeType =
  SizeType_Absolute
  | SizeType_Percent
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum SizeType where
  fromEnum SizeType_Absolute = 0
  fromEnum SizeType_Percent = 1
  
  toEnum (0) = SizeType_Absolute
  toEnum (1) = SizeType_Percent
  toEnum n' = HoppyP.error $ "Unknown SizeType numeric value: " ++ HoppyP.show n'

class TextValue a where
  withTextPtr :: a -> (TextConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} TextConstPtr a => TextValue a where
#else
instance TextConstPtr a => TextValue a where
#endif
  withTextPtr = HoppyP.flip ($) . toTextConst

class (WidgetConstPtr this) => TextConstPtr this where
  toTextConst :: this -> TextConst

text_getString :: (TextValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
text_getString arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (text_getString' arg'1')

text_getStringLength :: (TextValue arg'1) => arg'1 -> HoppyP.IO HoppySPT.CSsize
text_getStringLength arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (text_getStringLength' arg'1')

text_getFontSize :: (TextValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
text_getFontSize arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (text_getFontSize' arg'1')

text_getFontName :: (TextValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
text_getFontName arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (text_getFontName' arg'1')

text_getType :: (TextValue arg'1) => arg'1 -> HoppyP.IO TextType
text_getType arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (text_getType' arg'1')

text_isTouchScaleChangeEnabled :: (TextValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
text_isTouchScaleChangeEnabled arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (text_isTouchScaleChangeEnabled' arg'1')

text_getTextAreaSize :: (TextValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
text_getTextAreaSize arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (text_getTextAreaSize' arg'1')

text_getTextHorizontalAlignment :: (TextValue arg'1) => arg'1 -> HoppyP.IO M2.TextHAlignment
text_getTextHorizontalAlignment arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (text_getTextHorizontalAlignment' arg'1')

text_getTextVerticalAlignment :: (TextValue arg'1) => arg'1 -> HoppyP.IO M2.TextVAlignment
text_getTextVerticalAlignment arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (text_getTextVerticalAlignment' arg'1')

text_getTextColor :: (TextValue arg'1) => arg'1 -> HoppyP.IO M2.Color4BConst
text_getTextColor arg'1 =
  withTextPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color4BConst
  (text_getTextColor' arg'1')

class (TextConstPtr this, WidgetPtr this) => TextPtr this where
  toText :: this -> Text

text_setString :: (TextPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_setString arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_setString' arg'1' arg'2')

text_setFontSize :: (TextPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
text_setFontSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (text_setFontSize' arg'1' arg'2')

text_setFontName :: (TextPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_setFontName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_setFontName' arg'1' arg'2')

text_setTouchScaleChangeEnabled :: (TextPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
text_setTouchScaleChangeEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (text_setTouchScaleChangeEnabled' arg'1' arg'2')

text_setTextAreaSize :: (TextPtr arg'1, M2.SizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_setTextAreaSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_setTextAreaSize' arg'1' arg'2')

text_setTextHorizontalAlignment :: (TextPtr arg'1) => arg'1 -> M2.TextHAlignment -> HoppyP.IO ()
text_setTextHorizontalAlignment arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (text_setTextHorizontalAlignment' arg'1' arg'2')

text_setTextVerticalAlignment :: (TextPtr arg'1) => arg'1 -> M2.TextVAlignment -> HoppyP.IO ()
text_setTextVerticalAlignment arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (text_setTextVerticalAlignment' arg'1' arg'2')

text_setTextColor :: (TextPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_setTextColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_setTextColor' arg'1' arg'2')

text_enableShadow :: (TextPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_enableShadow arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_enableShadow' arg'1' arg'2')

text_enableShadowWithOffset :: (TextPtr arg'1, M2.Color4BValue arg'2, M2.SizeValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.Int -> HoppyP.IO ()
text_enableShadowWithOffset arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withSizePtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  (text_enableShadowWithOffset' arg'1' arg'2' arg'3' arg'4')

text_enableOutline :: (TextPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_enableOutline arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_enableOutline' arg'1' arg'2')

text_enableOutlineWithSize :: (TextPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
text_enableOutlineWithSize arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (text_enableOutlineWithSize' arg'1' arg'2' arg'3')

text_enableGlow :: (TextPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
text_enableGlow arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (text_enableGlow' arg'1' arg'2')

text_disableEffect :: (TextPtr arg'1) => arg'1 -> HoppyP.IO ()
text_disableEffect arg'1 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  (text_disableEffect' arg'1')

text_disableLabelEffect :: (TextPtr arg'1) => arg'1 -> M2.LabelEffect -> HoppyP.IO ()
text_disableLabelEffect arg'1 arg'2 =
  HoppyFHR.withCppPtr (toText arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (text_disableLabelEffect' arg'1' arg'2')

text_create ::  HoppyP.IO Text
text_create =
  HoppyP.fmap Text
  (text_create')

text_createWithText :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO Text
text_createWithText arg'1 arg'2 arg'3 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap Text
  (text_createWithText' arg'1' arg'2' arg'3')

data TextConst =
    TextConst (HoppyF.Ptr TextConst)
  | TextConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr TextConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq TextConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord TextConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTextToConst :: Text -> TextConst
castTextToConst (Text ptr') = TextConst $ HoppyF.castPtr ptr'
castTextToConst (TextGc fptr' ptr') = TextConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr TextConst where
  nullptr = TextConst HoppyF.nullPtr
  
  withCppPtr (TextConst ptr') f' = f' ptr'
  withCppPtr (TextConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (TextConst ptr') = ptr'
  toPtr (TextConstGc _ ptr') = ptr'
  
  touchCppPtr (TextConst _) = HoppyP.return ()
  touchCppPtr (TextConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable TextConst where
  delete (TextConst ptr') = delete'Text ptr'
  delete (TextConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "TextConst", " object."]
  
  toGc this'@(TextConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TextConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Text :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TextConstGc {}) = HoppyP.return this'

instance TextConstPtr TextConst where
  toTextConst = HoppyP.id

instance WidgetConstPtr TextConst where
  toWidgetConst (TextConst ptr') = WidgetConst $ castTextToWidget ptr'
  toWidgetConst (TextConstGc fptr' ptr') = WidgetConstGc fptr' $ castTextToWidget ptr'

instance ProtectedNodeConstPtr TextConst where
  toProtectedNodeConst (TextConst ptr') = ProtectedNodeConst $ castTextToProtectedNode ptr'
  toProtectedNodeConst (TextConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castTextToProtectedNode ptr'

instance M5.NodeConstPtr TextConst where
  toNodeConst (TextConst ptr') = M5.NodeConst $ castTextToNode ptr'
  toNodeConst (TextConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castTextToNode ptr'

instance M2.RefConstPtr TextConst where
  toRefConst (TextConst ptr') = M2.RefConst $ castTextToRef ptr'
  toRefConst (TextConstGc fptr' ptr') = M2.RefConstGc fptr' $ castTextToRef ptr'

data Text =
    Text (HoppyF.Ptr Text)
  | TextGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Text)
  deriving (HoppyP.Show)

instance HoppyP.Eq Text where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Text where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTextToNonconst :: TextConst -> Text
castTextToNonconst (TextConst ptr') = Text $ HoppyF.castPtr ptr'
castTextToNonconst (TextConstGc fptr' ptr') = TextGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Text where
  nullptr = Text HoppyF.nullPtr
  
  withCppPtr (Text ptr') f' = f' ptr'
  withCppPtr (TextGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Text ptr') = ptr'
  toPtr (TextGc _ ptr') = ptr'
  
  touchCppPtr (Text _) = HoppyP.return ()
  touchCppPtr (TextGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Text where
  delete (Text ptr') = delete'Text $ (HoppyF.castPtr ptr' :: HoppyF.Ptr TextConst)
  delete (TextGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Text", " object."]
  
  toGc this'@(Text ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TextGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Text :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TextGc {}) = HoppyP.return this'

instance TextConstPtr Text where
  toTextConst (Text ptr') = TextConst $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toTextConst (TextGc fptr' ptr') = TextConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance TextPtr Text where
  toText = HoppyP.id

instance WidgetConstPtr Text where
  toWidgetConst (Text ptr') = WidgetConst $ castTextToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toWidgetConst (TextGc fptr' ptr') = WidgetConstGc fptr' $ castTextToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance WidgetPtr Text where
  toWidget (Text ptr') = Widget $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castTextToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toWidget (TextGc fptr' ptr') = WidgetGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr WidgetConst -> HoppyF.Ptr Widget) $ castTextToWidget $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance ProtectedNodeConstPtr Text where
  toProtectedNodeConst (Text ptr') = ProtectedNodeConst $ castTextToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toProtectedNodeConst (TextGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castTextToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance ProtectedNodePtr Text where
  toProtectedNode (Text ptr') = ProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castTextToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toProtectedNode (TextGc fptr' ptr') = ProtectedNodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castTextToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance M5.NodeConstPtr Text where
  toNodeConst (Text ptr') = M5.NodeConst $ castTextToNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toNodeConst (TextGc fptr' ptr') = M5.NodeConstGc fptr' $ castTextToNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance M5.NodePtr Text where
  toNode (Text ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castTextToNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toNode (TextGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castTextToNode $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance M2.RefConstPtr Text where
  toRefConst (Text ptr') = M2.RefConst $ castTextToRef $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toRefConst (TextGc fptr' ptr') = M2.RefConstGc fptr' $ castTextToRef $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

instance M2.RefPtr Text where
  toRef (Text ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTextToRef $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'
  toRef (TextGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTextToRef $ (HoppyF.castPtr :: HoppyF.Ptr Text -> HoppyF.Ptr TextConst) ptr'

class TextSuper a where
  downToText :: a -> Text

instance TextSuper Widget where
  downToText = castTextToNonconst . cast' . castWidgetToConst
    where
      cast' (WidgetConst ptr') = TextConst $ castWidgetToText ptr'
      cast' (WidgetConstGc fptr' ptr') = TextConstGc fptr' $ castWidgetToText ptr'
instance TextSuper ProtectedNode where
  downToText = castTextToNonconst . cast' . castProtectedNodeToConst
    where
      cast' (ProtectedNodeConst ptr') = TextConst $ castProtectedNodeToText ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = TextConstGc fptr' $ castProtectedNodeToText ptr'
instance TextSuper M5.Node where
  downToText = castTextToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = TextConst $ castNodeToText ptr'
      cast' (M5.NodeConstGc fptr' ptr') = TextConstGc fptr' $ castNodeToText ptr'
instance TextSuper M2.Ref where
  downToText = castTextToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = TextConst $ castRefToText ptr'
      cast' (M2.RefConstGc fptr' ptr') = TextConstGc fptr' $ castRefToText ptr'

class TextSuperConst a where
  downToTextConst :: a -> TextConst

instance TextSuperConst WidgetConst where
  downToTextConst = cast'
    where
      cast' (WidgetConst ptr') = TextConst $ castWidgetToText ptr'
      cast' (WidgetConstGc fptr' ptr') = TextConstGc fptr' $ castWidgetToText ptr'
instance TextSuperConst ProtectedNodeConst where
  downToTextConst = cast'
    where
      cast' (ProtectedNodeConst ptr') = TextConst $ castProtectedNodeToText ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = TextConstGc fptr' $ castProtectedNodeToText ptr'
instance TextSuperConst M5.NodeConst where
  downToTextConst = cast'
    where
      cast' (M5.NodeConst ptr') = TextConst $ castNodeToText ptr'
      cast' (M5.NodeConstGc fptr' ptr') = TextConstGc fptr' $ castNodeToText ptr'
instance TextSuperConst M2.RefConst where
  downToTextConst = cast'
    where
      cast' (M2.RefConst ptr') = TextConst $ castRefToText ptr'
      cast' (M2.RefConstGc fptr' ptr') = TextConstGc fptr' $ castRefToText ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Text)) Text where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Text)) Text where
  decode = HoppyP.fmap Text . HoppyF.peek

data TextType =
  TextType_System
  | TextType_Ttf
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum TextType where
  fromEnum TextType_System = 0
  fromEnum TextType_Ttf = 1
  
  toEnum (0) = TextType_System
  toEnum (1) = TextType_Ttf
  toEnum n' = HoppyP.error $ "Unknown TextType numeric value: " ++ HoppyP.show n'

data TextureResType =
  TextureResType_Local
  | TextureResType_Plist
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum TextureResType where
  fromEnum TextureResType_Local = 0
  fromEnum TextureResType_Plist = 1
  
  toEnum (0) = TextureResType_Local
  toEnum (1) = TextureResType_Plist
  toEnum n' = HoppyP.error $ "Unknown TextureResType numeric value: " ++ HoppyP.show n'

data TouchEventType =
  TouchEventType_Began
  | TouchEventType_Moved
  | TouchEventType_Ended
  | TouchEventType_Canceled
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum TouchEventType where
  fromEnum TouchEventType_Began = 0
  fromEnum TouchEventType_Moved = 1
  fromEnum TouchEventType_Ended = 2
  fromEnum TouchEventType_Canceled = 3
  
  toEnum (0) = TouchEventType_Began
  toEnum (1) = TouchEventType_Moved
  toEnum (2) = TouchEventType_Ended
  toEnum (3) = TouchEventType_Canceled
  toEnum n' = HoppyP.error $ "Unknown TouchEventType numeric value: " ++ HoppyP.show n'

class UiHelperValue a where
  withUiHelperPtr :: a -> (UiHelperConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} UiHelperConstPtr a => UiHelperValue a where
#else
instance UiHelperConstPtr a => UiHelperValue a where
#endif
  withUiHelperPtr = HoppyP.flip ($) . toUiHelperConst

class (HoppyFHR.CppPtr this) => UiHelperConstPtr this where
  toUiHelperConst :: this -> UiHelperConst

class (UiHelperConstPtr this) => UiHelperPtr this where
  toUiHelper :: this -> UiHelper

uiHelper_seekWidgetByTag :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO Widget
uiHelper_seekWidgetByTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap Widget
  (uiHelper_seekWidgetByTag' arg'1' arg'2')

uiHelper_seekWidgetByName :: (WidgetPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Widget
uiHelper_seekWidgetByName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Widget
  (uiHelper_seekWidgetByName' arg'1' arg'2')

uiHelper_seekActionWidgetByActionTag :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO Widget
uiHelper_seekActionWidgetByActionTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap Widget
  (uiHelper_seekActionWidgetByActionTag' arg'1' arg'2')

uiHelper_doLayout :: (M5.NodePtr arg'1) => arg'1 -> HoppyP.IO ()
uiHelper_doLayout arg'1 =
  HoppyFHR.withCppPtr (M5.toNode arg'1) $ \arg'1' ->
  (uiHelper_doLayout' arg'1')

uiHelper_changeLayoutSystemActiveState ::  HoppyP.Bool -> HoppyP.IO ()
uiHelper_changeLayoutSystemActiveState arg'1 =
  let arg'1' = if arg'1 then 1 else 0 in
  (uiHelper_changeLayoutSystemActiveState' arg'1')

uiHelper_restrictCapInsetRect :: (M2.RectValue arg'1, M2.SizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO M2.Rect
uiHelper_restrictCapInsetRect arg'1 arg'2 =
  M2.withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Rect
  (uiHelper_restrictCapInsetRect' arg'1' arg'2')

uiHelper_convertBoundingBoxToScreen :: (M5.NodePtr arg'1) => arg'1 -> HoppyP.IO M2.Rect
uiHelper_convertBoundingBoxToScreen arg'1 =
  HoppyFHR.withCppPtr (M5.toNode arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Rect
  (uiHelper_convertBoundingBoxToScreen' arg'1')

data UiHelperConst =
    UiHelperConst (HoppyF.Ptr UiHelperConst)
  | UiHelperConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr UiHelperConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq UiHelperConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord UiHelperConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castUiHelperToConst :: UiHelper -> UiHelperConst
castUiHelperToConst (UiHelper ptr') = UiHelperConst $ HoppyF.castPtr ptr'
castUiHelperToConst (UiHelperGc fptr' ptr') = UiHelperConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr UiHelperConst where
  nullptr = UiHelperConst HoppyF.nullPtr
  
  withCppPtr (UiHelperConst ptr') f' = f' ptr'
  withCppPtr (UiHelperConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (UiHelperConst ptr') = ptr'
  toPtr (UiHelperConstGc _ ptr') = ptr'
  
  touchCppPtr (UiHelperConst _) = HoppyP.return ()
  touchCppPtr (UiHelperConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable UiHelperConst where
  delete (UiHelperConst ptr') = delete'UiHelper ptr'
  delete (UiHelperConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "UiHelperConst", " object."]
  
  toGc this'@(UiHelperConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip UiHelperConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'UiHelper :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(UiHelperConstGc {}) = HoppyP.return this'

instance UiHelperConstPtr UiHelperConst where
  toUiHelperConst = HoppyP.id

data UiHelper =
    UiHelper (HoppyF.Ptr UiHelper)
  | UiHelperGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr UiHelper)
  deriving (HoppyP.Show)

instance HoppyP.Eq UiHelper where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord UiHelper where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castUiHelperToNonconst :: UiHelperConst -> UiHelper
castUiHelperToNonconst (UiHelperConst ptr') = UiHelper $ HoppyF.castPtr ptr'
castUiHelperToNonconst (UiHelperConstGc fptr' ptr') = UiHelperGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr UiHelper where
  nullptr = UiHelper HoppyF.nullPtr
  
  withCppPtr (UiHelper ptr') f' = f' ptr'
  withCppPtr (UiHelperGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (UiHelper ptr') = ptr'
  toPtr (UiHelperGc _ ptr') = ptr'
  
  touchCppPtr (UiHelper _) = HoppyP.return ()
  touchCppPtr (UiHelperGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable UiHelper where
  delete (UiHelper ptr') = delete'UiHelper $ (HoppyF.castPtr ptr' :: HoppyF.Ptr UiHelperConst)
  delete (UiHelperGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "UiHelper", " object."]
  
  toGc this'@(UiHelper ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip UiHelperGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'UiHelper :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(UiHelperGc {}) = HoppyP.return this'

instance UiHelperConstPtr UiHelper where
  toUiHelperConst (UiHelper ptr') = UiHelperConst $ (HoppyF.castPtr :: HoppyF.Ptr UiHelper -> HoppyF.Ptr UiHelperConst) ptr'
  toUiHelperConst (UiHelperGc fptr' ptr') = UiHelperConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr UiHelper -> HoppyF.Ptr UiHelperConst) ptr'

instance UiHelperPtr UiHelper where
  toUiHelper = HoppyP.id

class UiHelperSuper a where
  downToUiHelper :: a -> UiHelper


class UiHelperSuperConst a where
  downToUiHelperConst :: a -> UiHelperConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr UiHelper)) UiHelper where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr UiHelper)) UiHelper where
  decode = HoppyP.fmap UiHelper . HoppyF.peek

class WidgetValue a where
  withWidgetPtr :: a -> (WidgetConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} WidgetConstPtr a => WidgetValue a where
#else
instance WidgetConstPtr a => WidgetValue a where
#endif
  withWidgetPtr = HoppyP.flip ($) . toWidgetConst

class (ProtectedNodeConstPtr this) => WidgetConstPtr this where
  toWidgetConst :: this -> WidgetConst

widget_isEnabled :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isEnabled arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isEnabled' arg'1')

widget_isBright :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isBright arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isBright' arg'1')

widget_isTouchEnabled :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isTouchEnabled arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isTouchEnabled' arg'1')

widget_isHighlighted :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isHighlighted arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isHighlighted' arg'1')

widget_getLeftBoundary :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
widget_getLeftBoundary arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (widget_getLeftBoundary' arg'1')

widget_getBottomBoundary :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
widget_getBottomBoundary arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (widget_getBottomBoundary' arg'1')

widget_getRightBoundary :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
widget_getRightBoundary arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (widget_getRightBoundary' arg'1')

widget_getTopBoundary :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
widget_getTopBoundary arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (widget_getTopBoundary' arg'1')

widget_getPositionType :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO PositionType
widget_getPositionType arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (widget_getPositionType' arg'1')

widget_isFlippedX :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isFlippedX arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isFlippedX' arg'1')

widget_isFlippedY :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isFlippedY arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isFlippedY' arg'1')

widget_getTouchBeganPosition :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
widget_getTouchBeganPosition arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (widget_getTouchBeganPosition' arg'1')

widget_getTouchMovePosition :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
widget_getTouchMovePosition arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (widget_getTouchMovePosition' arg'1')

widget_getTouchEndPosition :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
widget_getTouchEndPosition arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (widget_getTouchEndPosition' arg'1')

widget_getSizeType :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO SizeType
widget_getSizeType arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (widget_getSizeType' arg'1')

widget_getCustomSize :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
widget_getCustomSize arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (widget_getCustomSize' arg'1')

widget_isIgnoreContentAdaptWithSize :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isIgnoreContentAdaptWithSize arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isIgnoreContentAdaptWithSize' arg'1')

widget_getActionTag :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
widget_getActionTag arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (widget_getActionTag' arg'1')

widget_isPropagateTouchEvents :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isPropagateTouchEvents arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isPropagateTouchEvents' arg'1')

widget_isSwallowTouches :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isSwallowTouches arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isSwallowTouches' arg'1')

widget_isFocused :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isFocused arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isFocused' arg'1')

widget_isFocusEnabled :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isFocusEnabled arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isFocusEnabled' arg'1')

widget_getCurrentFocusedWidget :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO Widget
widget_getCurrentFocusedWidget arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Widget
  (widget_getCurrentFocusedWidget' arg'1')

widget_isUnifySizeEnabled :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isUnifySizeEnabled arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isUnifySizeEnabled' arg'1')

widget_getCallbackName :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
widget_getCallbackName arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (widget_getCallbackName' arg'1')

widget_getCallbackType :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
widget_getCallbackType arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (widget_getCallbackType' arg'1')

widget_isLayoutComponentEnabled :: (WidgetValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
widget_isLayoutComponentEnabled arg'1 =
  withWidgetPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (widget_isLayoutComponentEnabled' arg'1')

class (WidgetConstPtr this, ProtectedNodePtr this) => WidgetPtr this where
  toWidget :: this -> Widget

widget_setEnabled :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setEnabled' arg'1' arg'2')

widget_setBright :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setBright arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setBright' arg'1' arg'2')

widget_setBrightStyle :: (WidgetPtr arg'1) => arg'1 -> BrightStyle -> HoppyP.IO ()
widget_setBrightStyle arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (widget_setBrightStyle' arg'1' arg'2')

widget_setTouchEnabled :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setTouchEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setTouchEnabled' arg'1' arg'2')

widget_setHighlighted :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setHighlighted arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setHighlighted' arg'1' arg'2')

widget_addTouchEventListener :: (WidgetPtr arg'1) => arg'1 -> (M2.Ref -> TouchEventType -> HoppyP.IO ()) -> HoppyP.IO ()
widget_addTouchEventListener arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  widgetTouchCallback_new arg'2 >>= \arg'2' ->
  (widget_addTouchEventListener' arg'1' arg'2')

widget_addClickEventListener :: (WidgetPtr arg'1) => arg'1 -> (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO ()
widget_addClickEventListener arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  widgetClickCallback_new arg'2 >>= \arg'2' ->
  (widget_addClickEventListener' arg'1' arg'2')

widget_addCCSEventListener :: (WidgetPtr arg'1) => arg'1 -> (M2.Ref -> HoppyP.Int -> HoppyP.IO ()) -> HoppyP.IO ()
widget_addCCSEventListener arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  widgetEventCallback_new arg'2 >>= \arg'2' ->
  (widget_addCCSEventListener' arg'1' arg'2')

widget_setPositionPercent :: (WidgetPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
widget_setPositionPercent arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (widget_setPositionPercent' arg'1' arg'2')

widget_getPositionPercent :: (WidgetPtr arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
widget_getPositionPercent arg'1 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (widget_getPositionPercent' arg'1')

widget_setPositionType :: (WidgetPtr arg'1) => arg'1 -> PositionType -> HoppyP.IO ()
widget_setPositionType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (widget_setPositionType' arg'1' arg'2')

widget_setFlippedX :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setFlippedX arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setFlippedX' arg'1' arg'2')

widget_setFlippedY :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setFlippedY arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setFlippedY' arg'1' arg'2')

widget_isClippingParentContainsPoint :: (WidgetPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
widget_isClippingParentContainsPoint arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (widget_isClippingParentContainsPoint' arg'1' arg'2')

widget_setSizePercent :: (WidgetPtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
widget_setSizePercent arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (widget_setSizePercent' arg'1' arg'2')

widget_setSizeType :: (WidgetPtr arg'1) => arg'1 -> SizeType -> HoppyP.IO ()
widget_setSizeType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (widget_setSizeType' arg'1' arg'2')

widget_getLayoutSize :: (WidgetPtr arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
widget_getLayoutSize arg'1 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (widget_getLayoutSize' arg'1')

widget_getSizePercent :: (WidgetPtr arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
widget_getSizePercent arg'1 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (widget_getSizePercent' arg'1')

widget_ignoreContentAdaptWithSize :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_ignoreContentAdaptWithSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_ignoreContentAdaptWithSize' arg'1' arg'2')

widget_getWorldPosition :: (WidgetPtr arg'1) => arg'1 -> HoppyP.IO (V2 Float)
widget_getWorldPosition arg'1 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (widget_getWorldPosition' arg'1')

widget_setActionTag :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
widget_setActionTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (widget_setActionTag' arg'1' arg'2')

widget_setPropagateTouchEvents :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setPropagateTouchEvents arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setPropagateTouchEvents' arg'1' arg'2')

widget_setSwallowTouches :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setSwallowTouches arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setSwallowTouches' arg'1' arg'2')

widget_setFocused :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setFocused arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setFocused' arg'1' arg'2')

widget_setFocusEnabled :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setFocusEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setFocusEnabled' arg'1' arg'2')

widget_findNextFocusedWidget :: (WidgetPtr arg'1, WidgetPtr arg'3) => arg'1 -> FocusDirection -> arg'3 -> HoppyP.IO Widget
widget_findNextFocusedWidget arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  HoppyFHR.withCppPtr (toWidget arg'3) $ \arg'3' ->
  HoppyP.fmap Widget
  (widget_findNextFocusedWidget' arg'1' arg'2' arg'3')

widget_requestFocus :: (WidgetPtr arg'1) => arg'1 -> HoppyP.IO ()
widget_requestFocus arg'1 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  (widget_requestFocus' arg'1')

widget_enableDpadNavigation :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_enableDpadNavigation arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_enableDpadNavigation' arg'1' arg'2')

widget_setUnifySizeEnabled :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setUnifySizeEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setUnifySizeEnabled' arg'1' arg'2')

widget_setCallbackName :: (WidgetPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
widget_setCallbackName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (widget_setCallbackName' arg'1' arg'2')

widget_setCallbackType :: (WidgetPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
widget_setCallbackType arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (widget_setCallbackType' arg'1' arg'2')

widget_setLayoutComponentEnabled :: (WidgetPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
widget_setLayoutComponentEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toWidget arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (widget_setLayoutComponentEnabled' arg'1' arg'2')

widget_create ::  HoppyP.IO Widget
widget_create =
  HoppyP.fmap Widget
  (widget_create')

data WidgetConst =
    WidgetConst (HoppyF.Ptr WidgetConst)
  | WidgetConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr WidgetConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq WidgetConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord WidgetConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castWidgetToConst :: Widget -> WidgetConst
castWidgetToConst (Widget ptr') = WidgetConst $ HoppyF.castPtr ptr'
castWidgetToConst (WidgetGc fptr' ptr') = WidgetConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr WidgetConst where
  nullptr = WidgetConst HoppyF.nullPtr
  
  withCppPtr (WidgetConst ptr') f' = f' ptr'
  withCppPtr (WidgetConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (WidgetConst ptr') = ptr'
  toPtr (WidgetConstGc _ ptr') = ptr'
  
  touchCppPtr (WidgetConst _) = HoppyP.return ()
  touchCppPtr (WidgetConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable WidgetConst where
  delete (WidgetConst ptr') = delete'Widget ptr'
  delete (WidgetConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "WidgetConst", " object."]
  
  toGc this'@(WidgetConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip WidgetConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Widget :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(WidgetConstGc {}) = HoppyP.return this'

instance WidgetConstPtr WidgetConst where
  toWidgetConst = HoppyP.id

instance ProtectedNodeConstPtr WidgetConst where
  toProtectedNodeConst (WidgetConst ptr') = ProtectedNodeConst $ castWidgetToProtectedNode ptr'
  toProtectedNodeConst (WidgetConstGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castWidgetToProtectedNode ptr'

instance M5.NodeConstPtr WidgetConst where
  toNodeConst (WidgetConst ptr') = M5.NodeConst $ castWidgetToNode ptr'
  toNodeConst (WidgetConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castWidgetToNode ptr'

instance M2.RefConstPtr WidgetConst where
  toRefConst (WidgetConst ptr') = M2.RefConst $ castWidgetToRef ptr'
  toRefConst (WidgetConstGc fptr' ptr') = M2.RefConstGc fptr' $ castWidgetToRef ptr'

data Widget =
    Widget (HoppyF.Ptr Widget)
  | WidgetGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Widget)
  deriving (HoppyP.Show)

instance HoppyP.Eq Widget where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Widget where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castWidgetToNonconst :: WidgetConst -> Widget
castWidgetToNonconst (WidgetConst ptr') = Widget $ HoppyF.castPtr ptr'
castWidgetToNonconst (WidgetConstGc fptr' ptr') = WidgetGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Widget where
  nullptr = Widget HoppyF.nullPtr
  
  withCppPtr (Widget ptr') f' = f' ptr'
  withCppPtr (WidgetGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Widget ptr') = ptr'
  toPtr (WidgetGc _ ptr') = ptr'
  
  touchCppPtr (Widget _) = HoppyP.return ()
  touchCppPtr (WidgetGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Widget where
  delete (Widget ptr') = delete'Widget $ (HoppyF.castPtr ptr' :: HoppyF.Ptr WidgetConst)
  delete (WidgetGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Widget", " object."]
  
  toGc this'@(Widget ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip WidgetGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Widget :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(WidgetGc {}) = HoppyP.return this'

instance WidgetConstPtr Widget where
  toWidgetConst (Widget ptr') = WidgetConst $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toWidgetConst (WidgetGc fptr' ptr') = WidgetConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance WidgetPtr Widget where
  toWidget = HoppyP.id

instance ProtectedNodeConstPtr Widget where
  toProtectedNodeConst (Widget ptr') = ProtectedNodeConst $ castWidgetToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toProtectedNodeConst (WidgetGc fptr' ptr') = ProtectedNodeConstGc fptr' $ castWidgetToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance ProtectedNodePtr Widget where
  toProtectedNode (Widget ptr') = ProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castWidgetToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toProtectedNode (WidgetGc fptr' ptr') = ProtectedNodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr ProtectedNodeConst -> HoppyF.Ptr ProtectedNode) $ castWidgetToProtectedNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance M5.NodeConstPtr Widget where
  toNodeConst (Widget ptr') = M5.NodeConst $ castWidgetToNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toNodeConst (WidgetGc fptr' ptr') = M5.NodeConstGc fptr' $ castWidgetToNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance M5.NodePtr Widget where
  toNode (Widget ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castWidgetToNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toNode (WidgetGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castWidgetToNode $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance M2.RefConstPtr Widget where
  toRefConst (Widget ptr') = M2.RefConst $ castWidgetToRef $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toRefConst (WidgetGc fptr' ptr') = M2.RefConstGc fptr' $ castWidgetToRef $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

instance M2.RefPtr Widget where
  toRef (Widget ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castWidgetToRef $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'
  toRef (WidgetGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castWidgetToRef $ (HoppyF.castPtr :: HoppyF.Ptr Widget -> HoppyF.Ptr WidgetConst) ptr'

class WidgetSuper a where
  downToWidget :: a -> Widget

instance WidgetSuper ProtectedNode where
  downToWidget = castWidgetToNonconst . cast' . castProtectedNodeToConst
    where
      cast' (ProtectedNodeConst ptr') = WidgetConst $ castProtectedNodeToWidget ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = WidgetConstGc fptr' $ castProtectedNodeToWidget ptr'
instance WidgetSuper M5.Node where
  downToWidget = castWidgetToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = WidgetConst $ castNodeToWidget ptr'
      cast' (M5.NodeConstGc fptr' ptr') = WidgetConstGc fptr' $ castNodeToWidget ptr'
instance WidgetSuper M2.Ref where
  downToWidget = castWidgetToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = WidgetConst $ castRefToWidget ptr'
      cast' (M2.RefConstGc fptr' ptr') = WidgetConstGc fptr' $ castRefToWidget ptr'

class WidgetSuperConst a where
  downToWidgetConst :: a -> WidgetConst

instance WidgetSuperConst ProtectedNodeConst where
  downToWidgetConst = cast'
    where
      cast' (ProtectedNodeConst ptr') = WidgetConst $ castProtectedNodeToWidget ptr'
      cast' (ProtectedNodeConstGc fptr' ptr') = WidgetConstGc fptr' $ castProtectedNodeToWidget ptr'
instance WidgetSuperConst M5.NodeConst where
  downToWidgetConst = cast'
    where
      cast' (M5.NodeConst ptr') = WidgetConst $ castNodeToWidget ptr'
      cast' (M5.NodeConstGc fptr' ptr') = WidgetConstGc fptr' $ castNodeToWidget ptr'
instance WidgetSuperConst M2.RefConst where
  downToWidgetConst = cast'
    where
      cast' (M2.RefConst ptr') = WidgetConst $ castRefToWidget ptr'
      cast' (M2.RefConstGc fptr' ptr') = WidgetConstGc fptr' $ castRefToWidget ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Widget)) Widget where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Widget)) Widget where
  decode = HoppyP.fmap Widget . HoppyF.peek

widgetClickCallback_newFunPtr :: (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
widgetClickCallback_newFunPtr f'hs = widgetClickCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = M2.Ref arg'1 in
  (f'hs arg'1')

widgetClickCallback_new :: (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
widgetClickCallback_new f'hs = do
  f'p <- widgetClickCallback_newFunPtr f'hs
  widgetClickCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

widgetEventCallback_newFunPtr :: (M2.Ref -> HoppyP.Int -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
widgetEventCallback_newFunPtr f'hs = widgetEventCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = M2.Ref arg'1 in
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (f'hs arg'1' arg'2')

widgetEventCallback_new :: (M2.Ref -> HoppyP.Int -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
widgetEventCallback_new f'hs = do
  f'p <- widgetEventCallback_newFunPtr f'hs
  widgetEventCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

widgetTouchCallback_newFunPtr :: (M2.Ref -> TouchEventType -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
widgetTouchCallback_newFunPtr f'hs = widgetTouchCallback_new'newFunPtr $ \arg'1 arg'2 ->
  let arg'1' = M2.Ref arg'1 in
  let arg'2' = HoppyP.toEnum $ HoppyFHR.coerceIntegral arg'2 in
  (f'hs arg'1' arg'2')

widgetTouchCallback_new :: (M2.Ref -> TouchEventType -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyFC.CInt -> HoppyP.IO ()))
widgetTouchCallback_new f'hs = do
  f'p <- widgetTouchCallback_newFunPtr f'hs
  widgetTouchCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False