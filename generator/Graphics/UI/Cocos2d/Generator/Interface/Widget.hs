module Graphics.UI.Cocos2d.Generator.Interface.Widget
    (
      mod_widget
    , c_Widget
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types

import Graphics.UI.Cocos2d.Generator.Interface.Node

mod_widget :: Module
mod_widget =
  moduleModify' (makeModule "widget" "Widget.hpp" "Widget.cpp") $
    moduleAddExports
    [ ExportClass c_ProtectedNode
    , ExportClass c_Widget
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

c_Widget :: Class
c_Widget =
  addReqIncludes [includeStd "ui/UIWidget.h"] $
    makeClass (ident2 "cocos2d" "ui" "Widget") Nothing [c_ProtectedNode]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Widget
      , mkConstMethod "isEnabled" [] boolT
      , mkMethod "setEnabled" [boolT] voidT
      ]

