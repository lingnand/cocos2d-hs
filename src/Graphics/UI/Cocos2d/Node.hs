{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Node (
  castNodeToRef,
  castRefToNode,
  NodeValue (..),
  NodeConstPtr (..),
  node_getLocalZOrder,
  node_getGlobalZOrder,
  node_getScaleX,
  node_getScaleY,
  node_getScaleZ,
  node_getScale,
  node_getPosition,
  node_getNormalizedPosition,
  node_getPositionZ,
  node_getSkewX,
  node_getSkewY,
  node_getAnchorPoint,
  node_getAnchorPointInPoints,
  node_getContentSize,
  node_isVisible,
  node_getRotation,
  node_getRotationSkewX,
  node_getRotationSkewY,
  node_getOrderOfArrival,
  node_isIgnoreAnchorPointForPosition,
  node_getChildByTag,
  node_getChildByName,
  node_getChildrenCount,
  node_getTag,
  node_getName,
  node_getUserDataConst,
  node_getUserObjectConst,
  node_isRunning,
  node_getNodeToParentTransform,
  node_getNodeToParentAffineTransform,
  node_getNodeToAncestorTransform,
  node_getNodeToAncestorAffineTransform,
  node_getParentToNodeTransform,
  node_getParentToNodeAffineTransform,
  node_getNodeToWorldTransform,
  node_getNodeToWorldAffineTransform,
  node_getWorldToNodeTransform,
  node_getWorldToNodeAffineTransform,
  node_convertToNodeSpace,
  node_convertToWorldSpace,
  node_convertToNodeSpaceAR,
  node_convertToWorldSpaceAR,
  node_getOpacity,
  node_getDisplayedOpacity,
  node_isCascadeOpacityEnabled,
  node_getColor,
  node_getDisplayedColor,
  node_isCascadeColorEnabled,
  node_isOpacityModifyRGB,
  NodePtr (..),
  node_setLocalZOrder,
  node_setGlobalZOrder,
  node_setScaleX,
  node_setScaleY,
  node_setScaleZ,
  node_setScale,
  node_setScaleXY,
  node_setPosition,
  node_setNormalizedPosition,
  node_setPositionZ,
  node_setSkewX,
  node_setSkewY,
  node_setAnchorPoint,
  node_setContentSize,
  node_setVisible,
  node_setRotation,
  node_setRotationSkewX,
  node_setRotationSkewY,
  node_setOrderOfArrival,
  node_ignoreAnchorPointForPosition,
  node_addChild,
  node_addChildWithLocalZOrder,
  node_addChildWithLocalZOrderAndTag,
  node_addChildWithLocalZOrderAndName,
  node_removeFromParent,
  node_removeFromParentWithCleanup,
  node_removeChild,
  node_removeChildWithCleanup,
  node_removeChildByTag,
  node_removeChildByTagWithCleanup,
  node_removeChildByName,
  node_removeChildByNameWithCleanup,
  node_removeAllChildren,
  node_removeAllChildrenWithCleanup,
  node_reorderChild,
  node_sortAllChildren,
  node_setTag,
  node_setName,
  node_getUserData,
  node_setUserData,
  node_getUserObject,
  node_setUserObject,
  node_cleanup,
  node_getBoundingBox,
  node_stopAllActions,
  node_setNodeToParentTransform,
  node_setOpacity,
  node_updateDisplayedOpacity,
  node_setCascadeOpacityEnabled,
  node_setColor,
  node_updateDisplayedColor,
  node_setCascadeColorEnabled,
  node_setOpacityModifyRGB,
  node_create,
  NodeConst (..),
  castNodeToConst,
  Node (..),
  castNodeToNonconst,
  NodeSuper (..),
  NodeSuperConst (..),
  ) where

import qualified Data.Word as HoppyDW
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Std as M1
import Linear.V2
import Prelude (($), (.), (/=), (=<<), (==), Float)
import qualified Prelude as HoppyP
import qualified System.Posix.Types as HoppySPT

foreign import ccall "genpop__Node_create" node_create' ::   HoppyP.IO (HoppyF.Ptr Node)
foreign import ccall "genpop__Node_getLocalZOrder" node_getLocalZOrder' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Node_setLocalZOrder" node_setLocalZOrder' ::   HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_getGlobalZOrder" node_getGlobalZOrder' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setGlobalZOrder" node_setGlobalZOrder' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getScaleX" node_getScaleX' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setScaleX" node_setScaleX' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getScaleY" node_getScaleY' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setScaleY" node_setScaleY' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getScaleZ" node_getScaleZ' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setScaleZ" node_setScaleZ' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getScale" node_getScale' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setScale" node_setScale' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_setScaleXY" node_setScaleXY' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getPosition" node_getPosition' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_setPosition" node_setPosition' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Node_getNormalizedPosition" node_getNormalizedPosition' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_setNormalizedPosition" node_setNormalizedPosition' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Node_getPositionZ" node_getPositionZ' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setPositionZ" node_setPositionZ' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getSkewX" node_getSkewX' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setSkewX" node_setSkewX' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getSkewY" node_getSkewY' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setSkewY" node_setSkewY' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getAnchorPoint" node_getAnchorPoint' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_setAnchorPoint" node_setAnchorPoint' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Node_getAnchorPointInPoints" node_getAnchorPointInPoints' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_getContentSize" node_getContentSize' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Node_setContentSize" node_setContentSize' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.SizeConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_isVisible" node_isVisible' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_setVisible" node_setVisible' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_getRotation" node_getRotation' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setRotation" node_setRotation' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getRotationSkewX" node_getRotationSkewX' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setRotationSkewX" node_setRotationSkewX' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getRotationSkewY" node_getRotationSkewY' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Node_setRotationSkewY" node_setRotationSkewY' ::   HoppyF.Ptr Node -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Node_getOrderOfArrival" node_getOrderOfArrival' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Node_setOrderOfArrival" node_setOrderOfArrival' ::   HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_isIgnoreAnchorPointForPosition" node_isIgnoreAnchorPointForPosition' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_ignoreAnchorPointForPosition" node_ignoreAnchorPointForPosition' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_addChild" node_addChild' ::   HoppyF.Ptr Node -> HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_addChildWithLocalZOrder" node_addChildWithLocalZOrder' ::   HoppyF.Ptr Node -> HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_addChildWithLocalZOrderAndTag" node_addChildWithLocalZOrderAndTag' ::   HoppyF.Ptr Node ->    HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_addChildWithLocalZOrderAndName" node_addChildWithLocalZOrderAndName' ::   HoppyF.Ptr Node ->    HoppyF.Ptr Node ->      HoppyFC.CInt -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_getChildByTag" node_getChildByTag' ::   HoppyF.Ptr NodeConst -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Node)
foreign import ccall "genpop__Node_getChildByName" node_getChildByName' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Node)
foreign import ccall "genpop__Node_getChildrenCount" node_getChildrenCount' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppySPT.CSsize
foreign import ccall "genpop__Node_removeFromParent" node_removeFromParent' ::   HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeFromParentWithCleanup" node_removeFromParentWithCleanup' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChild" node_removeChild' ::   HoppyF.Ptr Node -> HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChildWithCleanup" node_removeChildWithCleanup' ::   HoppyF.Ptr Node ->    HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChildByTag" node_removeChildByTag' ::   HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChildByTagWithCleanup" node_removeChildByTagWithCleanup' ::   HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChildByName" node_removeChildByName' ::   HoppyF.Ptr Node -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeChildByNameWithCleanup" node_removeChildByNameWithCleanup' ::   HoppyF.Ptr Node ->    HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeAllChildren" node_removeAllChildren' ::   HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_removeAllChildrenWithCleanup" node_removeAllChildrenWithCleanup' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_reorderChild" node_reorderChild' ::   HoppyF.Ptr Node -> HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_sortAllChildren" node_sortAllChildren' ::   HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_getTag" node_getTag' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Node_setTag" node_setTag' ::   HoppyF.Ptr Node -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Node_getName" node_getName' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Node_setName" node_setName' ::   HoppyF.Ptr Node -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_getUserDataConst" node_getUserDataConst' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr ())
foreign import ccall "genpop__Node_getUserData" node_getUserData' ::   HoppyF.Ptr Node -> HoppyP.IO (HoppyF.Ptr ())
foreign import ccall "genpop__Node_setUserData" node_setUserData' ::   HoppyF.Ptr Node -> HoppyF.Ptr () -> HoppyP.IO ()
foreign import ccall "genpop__Node_getUserObjectConst" node_getUserObjectConst' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.RefConst)
foreign import ccall "genpop__Node_getUserObject" node_getUserObject' ::   HoppyF.Ptr Node -> HoppyP.IO (HoppyF.Ptr M2.Ref)
foreign import ccall "genpop__Node_setUserObject" node_setUserObject' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Ref -> HoppyP.IO ()
foreign import ccall "genpop__Node_isRunning" node_isRunning' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_cleanup" node_cleanup' ::   HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_getBoundingBox" node_getBoundingBox' ::   HoppyF.Ptr Node -> HoppyP.IO (HoppyF.Ptr M2.Rect)
foreign import ccall "genpop__Node_stopAllActions" node_stopAllActions' ::   HoppyF.Ptr Node -> HoppyP.IO ()
foreign import ccall "genpop__Node_getNodeToParentTransform" node_getNodeToParentTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Mat4Const)
foreign import ccall "genpop__Node_getNodeToParentAffineTransform" node_getNodeToParentAffineTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.AffineTransform)
foreign import ccall "genpop__Node_getNodeToAncestorTransform" node_getNodeToAncestorTransform' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr Node -> HoppyP.IO (HoppyF.Ptr M2.Mat4)
foreign import ccall "genpop__Node_getNodeToAncestorAffineTransform" node_getNodeToAncestorAffineTransform' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr Node -> HoppyP.IO (HoppyF.Ptr M2.AffineTransform)
foreign import ccall "genpop__Node_setNodeToParentTransform" node_setNodeToParentTransform' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Mat4Const -> HoppyP.IO ()
foreign import ccall "genpop__Node_getParentToNodeTransform" node_getParentToNodeTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Mat4Const)
foreign import ccall "genpop__Node_getParentToNodeAffineTransform" node_getParentToNodeAffineTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.AffineTransform)
foreign import ccall "genpop__Node_getNodeToWorldTransform" node_getNodeToWorldTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Mat4)
foreign import ccall "genpop__Node_getNodeToWorldAffineTransform" node_getNodeToWorldAffineTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.AffineTransform)
foreign import ccall "genpop__Node_getWorldToNodeTransform" node_getWorldToNodeTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Mat4)
foreign import ccall "genpop__Node_getWorldToNodeAffineTransform" node_getWorldToNodeAffineTransform' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.AffineTransform)
foreign import ccall "genpop__Node_convertToNodeSpace" node_convertToNodeSpace' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_convertToWorldSpace" node_convertToWorldSpace' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_convertToNodeSpaceAR" node_convertToNodeSpaceAR' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_convertToWorldSpaceAR" node_convertToWorldSpaceAR' ::   HoppyF.Ptr NodeConst ->    HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Node_getOpacity" node_getOpacity' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Node_getDisplayedOpacity" node_getDisplayedOpacity' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Node_setOpacity" node_setOpacity' ::   HoppyF.Ptr Node -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Node_updateDisplayedOpacity" node_updateDisplayedOpacity' ::   HoppyF.Ptr Node -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Node_isCascadeOpacityEnabled" node_isCascadeOpacityEnabled' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_setCascadeOpacityEnabled" node_setCascadeOpacityEnabled' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_getColor" node_getColor' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Node_getDisplayedColor" node_getDisplayedColor' ::   HoppyF.Ptr NodeConst -> HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__Node_setColor" node_setColor' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_updateDisplayedColor" node_updateDisplayedColor' ::   HoppyF.Ptr Node -> HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__Node_isCascadeColorEnabled" node_isCascadeColorEnabled' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_setCascadeColorEnabled" node_setCascadeColorEnabled' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Node_isOpacityModifyRGB" node_isOpacityModifyRGB' ::   HoppyF.Ptr NodeConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Node_setOpacityModifyRGB" node_setOpacityModifyRGB' ::   HoppyF.Ptr Node -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "gencast__Node__Ref" castNodeToRef :: HoppyF.Ptr NodeConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Node" castRefToNode :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr NodeConst
foreign import ccall "gendel__Node" delete'Node :: HoppyF.Ptr NodeConst -> HoppyP.IO ()
foreign import ccall "&gendel__Node" deletePtr'Node :: HoppyF.FunPtr (HoppyF.Ptr NodeConst -> HoppyP.IO ())

