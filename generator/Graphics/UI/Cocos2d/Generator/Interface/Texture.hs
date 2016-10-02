module Graphics.UI.Cocos2d.Generator.Interface.Texture
    (
      mod_texture
    , c_Texture2D
    , c_TextureCache
    , cb_TextureLoadedCallback
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std
import Graphics.UI.Cocos2d.Generator.Interface.Common

mod_texture :: Module
mod_texture =
  moduleModify' (makeModule "texture" "Texture.hpp" "Texture.cpp") $
    moduleAddExports
    [ ExportClass c_Texture2D
    , ExportClass c_TextureCache
    , ExportCallback cb_TextureLoadedCallback
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

cb_TextureLoadedCallback :: Callback
cb_TextureLoadedCallback =
  makeCallback (toExtName "TextureLoadedCallback") [ptrT $ objT c_Texture2D] voidT

c_TextureCache :: Class
c_TextureCache =
  addReqIncludes [includeStd "renderer/CCTextureCache.h"] $
    makeClass (ident1 "cocos2d" "TextureCache") Nothing [c_Ref]
      [ mkMethod "addImage" [refT $ constT $ objT c_string] $ ptrT $ objT c_Texture2D
      , mkMethod "addImageAsync"
          [ refT $ constT $ objT c_string       -- filepath
          , callbackT cb_TextureLoadedCallback  -- callback
          ] voidT
      , mkMethod "reloadTexture" [refT $ constT $ objT c_string] boolT
      , mkMethod "removeAllTextures" [] voidT
      , mkMethod "removeUnusedTextures" [] voidT
      , mkMethod "removeTexture" [ptrT $ objT c_Texture2D] voidT
      , mkMethod "removeTextureForKey" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getCachedTextureInfo" [] $ objT c_string
      , mkConstMethod "getTextureFilePath" [ptrT $ objT c_Texture2D] $ objT c_string
      ]
