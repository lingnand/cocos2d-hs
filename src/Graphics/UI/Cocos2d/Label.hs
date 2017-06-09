{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Label (
  castFontToRef,
  castRefToFont,
  castFontAtlasToRef,
  castRefToFontAtlas,
  castLabelToNode,
  castNodeToLabel,
  castLabelToRef,
  castRefToLabel,
  FontValue (..),
  FontConstPtr (..),
  font_getFontMaxHeight,
  FontPtr (..),
  font_createFontAtlas,
  FontConst (..),
  castFontToConst,
  Font (..),
  castFontToNonconst,
  FontSuper (..),
  FontSuperConst (..),
  FontAtlasValue (..),
  FontAtlasConstPtr (..),
  fontAtlas_getLineHeight,
  fontAtlas_getFont,
  FontAtlasPtr (..),
  fontAtlas_addTexture,
  fontAtlas_setLineHeight,
  fontAtlas_getTexture,
  fontAtlas_purgeTexturesAtlas,
  fontAtlas_setAntiAliasTexParameters,
  fontAtlas_setAliasTexParameters,
  FontAtlasConst (..),
  castFontAtlasToConst,
  FontAtlas (..),
  castFontAtlasToNonconst,
  fontAtlas_new,
  FontAtlasSuper (..),
  FontAtlasSuperConst (..),
  GlyphCollection (..),
  LabelValue (..),
  LabelConstPtr (..),
  label_getTTFConfig,
  label_getBMFontFilePath,
  label_getSystemFontName,
  label_getSystemFontSize,
  label_getString,
  label_getTextColor,
  label_getHorizontalAlignment,
  label_getVerticalAlignment,
  label_getWidth,
  label_getHeight,
  label_getDimensions,
  label_isClipMarginEnabled,
  label_getLineHeight,
  label_getLineSpacing,
  label_getAdditionalKerning,
  LabelPtr (..),
  label_setTTFConfig,
  label_setBMFontFilePath,
  label_setCharMap,
  label_setCharMapFromTexture,
  label_setCharMapFromPlist,
  label_setSystemFontName,
  label_setSystemFontSize,
  label_requestSystemFontRefresh,
  label_setString,
  label_getStringNumLines,
  label_getStringLength,
  label_setTextColor,
  label_enableShadow,
  label_enableShadowWithOffset,
  label_enableOutline,
  label_enableOutlineWithSize,
  label_enableGlow,
  label_disableEffect,
  label_disableLabelEffect,
  label_setHorizontalAlignment,
  label_setVerticalAlignment,
  label_setAlignment,
  label_setLineBreakWithoutSpace,
  label_setMaxLineWidth,
  label_getMaxLineWidth,
  label_setWidth,
  label_setHeight,
  label_setDimensions,
  label_updateContent,
  label_getLetter,
  label_setClipMarginEnabled,
  label_setLineHeight,
  label_setLineSpacing,
  label_setAdditionalKerning,
  label_getFontAtlas,
  label_create,
  label_createWithSystemFont,
  label_createWithSystemFontByDimensions,
  label_createWithSystemFontByDimensionsAndAlignments,
  label_createWithTTF,
  label_createWithTTFByDimensions,
  label_createWithTTFByDimensionsAndAlignments,
  label_createWithTTFConfig,
  label_createWithBMFont,
  label_createWithCharMap,
  label_createWithCharMapFromTexture,
  label_createWithCharMapFromPlist,
  LabelConst (..),
  castLabelToConst,
  Label (..),
  castLabelToNonconst,
  LabelSuper (..),
  LabelSuperConst (..),
  TTFConfigValue (..),
  TTFConfigConstPtr (..),
  TTFConfigPtr (..),
  TTFConfigConst (..),
  castTTFConfigToConst,
  TTFConfig (..),
  castTTFConfigToNonconst,
  tTFConfig_fontFilePath_get,
  tTFConfig_fontFilePath_set,
  tTFConfig_fontSize_get,
  tTFConfig_fontSize_set,
  tTFConfig_glyphs_get,
  tTFConfig_glyphs_set,
  tTFConfig_customGlyphs_get,
  tTFConfig_customGlyphs_set,
  tTFConfig_distanceFieldEnabled_get,
  tTFConfig_distanceFieldEnabled_set,
  tTFConfig_outlineSize_get,
  tTFConfig_outlineSize_set,
  tTFConfig_new,
  tTFConfig_newWithGlyphCollection,
  tTFConfig_newWithGlyphCollectionAndOutline,
  TTFConfigSuper (..),
  TTFConfigSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Sprite as M8
import qualified Graphics.UI.Cocos2d.Std as M1
import qualified Graphics.UI.Cocos2d.Texture as M3
import Prelude (($), (++), (.), (/=), (=<<), (==))
import qualified Prelude as HoppyP

foreign import ccall "genpop__Font_createFontAtlas" font_createFontAtlas' ::  HoppyF.Ptr Font -> HoppyP.IO (HoppyF.Ptr FontAtlas)
foreign import ccall "genpop__Font_getFontMaxHeight" font_getFontMaxHeight' ::  HoppyF.Ptr FontConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "gencast__Font__Ref" castFontToRef :: HoppyF.Ptr FontConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Font" castRefToFont :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr FontConst
foreign import ccall "gendel__Font" delete'Font :: HoppyF.Ptr FontConst -> HoppyP.IO ()
foreign import ccall "&gendel__Font" deletePtr'Font :: HoppyF.FunPtr (HoppyF.Ptr FontConst -> HoppyP.IO ())
foreign import ccall "genpop__FontAtlas_new" fontAtlas_new' ::  HoppyF.Ptr Font -> HoppyP.IO (HoppyF.Ptr FontAtlas)
foreign import ccall "genpop__FontAtlas_addTexture" fontAtlas_addTexture' ::  HoppyF.Ptr FontAtlas -> HoppyF.Ptr M3.Texture2D -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__FontAtlas_getLineHeight" fontAtlas_getLineHeight' ::  HoppyF.Ptr FontAtlasConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__FontAtlas_setLineHeight" fontAtlas_setLineHeight' ::  HoppyF.Ptr FontAtlas -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__FontAtlas_getTexture" fontAtlas_getTexture' ::  HoppyF.Ptr FontAtlas -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr M3.Texture2D)
foreign import ccall "genpop__FontAtlas_getFont" fontAtlas_getFont' ::  HoppyF.Ptr FontAtlasConst -> HoppyP.IO (HoppyF.Ptr FontConst)
foreign import ccall "genpop__FontAtlas_purgeTexturesAtlas" fontAtlas_purgeTexturesAtlas' ::  HoppyF.Ptr FontAtlas -> HoppyP.IO ()
foreign import ccall "genpop__FontAtlas_setAntiAliasTexParameters" fontAtlas_setAntiAliasTexParameters' ::  HoppyF.Ptr FontAtlas -> HoppyP.IO ()
foreign import ccall "genpop__FontAtlas_setAliasTexParameters" fontAtlas_setAliasTexParameters' ::  HoppyF.Ptr FontAtlas -> HoppyP.IO ()
foreign import ccall "gencast__FontAtlas__Ref" castFontAtlasToRef :: HoppyF.Ptr FontAtlasConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__FontAtlas" castRefToFontAtlas :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr FontAtlasConst
foreign import ccall "gendel__FontAtlas" delete'FontAtlas :: HoppyF.Ptr FontAtlasConst -> HoppyP.IO ()
foreign import ccall "&gendel__FontAtlas" deletePtr'FontAtlas :: HoppyF.FunPtr (HoppyF.Ptr FontAtlasConst -> HoppyP.IO ())
foreign import ccall "genpop__Label_create" label_create' ::  HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithSystemFont" label_createWithSystemFont' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithSystemFontByDimensions" label_createWithSystemFontByDimensions' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyF.Ptr M2.SizeConst -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithSystemFontByDimensionsAndAlignments" label_createWithSystemFontByDimensionsAndAlignments' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyF.Ptr M2.SizeConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithTTF" label_createWithTTF' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithTTFByDimensions" label_createWithTTFByDimensions' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyF.Ptr M2.SizeConst -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithTTFByDimensionsAndAlignments" label_createWithTTFByDimensionsAndAlignments' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CFloat -> HoppyF.Ptr M2.SizeConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithTTFConfig" label_createWithTTFConfig' ::  HoppyF.Ptr TTFConfigConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithBMFont" label_createWithBMFont' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithCharMap" label_createWithCharMap' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithCharMapFromTexture" label_createWithCharMapFromTexture' ::  HoppyF.Ptr M3.Texture2D -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_createWithCharMapFromPlist" label_createWithCharMapFromPlist' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Label)
foreign import ccall "genpop__Label_setTTFConfig" label_setTTFConfig' ::  HoppyF.Ptr Label -> HoppyF.Ptr TTFConfigConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Label_getTTFConfig" label_getTTFConfig' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr TTFConfigConst)
foreign import ccall "genpop__Label_setBMFontFilePath" label_setBMFontFilePath' ::  HoppyF.Ptr Label -> HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__Label_getBMFontFilePath" label_getBMFontFilePath' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Label_setCharMap" label_setCharMap' ::  HoppyF.Ptr Label -> HoppyF.Ptr M1.StdStringConst -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_setCharMapFromTexture" label_setCharMapFromTexture' ::  HoppyF.Ptr Label -> HoppyF.Ptr M3.Texture2D -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_setCharMapFromPlist" label_setCharMapFromPlist' ::  HoppyF.Ptr Label -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_setSystemFontName" label_setSystemFontName' ::  HoppyF.Ptr Label -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_getSystemFontName" label_getSystemFontName' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Label_setSystemFontSize" label_setSystemFontSize' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getSystemFontSize" label_getSystemFontSize' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_requestSystemFontRefresh" label_requestSystemFontRefresh' ::  HoppyF.Ptr Label -> HoppyP.IO ()
foreign import ccall "genpop__Label_setString" label_setString' ::  HoppyF.Ptr Label -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_getString" label_getString' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__Label_getStringNumLines" label_getStringNumLines' ::  HoppyF.Ptr Label -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Label_getStringLength" label_getStringLength' ::  HoppyF.Ptr Label -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Label_setTextColor" label_setTextColor' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_getTextColor" label_getTextColor' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr M2.Color4BConst)
foreign import ccall "genpop__Label_enableShadow" label_enableShadow' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_enableShadowWithOffset" label_enableShadowWithOffset' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyF.Ptr M2.SizeConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_enableOutline" label_enableOutline' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_enableOutlineWithSize" label_enableOutlineWithSize' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_enableGlow" label_enableGlow' ::  HoppyF.Ptr Label -> HoppyF.Ptr M2.Color4BConst -> HoppyP.IO ()
foreign import ccall "genpop__Label_disableEffect" label_disableEffect' ::  HoppyF.Ptr Label -> HoppyP.IO ()
foreign import ccall "genpop__Label_disableLabelEffect" label_disableLabelEffect' ::  HoppyF.Ptr Label -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_getHorizontalAlignment" label_getHorizontalAlignment' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Label_setHorizontalAlignment" label_setHorizontalAlignment' ::  HoppyF.Ptr Label -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_getVerticalAlignment" label_getVerticalAlignment' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Label_setVerticalAlignment" label_setVerticalAlignment' ::  HoppyF.Ptr Label -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_setAlignment" label_setAlignment' ::  HoppyF.Ptr Label -> HoppyFC.CInt -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__Label_setLineBreakWithoutSpace" label_setLineBreakWithoutSpace' ::  HoppyF.Ptr Label -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Label_setMaxLineWidth" label_setMaxLineWidth' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getMaxLineWidth" label_getMaxLineWidth' ::  HoppyF.Ptr Label -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_getWidth" label_getWidth' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_setWidth" label_setWidth' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getHeight" label_getHeight' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_setHeight" label_setHeight' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getDimensions" label_getDimensions' ::  HoppyF.Ptr LabelConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Label_setDimensions" label_setDimensions' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_updateContent" label_updateContent' ::  HoppyF.Ptr Label -> HoppyP.IO ()
foreign import ccall "genpop__Label_getLetter" label_getLetter' ::  HoppyF.Ptr Label -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr M8.Sprite)
foreign import ccall "genpop__Label_isClipMarginEnabled" label_isClipMarginEnabled' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Label_setClipMarginEnabled" label_setClipMarginEnabled' ::  HoppyF.Ptr Label -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Label_getLineHeight" label_getLineHeight' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_setLineHeight" label_setLineHeight' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getLineSpacing" label_getLineSpacing' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_setLineSpacing" label_setLineSpacing' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getAdditionalKerning" label_getAdditionalKerning' ::  HoppyF.Ptr LabelConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Label_setAdditionalKerning" label_setAdditionalKerning' ::  HoppyF.Ptr Label -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Label_getFontAtlas" label_getFontAtlas' ::  HoppyF.Ptr Label -> HoppyP.IO (HoppyF.Ptr FontAtlas)
foreign import ccall "gencast__Label__Node" castLabelToNode :: HoppyF.Ptr LabelConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Label" castNodeToLabel :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr LabelConst
foreign import ccall "gencast__Label__Ref" castLabelToRef :: HoppyF.Ptr LabelConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Label" castRefToLabel :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LabelConst
foreign import ccall "gendel__Label" delete'Label :: HoppyF.Ptr LabelConst -> HoppyP.IO ()
foreign import ccall "&gendel__Label" deletePtr'Label :: HoppyF.FunPtr (HoppyF.Ptr LabelConst -> HoppyP.IO ())
foreign import ccall "genpop__TTFConfig_fontFilePath_get" tTFConfig_fontFilePath_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__TTFConfig_fontFilePath_set" tTFConfig_fontFilePath_set' ::  HoppyF.Ptr TTFConfig -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_fontSize_get" tTFConfig_fontSize_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__TTFConfig_fontSize_set" tTFConfig_fontSize_set' ::  HoppyF.Ptr TTFConfig -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_glyphs_get" tTFConfig_glyphs_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__TTFConfig_glyphs_set" tTFConfig_glyphs_set' ::  HoppyF.Ptr TTFConfig -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_customGlyphs_get" tTFConfig_customGlyphs_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
foreign import ccall "genpop__TTFConfig_customGlyphs_set" tTFConfig_customGlyphs_set' ::  HoppyF.Ptr TTFConfig -> HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_distanceFieldEnabled_get" tTFConfig_distanceFieldEnabled_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__TTFConfig_distanceFieldEnabled_set" tTFConfig_distanceFieldEnabled_set' ::  HoppyF.Ptr TTFConfig -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_outlineSize_get" tTFConfig_outlineSize_get' ::  HoppyF.Ptr TTFConfigConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__TTFConfig_outlineSize_set" tTFConfig_outlineSize_set' ::  HoppyF.Ptr TTFConfig -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__TTFConfig_new" tTFConfig_new' ::  HoppyF.Ptr HoppyFC.CChar -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr TTFConfig)
foreign import ccall "genpop__TTFConfig_newWithGlyphCollection" tTFConfig_newWithGlyphCollection' ::  HoppyF.Ptr HoppyFC.CChar -> HoppyFC.CFloat -> HoppyFC.CInt -> HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO (HoppyF.Ptr TTFConfig)
foreign import ccall "genpop__TTFConfig_newWithGlyphCollectionAndOutline" tTFConfig_newWithGlyphCollectionAndOutline' ::  HoppyF.Ptr HoppyFC.CChar -> HoppyFC.CFloat -> HoppyFC.CInt -> HoppyF.Ptr HoppyFC.CChar -> HoppyFHR.CBool -> HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr TTFConfig)
foreign import ccall "gendel__TTFConfig" delete'TTFConfig :: HoppyF.Ptr TTFConfigConst -> HoppyP.IO ()
foreign import ccall "&gendel__TTFConfig" deletePtr'TTFConfig :: HoppyF.FunPtr (HoppyF.Ptr TTFConfigConst -> HoppyP.IO ())