class NodeValue a where
  withNodePtr :: a -> (NodeConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} NodeConstPtr a => NodeValue a where
#else
instance NodeConstPtr a => NodeValue a where
#endif
  withNodePtr = HoppyP.flip ($) . toNodeConst

class (M2.RefConstPtr this) => NodeConstPtr this where
  toNodeConst :: this -> NodeConst

node_getLocalZOrder :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
node_getLocalZOrder arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (node_getLocalZOrder' arg'1')

node_getGlobalZOrder :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getGlobalZOrder arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getGlobalZOrder' arg'1')

node_getScaleX :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getScaleX arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getScaleX' arg'1')

node_getScaleY :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getScaleY arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getScaleY' arg'1')

node_getScaleZ :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getScaleZ arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getScaleZ' arg'1')

node_getScale :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getScale arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getScale' arg'1')

node_getPosition :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
node_getPosition arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (node_getPosition' arg'1')

node_getNormalizedPosition :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
node_getNormalizedPosition arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (node_getNormalizedPosition' arg'1')

node_getPositionZ :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getPositionZ arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getPositionZ' arg'1')

node_getSkewX :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getSkewX arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getSkewX' arg'1')

node_getSkewY :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getSkewY arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getSkewY' arg'1')

node_getAnchorPoint :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
node_getAnchorPoint arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (node_getAnchorPoint' arg'1')

node_getAnchorPointInPoints :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
node_getAnchorPointInPoints arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (node_getAnchorPointInPoints' arg'1')

node_getContentSize :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
node_getContentSize arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (node_getContentSize' arg'1')

node_isVisible :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isVisible arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isVisible' arg'1')

node_getRotation :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getRotation arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getRotation' arg'1')

node_getRotationSkewX :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getRotationSkewX arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getRotationSkewX' arg'1')

node_getRotationSkewY :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
node_getRotationSkewY arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (node_getRotationSkewY' arg'1')

node_getOrderOfArrival :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
node_getOrderOfArrival arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (node_getOrderOfArrival' arg'1')

node_isIgnoreAnchorPointForPosition :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isIgnoreAnchorPointForPosition arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isIgnoreAnchorPointForPosition' arg'1')

node_getChildByTag :: (NodeValue arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO Node
node_getChildByTag arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap Node
  (node_getChildByTag' arg'1' arg'2')

node_getChildByName :: (NodeValue arg'1, M1.StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO Node
node_getChildByName arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Node
  (node_getChildByName' arg'1' arg'2')

node_getChildrenCount :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppySPT.CSsize
node_getChildrenCount arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (node_getChildrenCount' arg'1')

node_getTag :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
node_getTag arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (node_getTag' arg'1')

node_getName :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
node_getName arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (node_getName' arg'1')

node_getUserDataConst :: (NodeValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr ())
node_getUserDataConst arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (node_getUserDataConst' arg'1')

node_getUserObjectConst :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.RefConst
node_getUserObjectConst arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RefConst
  (node_getUserObjectConst' arg'1')

node_isRunning :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isRunning arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isRunning' arg'1')

node_getNodeToParentTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Mat4Const
node_getNodeToParentTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Mat4Const
  (node_getNodeToParentTransform' arg'1')

node_getNodeToParentAffineTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.AffineTransform
node_getNodeToParentAffineTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.AffineTransform
  (node_getNodeToParentAffineTransform' arg'1')

node_getNodeToAncestorTransform :: (NodeValue arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO M2.Mat4
node_getNodeToAncestorTransform arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Mat4
  (node_getNodeToAncestorTransform' arg'1' arg'2')

node_getNodeToAncestorAffineTransform :: (NodeValue arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO M2.AffineTransform
node_getNodeToAncestorAffineTransform arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.AffineTransform
  (node_getNodeToAncestorAffineTransform' arg'1' arg'2')

node_getParentToNodeTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Mat4Const
node_getParentToNodeTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Mat4Const
  (node_getParentToNodeTransform' arg'1')

node_getParentToNodeAffineTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.AffineTransform
node_getParentToNodeAffineTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.AffineTransform
  (node_getParentToNodeAffineTransform' arg'1')

node_getNodeToWorldTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Mat4
node_getNodeToWorldTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Mat4
  (node_getNodeToWorldTransform' arg'1')

node_getNodeToWorldAffineTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.AffineTransform
node_getNodeToWorldAffineTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.AffineTransform
  (node_getNodeToWorldAffineTransform' arg'1')

node_getWorldToNodeTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Mat4
node_getWorldToNodeTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Mat4
  (node_getWorldToNodeTransform' arg'1')

node_getWorldToNodeAffineTransform :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.AffineTransform
node_getWorldToNodeAffineTransform arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.AffineTransform
  (node_getWorldToNodeAffineTransform' arg'1')

node_convertToNodeSpace :: (NodeValue arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
node_convertToNodeSpace arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (node_convertToNodeSpace' arg'1' arg'2')

node_convertToWorldSpace :: (NodeValue arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
node_convertToWorldSpace arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (node_convertToWorldSpace' arg'1' arg'2')

node_convertToNodeSpaceAR :: (NodeValue arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
node_convertToNodeSpaceAR arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (node_convertToNodeSpaceAR' arg'1' arg'2')

node_convertToWorldSpaceAR :: (NodeValue arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO (V2 Float)
node_convertToWorldSpaceAR arg'1 arg'2 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M2.Vec2Const) =<<
  (node_convertToWorldSpaceAR' arg'1' arg'2')

node_getOpacity :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
node_getOpacity arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (node_getOpacity' arg'1')

node_getDisplayedOpacity :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
node_getDisplayedOpacity arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (node_getDisplayedOpacity' arg'1')

node_isCascadeOpacityEnabled :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isCascadeOpacityEnabled arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isCascadeOpacityEnabled' arg'1')

node_getColor :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
node_getColor arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (node_getColor' arg'1')

node_getDisplayedColor :: (NodeValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
node_getDisplayedColor arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (node_getDisplayedColor' arg'1')

node_isCascadeColorEnabled :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isCascadeColorEnabled arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isCascadeColorEnabled' arg'1')

node_isOpacityModifyRGB :: (NodeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
node_isOpacityModifyRGB arg'1 =
  withNodePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (node_isOpacityModifyRGB' arg'1')

class (NodeConstPtr this, M2.RefPtr this) => NodePtr this where
  toNode :: this -> Node

node_setLocalZOrder :: (NodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
node_setLocalZOrder arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (node_setLocalZOrder' arg'1' arg'2')

node_setGlobalZOrder :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setGlobalZOrder arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setGlobalZOrder' arg'1' arg'2')

node_setScaleX :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setScaleX arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setScaleX' arg'1' arg'2')

node_setScaleY :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setScaleY arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setScaleY' arg'1' arg'2')

node_setScaleZ :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setScaleZ arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setScaleZ' arg'1' arg'2')

node_setScale :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setScale arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setScale' arg'1' arg'2')

node_setScaleXY :: (NodePtr arg'1) =>  arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
node_setScaleXY arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  (node_setScaleXY' arg'1' arg'2' arg'3')

node_setPosition :: (NodePtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setPosition arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setPosition' arg'1' arg'2')

node_setNormalizedPosition :: (NodePtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setNormalizedPosition arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setNormalizedPosition' arg'1' arg'2')

node_setPositionZ :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setPositionZ arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setPositionZ' arg'1' arg'2')

node_setSkewX :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setSkewX arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setSkewX' arg'1' arg'2')

node_setSkewY :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setSkewY arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setSkewY' arg'1' arg'2')

node_setAnchorPoint :: (NodePtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setAnchorPoint arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setAnchorPoint' arg'1' arg'2')

node_setContentSize :: (NodePtr arg'1, M2.SizeValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setContentSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setContentSize' arg'1' arg'2')

node_setVisible :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_setVisible arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_setVisible' arg'1' arg'2')

node_setRotation :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setRotation arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setRotation' arg'1' arg'2')

node_setRotationSkewX :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setRotationSkewX arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setRotationSkewX' arg'1' arg'2')

node_setRotationSkewY :: (NodePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
node_setRotationSkewY arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (node_setRotationSkewY' arg'1' arg'2')

node_setOrderOfArrival :: (NodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
node_setOrderOfArrival arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (node_setOrderOfArrival' arg'1' arg'2')

node_ignoreAnchorPointForPosition :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_ignoreAnchorPointForPosition arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_ignoreAnchorPointForPosition' arg'1' arg'2')

node_addChild :: (NodePtr arg'1, NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
node_addChild arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  (node_addChild' arg'1' arg'2')

node_addChildWithLocalZOrder :: (NodePtr arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
node_addChildWithLocalZOrder arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (node_addChildWithLocalZOrder' arg'1' arg'2' arg'3')

node_addChildWithLocalZOrderAndTag :: (NodePtr arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO ()
node_addChildWithLocalZOrderAndTag arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  (node_addChildWithLocalZOrderAndTag' arg'1' arg'2' arg'3' arg'4')

node_addChildWithLocalZOrderAndName :: (NodePtr arg'1, NodePtr arg'2, M1.StdStringValue arg'4) =>  arg'1 -> arg'2 -> HoppyP.Int -> arg'4 -> HoppyP.IO ()
node_addChildWithLocalZOrderAndName arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  M1.withStdStringPtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  (node_addChildWithLocalZOrderAndName' arg'1' arg'2' arg'3' arg'4')

node_removeFromParent :: (NodePtr arg'1) => arg'1 -> HoppyP.IO ()
node_removeFromParent arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_removeFromParent' arg'1')

node_removeFromParentWithCleanup :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_removeFromParentWithCleanup arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_removeFromParentWithCleanup' arg'1' arg'2')

node_removeChild :: (NodePtr arg'1, NodePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
node_removeChild arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  (node_removeChild' arg'1' arg'2')

node_removeChildWithCleanup :: (NodePtr arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
node_removeChildWithCleanup arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (node_removeChildWithCleanup' arg'1' arg'2' arg'3')

node_removeChildByTag :: (NodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
node_removeChildByTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (node_removeChildByTag' arg'1' arg'2')

node_removeChildByTagWithCleanup :: (NodePtr arg'1) =>  arg'1 -> HoppyP.Int -> HoppyP.Bool -> HoppyP.IO ()
node_removeChildByTagWithCleanup arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  let arg'3' = if arg'3 then 1 else 0 in
  (node_removeChildByTagWithCleanup' arg'1' arg'2' arg'3')

node_removeChildByName :: (NodePtr arg'1, M1.StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_removeChildByName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_removeChildByName' arg'1' arg'2')

node_removeChildByNameWithCleanup :: (NodePtr arg'1, M1.StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.Bool -> HoppyP.IO ()
node_removeChildByNameWithCleanup arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = if arg'3 then 1 else 0 in
  (node_removeChildByNameWithCleanup' arg'1' arg'2' arg'3')

node_removeAllChildren :: (NodePtr arg'1) => arg'1 -> HoppyP.IO ()
node_removeAllChildren arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_removeAllChildren' arg'1')

node_removeAllChildrenWithCleanup :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_removeAllChildrenWithCleanup arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_removeAllChildrenWithCleanup' arg'1' arg'2')

node_reorderChild :: (NodePtr arg'1, NodePtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
node_reorderChild arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toNode arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (node_reorderChild' arg'1' arg'2' arg'3')

node_sortAllChildren :: (NodePtr arg'1) => arg'1 -> HoppyP.IO ()
node_sortAllChildren arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_sortAllChildren' arg'1')

node_setTag :: (NodePtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
node_setTag arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (node_setTag' arg'1' arg'2')

node_setName :: (NodePtr arg'1, M1.StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setName' arg'1' arg'2')

node_getUserData :: (NodePtr arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr ())
node_getUserData arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_getUserData' arg'1')

node_setUserData :: (NodePtr arg'1) => arg'1 -> HoppyF.Ptr () -> HoppyP.IO ()
node_setUserData arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (node_setUserData' arg'1' arg'2')

node_getUserObject :: (NodePtr arg'1) => arg'1 -> HoppyP.IO M2.Ref
node_getUserObject arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyP.fmap M2.Ref
  (node_getUserObject' arg'1')

node_setUserObject :: (NodePtr arg'1, M2.RefPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
node_setUserObject arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M2.toRef arg'2) $ \arg'2' ->
  (node_setUserObject' arg'1' arg'2')

node_cleanup :: (NodePtr arg'1) => arg'1 -> HoppyP.IO ()
node_cleanup arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_cleanup' arg'1')

node_getBoundingBox :: (NodePtr arg'1) => arg'1 -> HoppyP.IO M2.Rect
node_getBoundingBox arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap M2.Rect
  (node_getBoundingBox' arg'1')

node_stopAllActions :: (NodePtr arg'1) => arg'1 -> HoppyP.IO ()
node_stopAllActions arg'1 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  (node_stopAllActions' arg'1')

node_setNodeToParentTransform :: (NodePtr arg'1, M2.Mat4Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setNodeToParentTransform arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withMat4Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setNodeToParentTransform' arg'1' arg'2')

node_setOpacity :: (NodePtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
node_setOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (node_setOpacity' arg'1' arg'2')

node_updateDisplayedOpacity :: (NodePtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
node_updateDisplayedOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (node_updateDisplayedOpacity' arg'1' arg'2')

node_setCascadeOpacityEnabled :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_setCascadeOpacityEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_setCascadeOpacityEnabled' arg'1' arg'2')

node_setColor :: (NodePtr arg'1, M2.Color3BValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_setColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_setColor' arg'1' arg'2')

node_updateDisplayedColor :: (NodePtr arg'1, M2.Color3BValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
node_updateDisplayedColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (node_updateDisplayedColor' arg'1' arg'2')

node_setCascadeColorEnabled :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_setCascadeColorEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_setCascadeColorEnabled' arg'1' arg'2')

node_setOpacityModifyRGB :: (NodePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
node_setOpacityModifyRGB arg'1 arg'2 =
  HoppyFHR.withCppPtr (toNode arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (node_setOpacityModifyRGB' arg'1' arg'2')

node_create ::   HoppyP.IO Node
node_create =
  HoppyP.fmap Node
  (node_create')

data NodeConst =
    NodeConst (HoppyF.Ptr NodeConst)
  | NodeConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr NodeConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq NodeConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord NodeConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castNodeToConst :: Node -> NodeConst
castNodeToConst (Node ptr') = NodeConst $ HoppyF.castPtr ptr'
castNodeToConst (NodeGc fptr' ptr') = NodeConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr NodeConst where
  nullptr = NodeConst HoppyF.nullPtr
  
  withCppPtr (NodeConst ptr') f' = f' ptr'
  withCppPtr (NodeConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (NodeConst ptr') = ptr'
  toPtr (NodeConstGc _ ptr') = ptr'
  
  touchCppPtr (NodeConst _) = HoppyP.return ()
  touchCppPtr (NodeConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable NodeConst where
  delete (NodeConst ptr') = delete'Node ptr'
  delete (NodeConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "NodeConst", " object."]
  
  toGc this'@(NodeConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip NodeConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Node :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(NodeConstGc {}) = HoppyP.return this'

instance NodeConstPtr NodeConst where
  toNodeConst = HoppyP.id

instance M2.RefConstPtr NodeConst where
  toRefConst (NodeConst ptr') = M2.RefConst $ castNodeToRef ptr'
  toRefConst (NodeConstGc fptr' ptr') = M2.RefConstGc fptr' $ castNodeToRef ptr'

data Node =
    Node (HoppyF.Ptr Node)
  | NodeGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Node)
  deriving (HoppyP.Show)

instance HoppyP.Eq Node where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Node where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castNodeToNonconst :: NodeConst -> Node
castNodeToNonconst (NodeConst ptr') = Node $ HoppyF.castPtr ptr'
castNodeToNonconst (NodeConstGc fptr' ptr') = NodeGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Node where
  nullptr = Node HoppyF.nullPtr
  
  withCppPtr (Node ptr') f' = f' ptr'
  withCppPtr (NodeGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Node ptr') = ptr'
  toPtr (NodeGc _ ptr') = ptr'
  
  touchCppPtr (Node _) = HoppyP.return ()
  touchCppPtr (NodeGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Node where
  delete (Node ptr') = delete'Node $ (HoppyF.castPtr ptr' :: HoppyF.Ptr NodeConst)
  delete (NodeGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Node", " object."]
  
  toGc this'@(Node ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip NodeGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Node :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(NodeGc {}) = HoppyP.return this'

instance NodeConstPtr Node where
  toNodeConst (Node ptr') = NodeConst $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'
  toNodeConst (NodeGc fptr' ptr') = NodeConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'

instance NodePtr Node where
  toNode = HoppyP.id

instance M2.RefConstPtr Node where
  toRefConst (Node ptr') = M2.RefConst $ castNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'
  toRefConst (NodeGc fptr' ptr') = M2.RefConstGc fptr' $ castNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'

instance M2.RefPtr Node where
  toRef (Node ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'
  toRef (NodeGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castNodeToRef $ (HoppyF.castPtr :: HoppyF.Ptr Node -> HoppyF.Ptr NodeConst) ptr'

class NodeSuper a where
  downToNode :: a -> Node

instance NodeSuper M2.Ref where
  downToNode = castNodeToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = NodeConst $ castRefToNode ptr'
      cast' (M2.RefConstGc fptr' ptr') = NodeConstGc fptr' $ castRefToNode ptr'

class NodeSuperConst a where
  downToNodeConst :: a -> NodeConst

instance NodeSuperConst M2.RefConst where
  downToNodeConst = cast'
    where
      cast' (M2.RefConst ptr') = NodeConst $ castRefToNode ptr'
      cast' (M2.RefConstGc fptr' ptr') = NodeConstGc fptr' $ castRefToNode ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Node)) Node where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Node)) Node where
  decode = HoppyP.fmap Node . HoppyF.peek