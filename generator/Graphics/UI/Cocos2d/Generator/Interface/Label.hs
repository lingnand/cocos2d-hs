module Graphics.UI.Cocos2d.Generator.Interface.Label
    ( mod_label
    , e_TextVAlignment
    , e_TextHAlignment
    , e_GlyphCollection
    , e_LabelEffect
    , c_TTFConfig
    , c_Font
    , c_FontAtlas
    , c_Label
    )
  where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Std.String

import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Common
import Graphics.UI.Cocos2d.Generator.Interface.Texture
import Graphics.UI.Cocos2d.Generator.Interface.Sprite

mod_label :: Module
mod_label =
  moduleModify' (makeModule "label" "Label.hpp" "Label.cpp") $
    moduleAddExports
    [ ExportEnum e_TextVAlignment
    , ExportEnum e_TextHAlignment
    , ExportEnum e_GlyphCollection
    , ExportEnum e_LabelEffect
    , ExportClass c_TTFConfig
    , ExportClass c_Font
    , ExportClass c_FontAtlas
    , ExportClass c_Label
    ]

e_TextVAlignment :: CppEnum
e_TextVAlignment =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeEnum (ident1 "cocos2d" "TextVAlignment") Nothing
      [ (0, ["top"])
      , (1, ["center"])
      , (2, ["bottom"])
      ]

e_TextHAlignment :: CppEnum
e_TextHAlignment =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeEnum (ident1 "cocos2d" "TextHAlignment") Nothing
      [ (0, ["left"])
      , (1, ["center"])
      , (2, ["right"])
      ]

e_GlyphCollection :: CppEnum
e_GlyphCollection =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeEnum (ident1 "cocos2d" "GlyphCollection") Nothing
      [ (0, ["dynamic"])
      , (1, ["nehe"])
      , (2, ["ascii"])
      , (3, ["custom"])
      ]

e_LabelEffect :: CppEnum
e_LabelEffect =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeEnum (ident1 "cocos2d" "LabelEffect") Nothing
      [ (0, ["normal"])
      , (1, ["outline"])
      , (2, ["shadow"])
      , (3, ["glow"])
      , (3, ["all"])
      ]

c_TTFConfig :: Class
c_TTFConfig =
  addReqIncludes [includeStd "2d/CCLabel.h"] $
    makeClass (ident1 "cocos2d" "TTFConfig") Nothing []
      [ mkCtor "new"
          [ ptrT $ constT charT -- filePath
          , floatT              -- size
          ]
      , mkCtor "newWithGlyphCollection"
          [ ptrT $ constT charT
          , floatT
          , enumT e_GlyphCollection
          , ptrT $ constT charT -- customGlyphCollection
          ]
      , mkCtor "newWithGlyphCollectionAndOutline"
          [ ptrT $ constT charT
          , floatT
          , enumT e_GlyphCollection
          , ptrT $ constT charT -- customGlyphCollection
          , boolT               -- useDistanceField
          , intT                -- outline
          ]
      , mkClassVariable "fontFilePath" $ objT c_string
      , mkClassVariable "fontSize" floatT
      , mkClassVariable "glyphs" $ enumT e_GlyphCollection
      , mkClassVariable "customGlyphs" $ ptrT $ constT charT
      , mkClassVariable "distanceFieldEnabled" boolT
      , mkClassVariable "outlineSize" intT
      ]

c_Font :: Class
c_Font =
  addReqIncludes [includeStd "2d/CCFont.h"] $
    makeClass (ident1 "cocos2d" "Font") Nothing [c_Ref]
      [ mkMethod "createFontAtlas" [] $ ptrT $ objT c_FontAtlas
      , mkConstMethod "getFontMaxHeight" [] intT
      ]

