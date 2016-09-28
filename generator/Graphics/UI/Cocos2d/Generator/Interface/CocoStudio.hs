module Graphics.UI.Cocos2d.Generator.Interface.CocoStudio
    (
      mod_cocostudio
    , cb_NodeLoadCallback
    , c_CSLoader
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_cocostudio :: Module
mod_cocostudio =
  moduleModify' (makeModule "cocoStudio" "CocoStudio.hpp" "CocoStudio.cpp") $
    moduleAddExports
    [ ExportClass c_CSLoader
    , ExportCallback cb_NodeLoadCallback
    ]

cb_NodeLoadCallback :: Callback
cb_NodeLoadCallback =
  makeCallback (toExtName "NodeLoadCallback") [ptrT $ objT c_Ref] voidT

c_CSLoader :: Class
c_CSLoader =
  addReqIncludes [includeStd "cocostudio/CocoStudio.h"] $
    makeClass (ident1 "cocos2d" "CSLoader") Nothing []
      [ mkStaticMethod "createNode"
          [ refT $ constT $ objT c_string -- filename
          ] $ ptrT $ objT c_Node
      , mkStaticMethod' "createNode" "createNodeWithCallback"
          [ refT $ constT $ objT c_string -- filename
          , callbackT cb_NodeLoadCallback
          ] $ ptrT $ objT c_Node
      , mkStaticMethod' "createNodeWithVisibleSize" "createNodeOfVisibleSize"
          [ refT $ constT $ objT c_string -- filename
          ] $ ptrT $ objT c_Node
      , mkStaticMethod' "createNodeWithVisibleSize" "createNodeOfVisibleSizeWithCallback"
          [ refT $ constT $ objT c_string -- filename
          , callbackT cb_NodeLoadCallback
          ] $ ptrT $ objT c_Node
      -- TODO: createTimeline
      ]

-- TODO: ActionTimeline
