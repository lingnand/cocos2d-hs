module Graphics.UI.Cocos2d.Generator.Interface.Node
  (
    mod_node
  , c_Node
  ) where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std.String

import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_node :: Module
mod_node =
  moduleModify' (makeModule "node" "Node.hpp" "Node.cpp") $
    moduleAddExports
    [ ExportClass c_Node
    , ExportCallback cb_ScheduleCallback
    ]

cb_ScheduleCallback :: Callback
cb_ScheduleCallback =
  makeCallback (toExtName "ScheduleCallback") [floatT] voidT

c_Node :: Class
c_Node =
  addReqIncludes [includeStd "2d/CCNode.h"] $
    makeClass (ident1 "cocos2d" "Node") Nothing [c_Ref]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Node
      , mkConstMethod "getLocalZOrder" [] intT
      , mkMethod "setLocalZOrder" [intT] voidT
      , mkConstMethod "getGlobalZOrder" [] floatT
      , mkMethod "setGlobalZOrder" [floatT] voidT
      , mkConstMethod "getScaleX" [] floatT
      , mkMethod "setScaleX" [floatT] voidT
      , mkConstMethod "getScaleY" [] floatT
      , mkMethod "setScaleY" [floatT] voidT
      , mkConstMethod "getScaleZ" [] floatT
      , mkMethod "setScaleZ" [floatT] voidT
      , mkConstMethod "getScale" [] floatT
      , mkMethod "setScale" [floatT] voidT
      , mkMethod' "setScale" "setScaleXY" [floatT, floatT] voidT
      , mkConstMethod "getPosition" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setPosition" [refT $ constT $ objT c_Vec2] voidT
      , mkConstMethod "getPositionX" [] floatT
      , mkMethod "setPositionX" [floatT] voidT
      , mkConstMethod "getPositionY" [] floatT
      , mkMethod "setPositionY" [floatT] voidT
      , mkConstMethod "getNormalizedPosition" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setNormalizedPosition" [refT $ constT $ objT c_Vec2] voidT
      , mkConstMethod "getPositionZ" [] floatT
      , mkMethod "setPositionZ" [floatT] voidT
      , mkConstMethod "getSkewX" [] floatT
      , mkMethod "setSkewX" [floatT] voidT
      , mkConstMethod "getSkewY" [] floatT
      , mkMethod "setSkewY" [floatT] voidT
      , mkConstMethod "getAnchorPoint" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setAnchorPoint" [refT $ constT $ objT c_Vec2] voidT
      , mkConstMethod "getAnchorPointInPoints" [] $ refT $ constT $ objT c_Vec2
      , mkConstMethod "getContentSize" [] $ refT $ constT $ objT c_Size
      , mkMethod "setContentSize" [refT $ constT $ objT c_Size] voidT
      , mkConstMethod "isVisible" [] boolT
      , mkMethod "setVisible" [boolT] voidT
      , mkConstMethod "getRotation" [] floatT
      , mkMethod "setRotation" [floatT] voidT
      , mkConstMethod "getRotationSkewX" [] floatT
      , mkMethod "setRotationSkewX" [floatT] voidT
      , mkConstMethod "getRotationSkewY" [] floatT
      , mkMethod "setRotationSkewY" [floatT] voidT
      , mkConstMethod "getOrderOfArrival" [] intT
      , mkMethod "setOrderOfArrival" [intT] voidT
      , mkConstMethod "isIgnoreAnchorPointForPosition" [] boolT
      , mkMethod "ignoreAnchorPointForPosition" [boolT] voidT
      , mkMethod "addChild" [ptrT $ objT c_Node] voidT
      , mkMethod' "addChild" "addChildWithLocalZOrder" [ptrT $ objT c_Node, intT] voidT
      , mkMethod' "addChild" "addChildWithLocalZOrderAndTag" [ptrT $ objT c_Node, intT, intT] voidT
      , mkMethod' "addChild" "addChildWithLocalZOrderAndName" [ptrT $ objT c_Node, intT, refT $ constT $ objT c_string] voidT
      , mkConstMethod "getChildByTag" [intT] $ ptrT $ objT c_Node
      , mkConstMethod "getChildByName" [refT $ constT $ objT c_string] $ ptrT $ objT c_Node
      -- TODO: Vector<Node*> getChildren() ?
      , mkConstMethod "getChildrenCount" [] ssizeT
      , mkMethod "removeFromParent" [] voidT -- cleanup = true
      , mkMethod' "removeFromParentAndCleanup" "removeFromParentWithCleanup" [boolT] voidT
      , mkMethod "removeChild" [ptrT $ objT c_Node] voidT -- cleanup = true
      , mkMethod' "removeChild" "removeChildWithCleanup" [ptrT $ objT c_Node, boolT] voidT
      , mkMethod "removeChildByTag" [intT] voidT
      , mkMethod' "removeChildByTag" "removeChildByTagWithCleanup" [intT, boolT] voidT
      , mkMethod "removeChildByName" [refT $ constT $ objT c_string] voidT
      , mkMethod' "removeChildByName" "removeChildByNameWithCleanup" [refT $ constT $ objT c_string, boolT] voidT
      , mkMethod "removeAllChildren" [] voidT
      , mkMethod "removeAllChildrenWithCleanup" [boolT] voidT
      -- reorder child by a localZOrder
      , mkMethod "reorderChild" [ptrT $ objT c_Node, intT] voidT
      , mkMethod "sortAllChildren" [] voidT
      , mkConstMethod "getTag" [] intT
      , mkMethod "setTag" [intT] voidT
      , mkConstMethod "getName" [] $ refT $ constT $ objT c_string
      , mkMethod "setName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod' "getUserData" "getUserDataConst" [] $ ptrT $ constT voidT
      , mkMethod "getUserData" [] $ ptrT voidT
      , mkMethod "setUserData" [ptrT voidT] voidT
      , mkConstMethod' "getUserObject" "getUserObjectConst" [] $ ptrT $ constT $ objT c_Ref
      , mkMethod "getUserObject" [] $ ptrT $ objT c_Ref
      , mkMethod "setUserObject" [ptrT $ objT c_Ref] voidT
      , mkConstMethod "isRunning" [] boolT
      , mkMethod "cleanup" [] voidT
      , mkMethod "getBoundingBox" [] $ objT c_Rect
      -- TODO: actionManager ?
      , mkMethod "stopAllActions" [] voidT
      -- TODO: action ?

      -- scheduling
      , mkMethod "isScheduled" [refT $ constT $ objT c_string] boolT
      , mkMethod "scheduleOnce"
          [ callbackT cb_ScheduleCallback
          , floatT                        -- delay
          , refT $ constT $ objT c_string -- key
          ] voidT
      -- called every frame
      , mkMethod "schedule"
          [ callbackT cb_ScheduleCallback
          , refT $ constT $ objT c_string -- key
          ] voidT
      , mkMethod' "schedule" "scheduleWithInterval"
          [ callbackT cb_ScheduleCallback
          , floatT                        -- interval in seconds, 0 means every frame
          , refT $ constT $ objT c_string -- key
          ] voidT
      , mkMethod' "schedule" "scheduleWithIntervalAndRepeat"
          [ callbackT cb_ScheduleCallback
          , floatT                        -- interval
          , uintT                         -- will be executed (repeat+1) times
          , floatT                        -- delay
          , refT $ constT $ objT c_string -- key
          ] voidT
      , mkMethod "unschedule" [refT $ constT $ objT c_string] voidT
      , mkMethod "unscheduleAllCallbacks" [] voidT
      , mkMethod "resume" [] voidT
      , mkMethod "pause" [] voidT

      , mkConstMethod "getNodeToParentTransform" [] $ refT $ constT $ objT c_Mat4
      , mkConstMethod "getNodeToParentAffineTransform" [] $ objT c_AffineTransform
      , mkConstMethod' "getNodeToParentTransform" "getNodeToAncestorTransform" [ptrT $ objT c_Node] $ objT c_Mat4
      , mkConstMethod' "getNodeToParentAffineTransform" "getNodeToAncestorAffineTransform" [ptrT $ objT c_Node] $ objT c_AffineTransform
      , mkMethod "setNodeToParentTransform" [refT $ constT $ objT c_Mat4] voidT
      , mkConstMethod "getParentToNodeTransform" [] $ refT $ constT $ objT c_Mat4
      , mkConstMethod "getParentToNodeAffineTransform" [] $ objT c_AffineTransform
      , mkConstMethod "getNodeToWorldTransform" [] $ objT c_Mat4
      , mkConstMethod "getNodeToWorldAffineTransform" [] $ objT c_AffineTransform
      , mkConstMethod "getWorldToNodeTransform" [] $ objT c_Mat4
      , mkConstMethod "getWorldToNodeAffineTransform" [] $ objT c_AffineTransform

      , mkConstMethod "convertToNodeSpace" [refT $ constT $ objT c_Vec2] $ objT c_Vec2
      , mkConstMethod "convertToWorldSpace" [refT $ constT $ objT c_Vec2] $ objT c_Vec2
      , mkConstMethod "convertToNodeSpaceAR" [refT $ constT $ objT c_Vec2] $ objT c_Vec2
      , mkConstMethod "convertToWorldSpaceAR" [refT $ constT $ objT c_Vec2] $ objT c_Vec2

      -- GLubyte should always be a one-byte unsigned integer
      , mkConstMethod "getOpacity" [] word8T
      , mkConstMethod "getDisplayedOpacity" [] word8T
      , mkMethod "setOpacity" [word8T] voidT
      -- the argument is parentOpacity (what does it mean?)
      , mkMethod "updateDisplayedOpacity" [word8T] voidT
      , mkConstMethod "isCascadeOpacityEnabled" [] boolT
      , mkMethod "setCascadeOpacityEnabled" [boolT] voidT
      , mkConstMethod "getColor" [] $ refT $ constT $ objT c_Color3B
      , mkConstMethod "getDisplayedColor" [] $ refT $ constT $ objT c_Color3B
      , mkMethod "setColor" [refT $ constT $ objT c_Color3B] voidT
      , mkMethod "updateDisplayedColor" [refT $ constT $ objT c_Color3B] voidT
      , mkConstMethod "isCascadeColorEnabled" [] boolT
      , mkMethod "setCascadeColorEnabled" [boolT] voidT
      , mkConstMethod "isOpacityModifyRGB" [] boolT
      , mkMethod "setOpacityModifyRGB" [boolT] voidT
      -- TODO: camera?
      ]