c_FontAtlas :: Class
c_FontAtlas =
  addReqIncludes [includeStd "2d/CCFontAtlas.h"] $
    makeClass (ident1 "cocos2d" "FontAtlas") Nothing [c_Ref]
      [ mkCtor "new" [refT $ objT c_Font]
      , mkMethod "addTexture"
          [ ptrT $ objT c_Texture2D
          , intT -- slot
          ] voidT
      , mkConstMethod "getLineHeight" [] floatT
      , mkMethod "setLineHeight" [floatT] voidT
      , mkMethod "getTexture" [intT] $ ptrT $ objT c_Texture2D
      , mkConstMethod "getFont" [] $ ptrT $ constT $ objT c_Font
      , mkMethod "purgeTexturesAtlas" [] voidT
      , mkMethod "setAntiAliasTexParameters" [] voidT
      , mkMethod "setAliasTexParameters" [] voidT
      ]

c_Label :: Class
c_Label =
  addReqIncludes [includeStd "2d/CCLabel.h"] $
    makeClass (ident1 "cocos2d" "Label") Nothing [c_Node]
      [ mkStaticMethod "create" [] $ ptrT $ objT c_Label
      , mkStaticMethod "createWithSystemFont"
          [ refT $ constT $ objT c_string -- text
          , refT $ constT $ objT c_string -- font
          , floatT                        -- fontSize
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithSystemFont" "createWithSystemFontByDimensions"
          [ refT $ constT $ objT c_string
          , refT $ constT $ objT c_string
          , floatT
          , refT $ constT $ objT c_Size
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithSystemFont" "createWithSystemFontByDimensionsAndAlignments"
          [ refT $ constT $ objT c_string
          , refT $ constT $ objT c_string
          , floatT
          , refT $ constT $ objT c_Size
          , enumT e_TextHAlignment
          , enumT e_TextVAlignment
          ] $ ptrT $ objT c_Label
      , mkStaticMethod "createWithTTF"
          [ refT $ constT $ objT c_string -- text
          , refT $ constT $ objT c_string -- fontFilePath
          , floatT                        -- fontSize
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithTTF" "createWithTTFByDimensions"
          [ refT $ constT $ objT c_string -- text
          , refT $ constT $ objT c_string -- fontFilePath
          , floatT                        -- fontSize
          , refT $ constT $ objT c_Size
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithTTF" "createWithTTFByDimensionsAndAlignments"
          [ refT $ constT $ objT c_string -- text
          , refT $ constT $ objT c_string -- fontFilePath
          , floatT                        -- fontSize
          , refT $ constT $ objT c_Size
          , enumT e_TextHAlignment
          , enumT e_TextVAlignment
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithTTF" "createWithTTFConfig"
          [ refT $ constT $ objT c_TTFConfig
          , refT $ constT $ objT c_string -- text
          , enumT e_TextHAlignment
          , intT                          -- maxlineWidth
          ] $ ptrT $ objT c_Label
      , mkStaticMethod "createWithBMFont"
          [ refT $ constT $ objT c_string -- bmfontPath
          , refT $ constT $ objT c_string -- text
          , enumT e_TextHAlignment
          , intT                          -- maxlineWidth
          , refT $ constT $ objT c_Vec2   -- imageOffset
          ] $ ptrT $ objT c_Label
      , mkStaticMethod "createWithCharMap"
          [ refT $ constT $ objT c_string -- charMapFile
          , intT                          -- itemWidth
          , intT                          -- itemHeight
          , intT                          -- startCharMap
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithCharMap" "createWithCharMapFromTexture"
          [ ptrT $ objT c_Texture2D
          , intT                          -- itemWidth
          , intT                          -- itemHeight
          , intT                          -- startCharMap
          ] $ ptrT $ objT c_Label
      , mkStaticMethod' "createWithCharMap" "createWithCharMapFromPlist"
          [ refT $ constT $ objT c_string -- plistFile
          ] $ ptrT $ objT c_Label
      , mkMethod "setTTFConfig" [refT $ constT $ objT c_TTFConfig] boolT
      , mkConstMethod "getTTFConfig" [] $ refT $ constT $ objT c_TTFConfig
      , mkMethod "setBMFontFilePath"
          [ refT $ constT $ objT c_string -- bmfontPath
          , refT $ constT $ objT c_Vec2   -- imageOffset
          ] voidT
      , mkConstMethod "getBMFontFilePath" [] $ refT $ constT $ objT c_string
      , mkMethod "setCharMap"
          [ refT $ constT $ objT c_string -- charMapFile
          , intT                          -- itemWidth
          , intT                          -- itemHeight
          , intT                          -- startCharMap
          ] voidT
      , mkMethod' "setCharMap" "setCharMapFromTexture"
          [ ptrT $ objT c_Texture2D
          , intT                          -- itemWidth
          , intT                          -- itemHeight
          , intT                          -- startCharMap
          ] voidT
      , mkMethod' "setCharMap" "setCharMapFromPlist"
          [ refT $ constT $ objT c_string -- plistFile
          ] voidT
      , mkMethod "setSystemFontName" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getSystemFontName" [] $ refT $ constT $ objT c_string
      , mkMethod "setSystemFontSize" [floatT] voidT
      , mkConstMethod "getSystemFontSize" [] floatT
      , mkMethod "requestSystemFontRefresh" [] voidT
      , mkMethod "setString" [refT $ constT $ objT c_string] voidT
      , mkConstMethod "getString" [] $ refT $ constT $ objT c_string
      , mkMethod "getStringNumLines" [] intT
      , mkMethod "getStringLength" [] intT
      , mkMethod "setTextColor" [refT $ constT $ objT c_Color4B] voidT
      , mkConstMethod "getTextColor" [] $ refT $ constT $ objT c_Color4B
      , mkMethod "enableShadow"
          [ refT $ constT $ objT c_Color4B -- shadowColor
          ] voidT
      , mkMethod' "enableShadow" "enableShadowWithOffset"
          [ refT $ constT $ objT c_Color4B -- shadowColor
          , refT $ constT $ objT c_Size    -- offset
          , intT                           -- blurRadius
          ] voidT
      , mkMethod "enableOutline"
          [ refT $ constT $ objT c_Color4B -- shadowColor
          ] voidT
      , mkMethod' "enableOutline" "enableOutlineWithSize"
          [ refT $ constT $ objT c_Color4B -- shadowColor
          , intT                           -- outlineSize
          ] voidT
      , mkMethod "enableGlow" [refT $ constT $ objT c_Color4B] voidT
      , mkMethod "disableEffect" [] voidT
      , mkMethod' "disableEffect" "disableLabelEffect" [enumT e_LabelEffect] voidT
      , mkConstMethod "getHorizontalAlignment" [] $ enumT e_TextHAlignment
      , mkMethod "setHorizontalAlignment" [enumT e_TextHAlignment] voidT
      , mkConstMethod "getVerticalAlignment" [] $ enumT e_TextVAlignment
      , mkMethod "setVerticalAlignment" [enumT e_TextVAlignment] voidT
      , mkMethod "setAlignment" [enumT e_TextHAlignment, enumT e_TextVAlignment] voidT
      , mkMethod "setLineBreakWithoutSpace" [boolT] voidT
      , mkMethod "setMaxLineWidth" [floatT] voidT
      , mkMethod "getMaxLineWidth" [] floatT
      , mkConstMethod "getWidth" [] floatT
      , mkMethod "setWidth" [floatT] voidT
      , mkConstMethod "getHeight" [] floatT
      , mkMethod "setHeight" [floatT] voidT
      , mkConstMethod "getDimensions" [] $ refT $ constT $ objT c_Size
      , mkMethod "setDimensions" [floatT, floatT] voidT
      , mkMethod "updateContent" [] voidT
      , mkMethod "getLetter" [intT] $ ptrT $ objT c_Sprite
      , mkConstMethod "isClipMarginEnabled" [] boolT
      , mkMethod "setClipMarginEnabled" [boolT] voidT
      , mkConstMethod "getLineHeight" [] floatT
      , mkMethod "setLineHeight" [floatT] voidT
      , mkConstMethod "getLineSpacing" [] floatT
      , mkMethod "setLineSpacing" [floatT] voidT
      , mkConstMethod "getAdditionalKerning" [] floatT
      , mkMethod "setAdditionalKerning" [floatT] voidT
      , mkMethod "getFontAtlas" [] $ ptrT $ objT c_FontAtlas
      ]