class FontValue a where
  withFontPtr :: a -> (FontConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} FontConstPtr a => FontValue a where
#else
instance FontConstPtr a => FontValue a where
#endif
  withFontPtr = HoppyP.flip ($) . toFontConst

class (M2.RefConstPtr this) => FontConstPtr this where
  toFontConst :: this -> FontConst

font_getFontMaxHeight :: (FontValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
font_getFontMaxHeight arg'1 =
  withFontPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (font_getFontMaxHeight' arg'1')

class (FontConstPtr this, M2.RefPtr this) => FontPtr this where
  toFont :: this -> Font

font_createFontAtlas :: (FontPtr arg'1) => arg'1 -> HoppyP.IO FontAtlas
font_createFontAtlas arg'1 =
  HoppyFHR.withCppPtr (toFont arg'1) $ \arg'1' ->
  HoppyP.fmap FontAtlas
  (font_createFontAtlas' arg'1')

data FontConst =
    FontConst (HoppyF.Ptr FontConst)
  | FontConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr FontConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq FontConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord FontConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castFontToConst :: Font -> FontConst
castFontToConst (Font ptr') = FontConst $ HoppyF.castPtr ptr'
castFontToConst (FontGc fptr' ptr') = FontConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr FontConst where
  nullptr = FontConst HoppyF.nullPtr
  
  withCppPtr (FontConst ptr') f' = f' ptr'
  withCppPtr (FontConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (FontConst ptr') = ptr'
  toPtr (FontConstGc _ ptr') = ptr'
  
  touchCppPtr (FontConst _) = HoppyP.return ()
  touchCppPtr (FontConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable FontConst where
  delete (FontConst ptr') = delete'Font ptr'
  delete (FontConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "FontConst", " object."]
  
  toGc this'@(FontConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip FontConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Font :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(FontConstGc {}) = HoppyP.return this'

instance FontConstPtr FontConst where
  toFontConst = HoppyP.id

instance M2.RefConstPtr FontConst where
  toRefConst (FontConst ptr') = M2.RefConst $ castFontToRef ptr'
  toRefConst (FontConstGc fptr' ptr') = M2.RefConstGc fptr' $ castFontToRef ptr'

data Font =
    Font (HoppyF.Ptr Font)
  | FontGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Font)
  deriving (HoppyP.Show)

instance HoppyP.Eq Font where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Font where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castFontToNonconst :: FontConst -> Font
castFontToNonconst (FontConst ptr') = Font $ HoppyF.castPtr ptr'
castFontToNonconst (FontConstGc fptr' ptr') = FontGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Font where
  nullptr = Font HoppyF.nullPtr
  
  withCppPtr (Font ptr') f' = f' ptr'
  withCppPtr (FontGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Font ptr') = ptr'
  toPtr (FontGc _ ptr') = ptr'
  
  touchCppPtr (Font _) = HoppyP.return ()
  touchCppPtr (FontGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Font where
  delete (Font ptr') = delete'Font $ (HoppyF.castPtr ptr' :: HoppyF.Ptr FontConst)
  delete (FontGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Font", " object."]
  
  toGc this'@(Font ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip FontGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Font :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(FontGc {}) = HoppyP.return this'

instance FontConstPtr Font where
  toFontConst (Font ptr') = FontConst $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'
  toFontConst (FontGc fptr' ptr') = FontConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'

instance FontPtr Font where
  toFont = HoppyP.id

instance M2.RefConstPtr Font where
  toRefConst (Font ptr') = M2.RefConst $ castFontToRef $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'
  toRefConst (FontGc fptr' ptr') = M2.RefConstGc fptr' $ castFontToRef $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'

instance M2.RefPtr Font where
  toRef (Font ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castFontToRef $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'
  toRef (FontGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castFontToRef $ (HoppyF.castPtr :: HoppyF.Ptr Font -> HoppyF.Ptr FontConst) ptr'

class FontSuper a where
  downToFont :: a -> Font

instance FontSuper M2.Ref where
  downToFont = castFontToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = FontConst $ castRefToFont ptr'
      cast' (M2.RefConstGc fptr' ptr') = FontConstGc fptr' $ castRefToFont ptr'

class FontSuperConst a where
  downToFontConst :: a -> FontConst

instance FontSuperConst M2.RefConst where
  downToFontConst = cast'
    where
      cast' (M2.RefConst ptr') = FontConst $ castRefToFont ptr'
      cast' (M2.RefConstGc fptr' ptr') = FontConstGc fptr' $ castRefToFont ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Font)) Font where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Font)) Font where
  decode = HoppyP.fmap Font . HoppyF.peek

class FontAtlasValue a where
  withFontAtlasPtr :: a -> (FontAtlasConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} FontAtlasConstPtr a => FontAtlasValue a where
#else
instance FontAtlasConstPtr a => FontAtlasValue a where
#endif
  withFontAtlasPtr = HoppyP.flip ($) . toFontAtlasConst

class (M2.RefConstPtr this) => FontAtlasConstPtr this where
  toFontAtlasConst :: this -> FontAtlasConst

fontAtlas_getLineHeight :: (FontAtlasValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
fontAtlas_getLineHeight arg'1 =
  withFontAtlasPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (fontAtlas_getLineHeight' arg'1')

fontAtlas_getFont :: (FontAtlasValue arg'1) => arg'1 -> HoppyP.IO FontConst
fontAtlas_getFont arg'1 =
  withFontAtlasPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap FontConst
  (fontAtlas_getFont' arg'1')

class (FontAtlasConstPtr this, M2.RefPtr this) => FontAtlasPtr this where
  toFontAtlas :: this -> FontAtlas

fontAtlas_addTexture :: (FontAtlasPtr arg'1, M3.Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
fontAtlas_addTexture arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M3.toTexture2D arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (fontAtlas_addTexture' arg'1' arg'2' arg'3')

fontAtlas_setLineHeight :: (FontAtlasPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
fontAtlas_setLineHeight arg'1 arg'2 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (fontAtlas_setLineHeight' arg'1' arg'2')

fontAtlas_getTexture :: (FontAtlasPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO M3.Texture2D
fontAtlas_getTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap M3.Texture2D
  (fontAtlas_getTexture' arg'1' arg'2')

fontAtlas_purgeTexturesAtlas :: (FontAtlasPtr arg'1) => arg'1 -> HoppyP.IO ()
fontAtlas_purgeTexturesAtlas arg'1 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  (fontAtlas_purgeTexturesAtlas' arg'1')

fontAtlas_setAntiAliasTexParameters :: (FontAtlasPtr arg'1) => arg'1 -> HoppyP.IO ()
fontAtlas_setAntiAliasTexParameters arg'1 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  (fontAtlas_setAntiAliasTexParameters' arg'1')

fontAtlas_setAliasTexParameters :: (FontAtlasPtr arg'1) => arg'1 -> HoppyP.IO ()
fontAtlas_setAliasTexParameters arg'1 =
  HoppyFHR.withCppPtr (toFontAtlas arg'1) $ \arg'1' ->
  (fontAtlas_setAliasTexParameters' arg'1')

data FontAtlasConst =
    FontAtlasConst (HoppyF.Ptr FontAtlasConst)
  | FontAtlasConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr FontAtlasConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq FontAtlasConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord FontAtlasConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castFontAtlasToConst :: FontAtlas -> FontAtlasConst
castFontAtlasToConst (FontAtlas ptr') = FontAtlasConst $ HoppyF.castPtr ptr'
castFontAtlasToConst (FontAtlasGc fptr' ptr') = FontAtlasConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr FontAtlasConst where
  nullptr = FontAtlasConst HoppyF.nullPtr
  
  withCppPtr (FontAtlasConst ptr') f' = f' ptr'
  withCppPtr (FontAtlasConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (FontAtlasConst ptr') = ptr'
  toPtr (FontAtlasConstGc _ ptr') = ptr'
  
  touchCppPtr (FontAtlasConst _) = HoppyP.return ()
  touchCppPtr (FontAtlasConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable FontAtlasConst where
  delete (FontAtlasConst ptr') = delete'FontAtlas ptr'
  delete (FontAtlasConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "FontAtlasConst", " object."]
  
  toGc this'@(FontAtlasConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip FontAtlasConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'FontAtlas :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(FontAtlasConstGc {}) = HoppyP.return this'

instance FontAtlasConstPtr FontAtlasConst where
  toFontAtlasConst = HoppyP.id

instance M2.RefConstPtr FontAtlasConst where
  toRefConst (FontAtlasConst ptr') = M2.RefConst $ castFontAtlasToRef ptr'
  toRefConst (FontAtlasConstGc fptr' ptr') = M2.RefConstGc fptr' $ castFontAtlasToRef ptr'

data FontAtlas =
    FontAtlas (HoppyF.Ptr FontAtlas)
  | FontAtlasGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr FontAtlas)
  deriving (HoppyP.Show)

instance HoppyP.Eq FontAtlas where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord FontAtlas where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castFontAtlasToNonconst :: FontAtlasConst -> FontAtlas
castFontAtlasToNonconst (FontAtlasConst ptr') = FontAtlas $ HoppyF.castPtr ptr'
castFontAtlasToNonconst (FontAtlasConstGc fptr' ptr') = FontAtlasGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr FontAtlas where
  nullptr = FontAtlas HoppyF.nullPtr
  
  withCppPtr (FontAtlas ptr') f' = f' ptr'
  withCppPtr (FontAtlasGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (FontAtlas ptr') = ptr'
  toPtr (FontAtlasGc _ ptr') = ptr'
  
  touchCppPtr (FontAtlas _) = HoppyP.return ()
  touchCppPtr (FontAtlasGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable FontAtlas where
  delete (FontAtlas ptr') = delete'FontAtlas $ (HoppyF.castPtr ptr' :: HoppyF.Ptr FontAtlasConst)
  delete (FontAtlasGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "FontAtlas", " object."]
  
  toGc this'@(FontAtlas ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip FontAtlasGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'FontAtlas :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(FontAtlasGc {}) = HoppyP.return this'

instance FontAtlasConstPtr FontAtlas where
  toFontAtlasConst (FontAtlas ptr') = FontAtlasConst $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'
  toFontAtlasConst (FontAtlasGc fptr' ptr') = FontAtlasConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'

instance FontAtlasPtr FontAtlas where
  toFontAtlas = HoppyP.id

instance M2.RefConstPtr FontAtlas where
  toRefConst (FontAtlas ptr') = M2.RefConst $ castFontAtlasToRef $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'
  toRefConst (FontAtlasGc fptr' ptr') = M2.RefConstGc fptr' $ castFontAtlasToRef $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'

instance M2.RefPtr FontAtlas where
  toRef (FontAtlas ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castFontAtlasToRef $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'
  toRef (FontAtlasGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castFontAtlasToRef $ (HoppyF.castPtr :: HoppyF.Ptr FontAtlas -> HoppyF.Ptr FontAtlasConst) ptr'

fontAtlas_new :: (FontPtr arg'1) => arg'1 -> HoppyP.IO FontAtlas
fontAtlas_new arg'1 =
  HoppyFHR.withCppPtr (toFont arg'1) $ \arg'1' ->
  HoppyP.fmap FontAtlas
  (fontAtlas_new' arg'1')

class FontAtlasSuper a where
  downToFontAtlas :: a -> FontAtlas

instance FontAtlasSuper M2.Ref where
  downToFontAtlas = castFontAtlasToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = FontAtlasConst $ castRefToFontAtlas ptr'
      cast' (M2.RefConstGc fptr' ptr') = FontAtlasConstGc fptr' $ castRefToFontAtlas ptr'

class FontAtlasSuperConst a where
  downToFontAtlasConst :: a -> FontAtlasConst

instance FontAtlasSuperConst M2.RefConst where
  downToFontAtlasConst = cast'
    where
      cast' (M2.RefConst ptr') = FontAtlasConst $ castRefToFontAtlas ptr'
      cast' (M2.RefConstGc fptr' ptr') = FontAtlasConstGc fptr' $ castRefToFontAtlas ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr FontAtlas)) FontAtlas where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr FontAtlas)) FontAtlas where
  decode = HoppyP.fmap FontAtlas . HoppyF.peek

data GlyphCollection =
  GlyphCollection_Dynamic
  | GlyphCollection_Nehe
  | GlyphCollection_Ascii
  | GlyphCollection_Custom
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum GlyphCollection where
  fromEnum GlyphCollection_Dynamic = 0
  fromEnum GlyphCollection_Nehe = 1
  fromEnum GlyphCollection_Ascii = 2
  fromEnum GlyphCollection_Custom = 3
  
  toEnum (0) = GlyphCollection_Dynamic
  toEnum (1) = GlyphCollection_Nehe
  toEnum (2) = GlyphCollection_Ascii
  toEnum (3) = GlyphCollection_Custom
  toEnum n' = HoppyP.error $ "Unknown GlyphCollection numeric value: " ++ HoppyP.show n'

class LabelValue a where
  withLabelPtr :: a -> (LabelConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LabelConstPtr a => LabelValue a where
#else
instance LabelConstPtr a => LabelValue a where
#endif
  withLabelPtr = HoppyP.flip ($) . toLabelConst

class (M5.NodeConstPtr this) => LabelConstPtr this where
  toLabelConst :: this -> LabelConst

label_getTTFConfig :: (LabelValue arg'1) => arg'1 -> HoppyP.IO TTFConfigConst
label_getTTFConfig arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap TTFConfigConst
  (label_getTTFConfig' arg'1')

label_getBMFontFilePath :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
label_getBMFontFilePath arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (label_getBMFontFilePath' arg'1')

label_getSystemFontName :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
label_getSystemFontName arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (label_getSystemFontName' arg'1')

label_getSystemFontSize :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getSystemFontSize arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getSystemFontSize' arg'1')

label_getString :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M1.StdStringConst
label_getString arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M1.StdStringConst
  (label_getString' arg'1')

label_getTextColor :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M2.Color4BConst
label_getTextColor arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color4BConst
  (label_getTextColor' arg'1')

label_getHorizontalAlignment :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M2.TextHAlignment
label_getHorizontalAlignment arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (label_getHorizontalAlignment' arg'1')

label_getVerticalAlignment :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M2.TextVAlignment
label_getVerticalAlignment arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (label_getVerticalAlignment' arg'1')

label_getWidth :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getWidth arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getWidth' arg'1')

label_getHeight :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getHeight arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getHeight' arg'1')

label_getDimensions :: (LabelValue arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
label_getDimensions arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (label_getDimensions' arg'1')

label_isClipMarginEnabled :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
label_isClipMarginEnabled arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (label_isClipMarginEnabled' arg'1')

label_getLineHeight :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getLineHeight arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getLineHeight' arg'1')

label_getLineSpacing :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getLineSpacing arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getLineSpacing' arg'1')

label_getAdditionalKerning :: (LabelValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getAdditionalKerning arg'1 =
  withLabelPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getAdditionalKerning' arg'1')

class (LabelConstPtr this, M5.NodePtr this) => LabelPtr this where
  toLabel :: this -> Label

label_setTTFConfig :: (LabelPtr arg'1, TTFConfigValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
label_setTTFConfig arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  withTTFConfigPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (label_setTTFConfig' arg'1' arg'2')

label_setBMFontFilePath :: (LabelPtr arg'1, M1.StdStringValue arg'2, M2.Vec2Value arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.IO ()
label_setBMFontFilePath arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withVec2Ptr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  (label_setBMFontFilePath' arg'1' arg'2' arg'3')

label_setCharMap :: (LabelPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO ()
label_setCharMap arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  let arg'5' = HoppyFHR.coerceIntegral arg'5 in
  (label_setCharMap' arg'1' arg'2' arg'3' arg'4' arg'5')

label_setCharMapFromTexture :: (LabelPtr arg'1, M3.Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO ()
label_setCharMapFromTexture arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M3.toTexture2D arg'2) $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  let arg'5' = HoppyFHR.coerceIntegral arg'5 in
  (label_setCharMapFromTexture' arg'1' arg'2' arg'3' arg'4' arg'5')

label_setCharMapFromPlist :: (LabelPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_setCharMapFromPlist arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_setCharMapFromPlist' arg'1' arg'2')

label_setSystemFontName :: (LabelPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_setSystemFontName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_setSystemFontName' arg'1' arg'2')

label_setSystemFontSize :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setSystemFontSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setSystemFontSize' arg'1' arg'2')

label_requestSystemFontRefresh :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO ()
label_requestSystemFontRefresh arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  (label_requestSystemFontRefresh' arg'1')

label_setString :: (LabelPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_setString arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_setString' arg'1' arg'2')

label_getStringNumLines :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
label_getStringNumLines arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (label_getStringNumLines' arg'1')

label_getStringLength :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
label_getStringLength arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (label_getStringLength' arg'1')

label_setTextColor :: (LabelPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_setTextColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_setTextColor' arg'1' arg'2')

label_enableShadow :: (LabelPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_enableShadow arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_enableShadow' arg'1' arg'2')

label_enableShadowWithOffset :: (LabelPtr arg'1, M2.Color4BValue arg'2, M2.SizeValue arg'3) => arg'1 -> arg'2 -> arg'3 -> HoppyP.Int -> HoppyP.IO ()
label_enableShadowWithOffset arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withSizePtr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  (label_enableShadowWithOffset' arg'1' arg'2' arg'3' arg'4')

label_enableOutline :: (LabelPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_enableOutline arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_enableOutline' arg'1' arg'2')

label_enableOutlineWithSize :: (LabelPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.Int -> HoppyP.IO ()
label_enableOutlineWithSize arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  (label_enableOutlineWithSize' arg'1' arg'2' arg'3')

label_enableGlow :: (LabelPtr arg'1, M2.Color4BValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
label_enableGlow arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (label_enableGlow' arg'1' arg'2')

label_disableEffect :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO ()
label_disableEffect arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  (label_disableEffect' arg'1')

label_disableLabelEffect :: (LabelPtr arg'1) => arg'1 -> M2.LabelEffect -> HoppyP.IO ()
label_disableLabelEffect arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (label_disableLabelEffect' arg'1' arg'2')

label_setHorizontalAlignment :: (LabelPtr arg'1) => arg'1 -> M2.TextHAlignment -> HoppyP.IO ()
label_setHorizontalAlignment arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (label_setHorizontalAlignment' arg'1' arg'2')

label_setVerticalAlignment :: (LabelPtr arg'1) => arg'1 -> M2.TextVAlignment -> HoppyP.IO ()
label_setVerticalAlignment arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (label_setVerticalAlignment' arg'1' arg'2')

label_setAlignment :: (LabelPtr arg'1) => arg'1 -> M2.TextHAlignment -> M2.TextVAlignment -> HoppyP.IO ()
label_setAlignment arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  (label_setAlignment' arg'1' arg'2' arg'3')

label_setLineBreakWithoutSpace :: (LabelPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
label_setLineBreakWithoutSpace arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (label_setLineBreakWithoutSpace' arg'1' arg'2')

label_setMaxLineWidth :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setMaxLineWidth arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setMaxLineWidth' arg'1' arg'2')

label_getMaxLineWidth :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
label_getMaxLineWidth arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (label_getMaxLineWidth' arg'1')

label_setWidth :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setWidth arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setWidth' arg'1' arg'2')

label_setHeight :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setHeight arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setHeight' arg'1' arg'2')

label_setDimensions :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
label_setDimensions arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  (label_setDimensions' arg'1' arg'2' arg'3')

label_updateContent :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO ()
label_updateContent arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  (label_updateContent' arg'1')

label_getLetter :: (LabelPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO M8.Sprite
label_getLetter arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  HoppyP.fmap M8.Sprite
  (label_getLetter' arg'1' arg'2')

label_setClipMarginEnabled :: (LabelPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
label_setClipMarginEnabled arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (label_setClipMarginEnabled' arg'1' arg'2')

label_setLineHeight :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setLineHeight arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setLineHeight' arg'1' arg'2')

label_setLineSpacing :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setLineSpacing arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setLineSpacing' arg'1' arg'2')

label_setAdditionalKerning :: (LabelPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
label_setAdditionalKerning arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (label_setAdditionalKerning' arg'1' arg'2')

label_getFontAtlas :: (LabelPtr arg'1) => arg'1 -> HoppyP.IO FontAtlas
label_getFontAtlas arg'1 =
  HoppyFHR.withCppPtr (toLabel arg'1) $ \arg'1' ->
  HoppyP.fmap FontAtlas
  (label_getFontAtlas' arg'1')

label_create ::  HoppyP.IO Label
label_create =
  HoppyP.fmap Label
  (label_create')

label_createWithSystemFont :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO Label
label_createWithSystemFont arg'1 arg'2 arg'3 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap Label
  (label_createWithSystemFont' arg'1' arg'2' arg'3')

label_createWithSystemFontByDimensions :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M2.SizeValue arg'4) => arg'1 -> arg'2 -> HoppyP.Float -> arg'4 -> HoppyP.IO Label
label_createWithSystemFontByDimensions arg'1 arg'2 arg'3 arg'4 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  M2.withSizePtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap Label
  (label_createWithSystemFontByDimensions' arg'1' arg'2' arg'3' arg'4')

label_createWithSystemFontByDimensionsAndAlignments :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M2.SizeValue arg'4) => arg'1 -> arg'2 -> HoppyP.Float -> arg'4 -> M2.TextHAlignment -> M2.TextVAlignment -> HoppyP.IO Label
label_createWithSystemFontByDimensionsAndAlignments arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  M2.withSizePtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  let arg'5' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'5 in
  let arg'6' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'6 in
  HoppyP.fmap Label
  (label_createWithSystemFontByDimensionsAndAlignments' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

label_createWithTTF :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO Label
label_createWithTTF arg'1 arg'2 arg'3 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap Label
  (label_createWithTTF' arg'1' arg'2' arg'3')

label_createWithTTFByDimensions :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M2.SizeValue arg'4) => arg'1 -> arg'2 -> HoppyP.Float -> arg'4 -> HoppyP.IO Label
label_createWithTTFByDimensions arg'1 arg'2 arg'3 arg'4 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  M2.withSizePtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  HoppyP.fmap Label
  (label_createWithTTFByDimensions' arg'1' arg'2' arg'3' arg'4')

label_createWithTTFByDimensionsAndAlignments :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M2.SizeValue arg'4) => arg'1 -> arg'2 -> HoppyP.Float -> arg'4 -> M2.TextHAlignment -> M2.TextVAlignment -> HoppyP.IO Label
label_createWithTTFByDimensionsAndAlignments arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  M2.withSizePtr arg'4 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'4' ->
  let arg'5' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'5 in
  let arg'6' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'6 in
  HoppyP.fmap Label
  (label_createWithTTFByDimensionsAndAlignments' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

label_createWithTTFConfig :: (TTFConfigValue arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> M2.TextHAlignment -> HoppyP.Int -> HoppyP.IO Label
label_createWithTTFConfig arg'1 arg'2 arg'3 arg'4 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap Label
  (label_createWithTTFConfig' arg'1' arg'2' arg'3' arg'4')

label_createWithBMFont :: (M1.StdStringValue arg'1, M1.StdStringValue arg'2, M2.Vec2Value arg'5) => arg'1 -> arg'2 -> M2.TextHAlignment -> HoppyP.Int -> arg'5 -> HoppyP.IO Label
label_createWithBMFont arg'1 arg'2 arg'3 arg'4 arg'5 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  M2.withVec2Ptr arg'5 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'5' ->
  HoppyP.fmap Label
  (label_createWithBMFont' arg'1' arg'2' arg'3' arg'4' arg'5')

label_createWithCharMap :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.Int -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO Label
label_createWithCharMap arg'1 arg'2 arg'3 arg'4 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap Label
  (label_createWithCharMap' arg'1' arg'2' arg'3' arg'4')

label_createWithCharMapFromTexture :: (M3.Texture2DPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.Int -> HoppyP.Int -> HoppyP.IO Label
label_createWithCharMapFromTexture arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (M3.toTexture2D arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral arg'3 in
  let arg'4' = HoppyFHR.coerceIntegral arg'4 in
  HoppyP.fmap Label
  (label_createWithCharMapFromTexture' arg'1' arg'2' arg'3' arg'4')

label_createWithCharMapFromPlist :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO Label
label_createWithCharMapFromPlist arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Label
  (label_createWithCharMapFromPlist' arg'1')

data LabelConst =
    LabelConst (HoppyF.Ptr LabelConst)
  | LabelConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LabelConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LabelConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LabelConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLabelToConst :: Label -> LabelConst
castLabelToConst (Label ptr') = LabelConst $ HoppyF.castPtr ptr'
castLabelToConst (LabelGc fptr' ptr') = LabelConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LabelConst where
  nullptr = LabelConst HoppyF.nullPtr
  
  withCppPtr (LabelConst ptr') f' = f' ptr'
  withCppPtr (LabelConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LabelConst ptr') = ptr'
  toPtr (LabelConstGc _ ptr') = ptr'
  
  touchCppPtr (LabelConst _) = HoppyP.return ()
  touchCppPtr (LabelConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LabelConst where
  delete (LabelConst ptr') = delete'Label ptr'
  delete (LabelConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LabelConst", " object."]
  
  toGc this'@(LabelConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LabelConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Label :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LabelConstGc {}) = HoppyP.return this'

instance LabelConstPtr LabelConst where
  toLabelConst = HoppyP.id

instance M5.NodeConstPtr LabelConst where
  toNodeConst (LabelConst ptr') = M5.NodeConst $ castLabelToNode ptr'
  toNodeConst (LabelConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castLabelToNode ptr'

instance M2.RefConstPtr LabelConst where
  toRefConst (LabelConst ptr') = M2.RefConst $ castLabelToRef ptr'
  toRefConst (LabelConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLabelToRef ptr'

data Label =
    Label (HoppyF.Ptr Label)
  | LabelGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Label)
  deriving (HoppyP.Show)

instance HoppyP.Eq Label where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Label where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLabelToNonconst :: LabelConst -> Label
castLabelToNonconst (LabelConst ptr') = Label $ HoppyF.castPtr ptr'
castLabelToNonconst (LabelConstGc fptr' ptr') = LabelGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Label where
  nullptr = Label HoppyF.nullPtr
  
  withCppPtr (Label ptr') f' = f' ptr'
  withCppPtr (LabelGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Label ptr') = ptr'
  toPtr (LabelGc _ ptr') = ptr'
  
  touchCppPtr (Label _) = HoppyP.return ()
  touchCppPtr (LabelGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Label where
  delete (Label ptr') = delete'Label $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LabelConst)
  delete (LabelGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Label", " object."]
  
  toGc this'@(Label ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LabelGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Label :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LabelGc {}) = HoppyP.return this'

instance LabelConstPtr Label where
  toLabelConst (Label ptr') = LabelConst $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'
  toLabelConst (LabelGc fptr' ptr') = LabelConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'

instance LabelPtr Label where
  toLabel = HoppyP.id

instance M5.NodeConstPtr Label where
  toNodeConst (Label ptr') = M5.NodeConst $ castLabelToNode $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'
  toNodeConst (LabelGc fptr' ptr') = M5.NodeConstGc fptr' $ castLabelToNode $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'

instance M5.NodePtr Label where
  toNode (Label ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castLabelToNode $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'
  toNode (LabelGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castLabelToNode $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'

instance M2.RefConstPtr Label where
  toRefConst (Label ptr') = M2.RefConst $ castLabelToRef $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'
  toRefConst (LabelGc fptr' ptr') = M2.RefConstGc fptr' $ castLabelToRef $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'

instance M2.RefPtr Label where
  toRef (Label ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLabelToRef $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'
  toRef (LabelGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLabelToRef $ (HoppyF.castPtr :: HoppyF.Ptr Label -> HoppyF.Ptr LabelConst) ptr'

class LabelSuper a where
  downToLabel :: a -> Label

instance LabelSuper M5.Node where
  downToLabel = castLabelToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = LabelConst $ castNodeToLabel ptr'
      cast' (M5.NodeConstGc fptr' ptr') = LabelConstGc fptr' $ castNodeToLabel ptr'
instance LabelSuper M2.Ref where
  downToLabel = castLabelToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LabelConst $ castRefToLabel ptr'
      cast' (M2.RefConstGc fptr' ptr') = LabelConstGc fptr' $ castRefToLabel ptr'

class LabelSuperConst a where
  downToLabelConst :: a -> LabelConst

instance LabelSuperConst M5.NodeConst where
  downToLabelConst = cast'
    where
      cast' (M5.NodeConst ptr') = LabelConst $ castNodeToLabel ptr'
      cast' (M5.NodeConstGc fptr' ptr') = LabelConstGc fptr' $ castNodeToLabel ptr'
instance LabelSuperConst M2.RefConst where
  downToLabelConst = cast'
    where
      cast' (M2.RefConst ptr') = LabelConst $ castRefToLabel ptr'
      cast' (M2.RefConstGc fptr' ptr') = LabelConstGc fptr' $ castRefToLabel ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Label)) Label where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Label)) Label where
  decode = HoppyP.fmap Label . HoppyF.peek

class TTFConfigValue a where
  withTTFConfigPtr :: a -> (TTFConfigConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} TTFConfigConstPtr a => TTFConfigValue a where
#else
instance TTFConfigConstPtr a => TTFConfigValue a where
#endif
  withTTFConfigPtr = HoppyP.flip ($) . toTTFConfigConst

class (HoppyFHR.CppPtr this) => TTFConfigConstPtr this where
  toTTFConfigConst :: this -> TTFConfigConst

class (TTFConfigConstPtr this) => TTFConfigPtr this where
  toTTFConfig :: this -> TTFConfig

data TTFConfigConst =
    TTFConfigConst (HoppyF.Ptr TTFConfigConst)
  | TTFConfigConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr TTFConfigConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq TTFConfigConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord TTFConfigConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTTFConfigToConst :: TTFConfig -> TTFConfigConst
castTTFConfigToConst (TTFConfig ptr') = TTFConfigConst $ HoppyF.castPtr ptr'
castTTFConfigToConst (TTFConfigGc fptr' ptr') = TTFConfigConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr TTFConfigConst where
  nullptr = TTFConfigConst HoppyF.nullPtr
  
  withCppPtr (TTFConfigConst ptr') f' = f' ptr'
  withCppPtr (TTFConfigConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (TTFConfigConst ptr') = ptr'
  toPtr (TTFConfigConstGc _ ptr') = ptr'
  
  touchCppPtr (TTFConfigConst _) = HoppyP.return ()
  touchCppPtr (TTFConfigConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable TTFConfigConst where
  delete (TTFConfigConst ptr') = delete'TTFConfig ptr'
  delete (TTFConfigConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "TTFConfigConst", " object."]
  
  toGc this'@(TTFConfigConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TTFConfigConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'TTFConfig :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TTFConfigConstGc {}) = HoppyP.return this'

instance TTFConfigConstPtr TTFConfigConst where
  toTTFConfigConst = HoppyP.id

data TTFConfig =
    TTFConfig (HoppyF.Ptr TTFConfig)
  | TTFConfigGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr TTFConfig)
  deriving (HoppyP.Show)

instance HoppyP.Eq TTFConfig where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord TTFConfig where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTTFConfigToNonconst :: TTFConfigConst -> TTFConfig
castTTFConfigToNonconst (TTFConfigConst ptr') = TTFConfig $ HoppyF.castPtr ptr'
castTTFConfigToNonconst (TTFConfigConstGc fptr' ptr') = TTFConfigGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr TTFConfig where
  nullptr = TTFConfig HoppyF.nullPtr
  
  withCppPtr (TTFConfig ptr') f' = f' ptr'
  withCppPtr (TTFConfigGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (TTFConfig ptr') = ptr'
  toPtr (TTFConfigGc _ ptr') = ptr'
  
  touchCppPtr (TTFConfig _) = HoppyP.return ()
  touchCppPtr (TTFConfigGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable TTFConfig where
  delete (TTFConfig ptr') = delete'TTFConfig $ (HoppyF.castPtr ptr' :: HoppyF.Ptr TTFConfigConst)
  delete (TTFConfigGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "TTFConfig", " object."]
  
  toGc this'@(TTFConfig ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TTFConfigGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'TTFConfig :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TTFConfigGc {}) = HoppyP.return this'

instance TTFConfigConstPtr TTFConfig where
  toTTFConfigConst (TTFConfig ptr') = TTFConfigConst $ (HoppyF.castPtr :: HoppyF.Ptr TTFConfig -> HoppyF.Ptr TTFConfigConst) ptr'
  toTTFConfigConst (TTFConfigGc fptr' ptr') = TTFConfigConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr TTFConfig -> HoppyF.Ptr TTFConfigConst) ptr'

instance TTFConfigPtr TTFConfig where
  toTTFConfig = HoppyP.id

tTFConfig_fontFilePath_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO HoppyP.String
tTFConfig_fontFilePath_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M1.StdStringConst) =<<
  (tTFConfig_fontFilePath_get' arg'1')

tTFConfig_fontFilePath_set :: (TTFConfigPtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
tTFConfig_fontFilePath_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (tTFConfig_fontFilePath_set' arg'1' arg'2')

tTFConfig_fontSize_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
tTFConfig_fontSize_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (tTFConfig_fontSize_get' arg'1')

tTFConfig_fontSize_set :: (TTFConfigPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
tTFConfig_fontSize_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (tTFConfig_fontSize_set' arg'1' arg'2')

tTFConfig_glyphs_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO GlyphCollection
tTFConfig_glyphs_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (HoppyP.toEnum . HoppyFHR.coerceIntegral)
  (tTFConfig_glyphs_get' arg'1')

tTFConfig_glyphs_set :: (TTFConfigPtr arg'1) => arg'1 -> GlyphCollection -> HoppyP.IO ()
tTFConfig_glyphs_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'2 in
  (tTFConfig_glyphs_set' arg'1' arg'2')

tTFConfig_customGlyphs_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
tTFConfig_customGlyphs_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (tTFConfig_customGlyphs_get' arg'1')

tTFConfig_customGlyphs_set :: (TTFConfigPtr arg'1) => arg'1 -> HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO ()
tTFConfig_customGlyphs_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (tTFConfig_customGlyphs_set' arg'1' arg'2')

tTFConfig_distanceFieldEnabled_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
tTFConfig_distanceFieldEnabled_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (tTFConfig_distanceFieldEnabled_get' arg'1')

tTFConfig_distanceFieldEnabled_set :: (TTFConfigPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
tTFConfig_distanceFieldEnabled_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (tTFConfig_distanceFieldEnabled_set' arg'1' arg'2')

tTFConfig_outlineSize_get :: (TTFConfigValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
tTFConfig_outlineSize_get arg'1 =
  withTTFConfigPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (tTFConfig_outlineSize_get' arg'1')

tTFConfig_outlineSize_set :: (TTFConfigPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
tTFConfig_outlineSize_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTTFConfig arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (tTFConfig_outlineSize_set' arg'1' arg'2')

tTFConfig_new ::  HoppyF.Ptr HoppyFC.CChar -> HoppyP.Float -> HoppyP.IO TTFConfig
tTFConfig_new arg'1 arg'2 =
  let arg'1' = arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  HoppyP.fmap TTFConfig
  (tTFConfig_new' arg'1' arg'2')

tTFConfig_newWithGlyphCollection ::  HoppyF.Ptr HoppyFC.CChar -> HoppyP.Float -> GlyphCollection -> HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO TTFConfig
tTFConfig_newWithGlyphCollection arg'1 arg'2 arg'3 arg'4 =
  let arg'1' = arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap TTFConfig
  (tTFConfig_newWithGlyphCollection' arg'1' arg'2' arg'3' arg'4')

tTFConfig_newWithGlyphCollectionAndOutline ::  HoppyF.Ptr HoppyFC.CChar -> HoppyP.Float -> GlyphCollection -> HoppyF.Ptr HoppyFC.CChar -> HoppyP.Bool -> HoppyP.Int -> HoppyP.IO TTFConfig
tTFConfig_newWithGlyphCollectionAndOutline arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  let arg'1' = arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyFHR.coerceIntegral $ HoppyP.fromEnum arg'3 in
  let arg'4' = arg'4 in
  let arg'5' = if arg'5 then 1 else 0 in
  let arg'6' = HoppyFHR.coerceIntegral arg'6 in
  HoppyP.fmap TTFConfig
  (tTFConfig_newWithGlyphCollectionAndOutline' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

class TTFConfigSuper a where
  downToTTFConfig :: a -> TTFConfig


class TTFConfigSuperConst a where
  downToTTFConfigConst :: a -> TTFConfigConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr TTFConfig)) TTFConfig where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr TTFConfig)) TTFConfig where
  decode = HoppyP.fmap TTFConfig . HoppyF.peek