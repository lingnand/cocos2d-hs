module Graphics.UI.Cocos2d.Generator.Interface.Layer
    (
      mod_layer
    , c_Layer
    , c_LayerColor
    , c_LayerGradient
    , c_LayerMultiplex
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_layer :: Module
mod_layer =
  moduleModify' (makeModule "layer" "Layer.hpp" "Layer.cpp") $
    moduleAddExports
    [ ExportClass c_Layer
    , ExportClass c_LayerColor
    , ExportClass c_LayerGradient
    , ExportClass c_LayerMultiplex
    ]

c_Layer :: Class
c_Layer =
  addReqIncludes [includeStd "2d/CCLayer.h"] $
    makeClass (ident1 "cocos2d" "Layer") Nothing [c_Node]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Layer
      ]

c_LayerColor :: Class
c_LayerColor =
  addReqIncludes [includeStd "2d/CCLayer.h"] $
    makeClass (ident1 "cocos2d" "LayerColor") Nothing [c_Layer]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_LayerColor
      , mkStaticMethod' "create" "createWithColorAndSize" [refT $ constT $ objT c_Color4B, floatT, floatT] $ ptrT $ objT c_LayerColor
      , mkStaticMethod' "create" "createWithColor" [refT $ constT $ objT c_Color4B] $ ptrT $ objT c_LayerColor
      , mkMethod "changeWidth" [floatT] voidT
      , mkMethod "changeHeight" [floatT] voidT
      , mkMethod "changeWidthAndHeight" [floatT, floatT] voidT
      ]

c_LayerGradient :: Class
c_LayerGradient =
  addReqIncludes [includeStd "2d/CCLayer.h"] $
    makeClass (ident1 "cocos2d" "LayerGradient") Nothing [c_LayerColor]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_LayerGradient
      , mkStaticMethod' "create" "createWithStartEndColor"
          [ refT $ constT $ objT c_Color4B
          , refT $ constT $ objT c_Color4B ] $ ptrT $ objT c_LayerGradient
      , mkStaticMethod' "create" "createWithStartEndColorAndDirection"
          [ refT $ constT $ objT c_Color4B
          , refT $ constT $ objT c_Color4B
          , refT $ constT $ objT c_Vec2 ] $ ptrT $ objT c_LayerGradient
      , mkConstMethod "isCompressedInterpolation" [] boolT
      , mkMethod "setCompressedInterpolation" [boolT] voidT
      , mkConstMethod "getStartColor" [] $ refT $ constT $ objT c_Color3B
      , mkMethod "setStartColor" [refT $ constT $ objT c_Color3B] voidT
      , mkConstMethod "getEndColor" [] $ refT $ constT $ objT c_Color3B
      , mkMethod "setEndColor" [refT $ constT $ objT c_Color3B] voidT
      , mkConstMethod "getStartOpacity" [] word8T
      , mkMethod "setStartOpacity" [word8T] voidT
      , mkConstMethod "getEndOpacity" [] word8T
      , mkMethod "setEndOpacity" [word8T] voidT
      , mkConstMethod "getVector" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setVector" [refT $ constT $ objT c_Vec2] voidT
      ]

c_LayerMultiplex :: Class
c_LayerMultiplex =
  addReqIncludes [includeStd "2d/CCLayer.h"] $
    makeClass (ident1 "cocos2d" "LayerMultiplex") Nothing [c_Layer] $
      [ mkStaticMethod "create" [] $ ptrT $ objT c_LayerMultiplex
        -- TODO: taking a Vector
      , mkStaticMethod "createWithLayer" [ptrT $ objT c_Layer] $ ptrT $ objT c_LayerMultiplex
      ]
      ++
      [ mkStaticMethod' "create" ("createWithLayers"++show n) (replicate n $ ptrT $ objT c_Layer) $ ptrT $ objT c_LayerMultiplex
      | n <- [2..10]
      ]
      ++
      [ mkMethod "addLayer" [ptrT $ objT c_Layer] voidT
      -- switch to the layer at the index
      , mkMethod "switchTo" [intT] voidT
      -- release the current layer and switch to the layer at the index
      , mkMethod "switchToAndReleaseMe" [intT] voidT
      ]
