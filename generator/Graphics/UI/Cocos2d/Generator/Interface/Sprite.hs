module Graphics.UI.Cocos2d.Generator.Interface.Sprite
    (
      mod_sprite
    , c_Sprite
    , c_SpriteFrame
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std.String

import Graphics.UI.Cocos2d.Generator.Interface.Common
import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Texture

mod_sprite :: Module
mod_sprite =
  moduleModify' (makeModule "sprite" "Sprite.hpp" "Sprite.cpp") $
    moduleAddExports
    [ ExportClass c_Sprite
    , ExportClass c_SpriteFrame
    ]

c_Sprite :: Class
c_Sprite =
  addReqIncludes [includeStd "2d/CCSprite.h"] $
    makeClass (ident1 "cocos2d" "Sprite") Nothing [c_Node]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Sprite
      , mkStaticMethod' "create" "createWithFilename" [refT $ constT $ objT c_string] $ ptrT $ objT c_Sprite
      , mkStaticMethod' "create" "createWithFilenameAndRect"
          [ refT $ constT $ objT c_string
          , refT $ constT $ objT c_Rect
          ] $ ptrT $ objT c_Sprite
      , mkStaticMethod "createWithTexture" [ptrT $ objT c_Texture2D] $ ptrT $ objT c_Sprite
      , mkStaticMethod' "createWithTexture" "createWithTextureAndRect"
          [ ptrT $ objT c_Texture2D
          , refT $ constT $ objT c_Rect
          ] $ ptrT $ objT c_Sprite
      , mkStaticMethod "createWithSpriteFrame" [ptrT $ objT c_SpriteFrame] $ ptrT $ objT c_Sprite
      , mkStaticMethod "createWithSpriteFrameName" [refT $ constT $ objT c_string] $ ptrT $ objT c_Sprite
      , mkMethod "setTexture" [ptrT $ objT c_Texture2D] voidT
      , mkMethod' "setTexture" "setTextureWithFilename" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getTexture" [] $ ptrT $ objT c_Texture2D
      , mkMethod "setTextureRect" [refT $ constT $ objT c_Rect] voidT
      , mkMethod "setVertexRect" [refT $ constT $ objT c_Rect] voidT
      , mkMethod "setSpriteFrame" [ptrT $ objT c_SpriteFrame] voidT
      , mkMethod' "setSpriteFrame" "setSpriteFrameWithName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getSpriteFrame" [] $ ptrT $ objT c_SpriteFrame
      , mkMethod "setDisplayFrameWithAnimationName" [refT $ constT $ objT c_string, ssizeT] voidT
      , mkConstMethod "getTextureRect" [] $ refT $ constT $ objT c_Rect
      , mkConstMethod "getOffsetPosition" [] $ refT $ constT $ objT c_Vec2
      , mkConstMethod "isFlippedX" [] boolT
      , mkMethod "setFlippedX" [boolT] voidT
      , mkConstMethod "isFlippedY" [] boolT
      , mkMethod "setFlippedY" [boolT] voidT
      ]

c_SpriteFrame :: Class
c_SpriteFrame =
  addReqIncludes [includeStd "2d/CCSpriteFrame.h"] $
    makeClass (ident1 "cocos2d" "SpriteFrame") Nothing [c_Ref]
      [ mkStaticMethod "create"
          [ refT $ constT $ objT c_string
          , refT $ constT $ objT c_Rect
          ] $ ptrT $ objT c_SpriteFrame
      , mkStaticMethod "createWithTexture"
          [ ptrT $ objT c_Texture2D
          , refT $ constT $ objT c_Rect
          ] $ ptrT $ objT c_SpriteFrame
      , mkConstMethod "getRectInPixels" [] $ refT $ constT $ objT c_Rect
      , mkMethod "setRectInPixels" [refT $ constT $ objT c_Rect] voidT
      , mkConstMethod "isRotated" [] boolT
      , mkMethod "setRotated" [boolT] voidT
      , mkConstMethod "getRect" [] $ refT $ constT $ objT c_Rect
      , mkMethod "setRect" [refT $ constT $ objT c_Rect] voidT
      , mkConstMethod "getOffsetInPixels" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setOffsetInPixels" [refT $ constT $ objT c_Vec2] voidT
      , mkConstMethod "getOriginalSizeInPixels" [] $ refT $ constT $ objT c_Size
      , mkMethod "setOriginalSizeInPixels" [refT $ constT $ objT c_Size] voidT
      , mkConstMethod "getOriginalSize" [] $ refT $ constT $ objT c_Size
      , mkMethod "setOriginalSize" [refT $ constT $ objT c_Size] voidT
      , mkMethod "getTexture" [] $ ptrT $ objT c_Texture2D
      , mkMethod "setTexture" [ptrT $ objT c_Texture2D] voidT
      , mkConstMethod "getOffset" [] $ refT $ constT $ objT c_Vec2
      , mkMethod "setOffset" [refT $ constT $ objT c_Vec2] voidT
      ]
