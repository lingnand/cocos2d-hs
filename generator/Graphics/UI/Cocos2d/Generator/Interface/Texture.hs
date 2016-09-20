module Graphics.UI.Cocos2d.Generator.Interface.Texture
    (
      mod_texture
    , c_Texture2D
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_texture :: Module
mod_texture =
  moduleModify' (makeModule "texture" "Texture.hpp" "Texture.cpp") $
    moduleAddExports
    [ ExportClass c_Texture2D
    ]

c_Texture2D :: Class
c_Texture2D =
  addReqIncludes [includeStd "renderer/CCTexture2D.h"] $
    makeClass (ident1 "cocos2d" "Texture2D") Nothing [c_Ref]
      [ mkMethod "getContentSizeInPixels" [] $ refT $ constT $ objT c_Size
      , mkConstMethod "getPixelsWide" [] intT
      , mkConstMethod "getPixelsHigh" [] intT
      , mkConstMethod "getContentSize" [] $ objT c_Size
      ]
