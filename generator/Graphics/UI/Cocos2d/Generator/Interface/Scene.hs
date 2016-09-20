module Graphics.UI.Cocos2d.Generator.Interface.Scene
    (
      mod_scene
    , c_Scene
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_scene :: Module
mod_scene =
  moduleModify' (makeModule "scene" "Scene.hpp" "Scene.cpp") $
    moduleAddExports
    [ ExportClass c_Scene
    ]

c_Scene :: Class
c_Scene =
  addReqIncludes [includeStd "2d/CCScene.h"] $
    makeClass (ident1 "cocos2d" "Scene") Nothing [c_Node]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Scene
      , mkStaticMethod "createWithSize" [refT $ constT $ objT c_Size] $ ptrT $ objT c_Scene
      ]
