module Graphics.UI.Cocos2d.Generator.Interface.Common
  (
    mod_common
  , c_Ref
  , c_Vec2
  , c_Size
  , c_Rect
  , c_Mat4
  , c_AffineTransform
  , c_Color3B
  , c_Color4B
  , e_TextVAlignment
  , e_TextHAlignment
  , e_LabelEffect
  , cb_ScheduleCallback
  , cb_ThreadPerformCallback
  ) where


import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types
import Foreign.Hoppy.Generator.Language.Haskell
import Language.Haskell.Syntax
        ( HsName(HsIdent)
        , HsQName(UnQual)
        , HsType(HsTyCon, HsTyApp)
        )

mod_common :: Module
mod_common =
  moduleModify' (makeModule "common" "Common.hpp" "Common.cpp") $
    moduleAddExports
    [ ExportClass c_Ref
    , ExportClass c_Vec2
    , ExportClass c_Size
    , ExportClass c_Rect
    , ExportClass c_Mat4
    , ExportClass c_AffineTransform
    , ExportClass c_Color3B
    , ExportClass c_Color4B
    , ExportEnum e_TextVAlignment
    , ExportEnum e_TextHAlignment
    , ExportEnum e_LabelEffect
    , ExportCallback cb_ScheduleCallback
    , ExportCallback cb_ThreadPerformCallback
    ]

c_Ref :: Class
c_Ref =
  addReqIncludes [includeStd "base/CCRef.h"] $
    makeClass (ident1 "cocos2d" "Ref") Nothing []
    [ mkMethod "retain" [] voidT
    , mkMethod "release" [] voidT
    , mkMethod "autorelease" [] $ ptrT $ objT c_Ref
    , mkMethod "getReferenceCount" [] $ uintT
    ]

c_Vec2 :: Class
c_Vec2 =
  addReqIncludes [includeStd "math/Vec2.h"] $
    classSetHaskellConversion
      ClassHaskellConversion
        { classHaskellConversionType = do
            addImports $ hsWholeModuleImport "Linear.V2"
            addImports $ hsImport1 "Prelude" "Float"
            return $ HsTyApp (HsTyCon $ UnQual $ HsIdent "V2") (HsTyCon $ UnQual $ HsIdent "Float")
        , classHaskellConversionToCppFn = sayLn "\\(V2 x y) -> vec2_newFromCoordinates x y"
        , classHaskellConversionFromCppFn = do
            addImports $ hsWholeModuleImport "Control.Applicative"
            sayLn "\\v -> V2 <$> vec2_x_get v <*> vec2_y_get v"
        } $
    makeClass (ident1 "cocos2d" "Vec2") Nothing []
      [ mkCtor "newFromCoordinates" [floatT, floatT]
      , mkClassVariable "x" floatT
      , mkClassVariable "y" floatT
      ]

c_Size :: Class
c_Size =
  addReqIncludes [includeStd "math/CCGeometry.h"] $
    classSetHaskellConversion
      ClassHaskellConversion
        { classHaskellConversionType = do
            addImports $ hsWholeModuleImport "Linear.V2"
            addImports $ hsImport1 "Prelude" "Float"
            return $ HsTyApp (HsTyCon $ UnQual $ HsIdent "V2") (HsTyCon $ UnQual $ HsIdent "Float")
        , classHaskellConversionToCppFn = sayLn "\\(V2 x y) -> size_newFromDimensions x y"
        , classHaskellConversionFromCppFn = do
            addImports $ hsWholeModuleImport "Control.Applicative"
            sayLn "\\sz -> V2 <$> size_width_get sz <*> size_height_get sz"
        } $
    makeClass (ident1 "cocos2d" "Size") Nothing []
      [ mkCtor "newFromDimensions" [floatT, floatT]
      , mkClassVariable "width" floatT
      , mkClassVariable "height" floatT
      ]

-- TODO: conversion to diagrams Path?
c_Rect :: Class
c_Rect =
  addReqIncludes [includeStd "math/CCGeometry.h"] $
    classSetConversionToGc $
      makeClass (ident1 "cocos2d" "Rect") Nothing []
        [ mkCtor "new" []
        , mkCtor "newFromCoordinatesAndDimensions" [floatT, floatT, floatT, floatT]
        , mkCtor "newFromOriginAndSize" [refT $ constT $ objT c_Vec2, refT $ constT $ objT c_Size]
        , mkMethod "getMinX" [] floatT
        , mkMethod "getMidX" [] floatT
        , mkMethod "getMaxX" [] floatT
        , mkMethod "getMinY" [] floatT
        , mkMethod "getMidY" [] floatT
        , mkMethod "getMaxY" [] floatT
        , mkConstMethod "equals" [refT $ constT $ objT c_Rect] boolT
        , mkConstMethod "containsPoint" [refT $ constT $ objT c_Vec2] boolT
        , mkConstMethod "intersectsRect" [refT $ constT $ objT c_Rect] boolT
        -- center, radius
        , mkConstMethod "intersectsCircle" [refT $ constT $ objT c_Vec2, floatT] boolT
        , mkConstMethod "unionWithRect" [refT $ constT $ objT c_Rect] $ objT c_Rect
        , mkStaticClassVariable "ZERO" $ constT $ objT c_Rect
        ]

-- TODO: probably easier to write a native Hs type for this?
c_Mat4 :: Class
c_Mat4 =
  addReqIncludes [includeStd "math/CCGeometry.h"] $
    classSetConversionToGc $
      makeClass (ident1 "cocos2d" "Mat4") Nothing []
        [ mkCtor "new" []
        , mkCtor "newFromValues" $ replicate 16 floatT
        -- TODO: other methods
        ]

c_AffineTransform :: Class
c_AffineTransform =
  addReqIncludes [includeStd "math/CCAffineTransform.h"] $
    classSetConversionToGc $
      makeClass (ident1 "cocos2d" "AffineTransform") Nothing []
        [ mkCtor "new" []
        -- TODO: other methods
        ]

-- color
c_Color3B :: Class
c_Color3B =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    classSetHaskellConversion
      ClassHaskellConversion
        { classHaskellConversionType = do
            addImports $ hsWholeModuleImport "Data.Colour"
            addImports $ hsImport1 "Prelude" "Float"
            return $ HsTyApp (HsTyCon $ UnQual $ HsIdent "Colour") (HsTyCon $ UnQual $ HsIdent "Float")
        , classHaskellConversionToCppFn = do
            addImports $ hsWholeModuleImport "Data.Colour.SRGB"
            sayLn "\\c -> let RGB r g b = toSRGB24 c in color3B_newFromRGB r g b"
        , classHaskellConversionFromCppFn = do
            addImports $ hsWholeModuleImport "Control.Applicative"
            addImports $ hsImport1 "Data.Colour.SRGB" "sRGB24"
            sayLn "\\raw -> sRGB24 <$> color3B_r_get raw <*> color3B_g_get raw <*> color3B_b_get raw"
        } $
      makeClass (ident1 "cocos2d" "Color3B") Nothing []
        [ mkCtor "newFromRGB" [word8T, word8T, word8T]
        , mkClassVariable "r" word8T
        , mkClassVariable "g" word8T
        , mkClassVariable "b" word8T
        ]

c_Color4B :: Class
c_Color4B =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    classSetHaskellConversion
      ClassHaskellConversion
        { classHaskellConversionType = do
            addImports $ hsWholeModuleImport "Data.Colour"
            addImports $ hsImport1 "Prelude" "Float"
            return $ HsTyApp (HsTyCon $ UnQual $ HsIdent "AlphaColour") (HsTyCon $ UnQual $ HsIdent "Float")
        , classHaskellConversionToCppFn = do
            addImports $ hsWholeModuleImport "Data.Colour.SRGB"
            addImports $ hsImports "Prelude" ["(>)", "recip", "otherwise", "round", "(*)"]
            sayLn "\\ac -> do"
            indent $ do
              flip sayLet Nothing
                [ sayLn "a = alphaChannel ac"
                , do
                  sayLn "c | a > 0 = darken (recip a) (ac `over` black)"
                  sayLn "  | otherwise = black"
                , sayLn "RGB r g b = toSRGB24 c"
                ]
              sayLn "color4B_newFromRGBA r g b (round $ a * 255)"
        , classHaskellConversionFromCppFn = do
            addImports $ hsWholeModuleImport "Control.Applicative"
            addImports $ hsImport1 "Data.Colour.SRGB" "sRGB24"
            addImports $ hsImports "Prelude" ["return", "Maybe(..)", "(/)", "fromIntegral"]
            sayLn "\\raw -> do"
            indent $ do
              sayLn "c <- sRGB24 <$> color4B_r_get raw <*> color4B_g_get raw <*> color4B_b_get raw"
              sayLn "a <- color4B_a_get raw"
              sayLn "return $ withOpacity c (fromIntegral a / 255)"
        } $
      makeClass (ident1 "cocos2d" "Color4B") Nothing []
        [ mkCtor "newFromRGBA" [word8T, word8T, word8T, word8T]
        , mkClassVariable "r" word8T
        , mkClassVariable "g" word8T
        , mkClassVariable "b" word8T
        , mkClassVariable "a" word8T
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

e_LabelEffect :: CppEnum
e_LabelEffect =
  addReqIncludes [includeStd "base/ccTypes.h"] $
    makeEnum (ident1 "cocos2d" "LabelEffect") Nothing
      [ (0, ["normal"])
      , (1, ["outline"])
      , (2, ["shadow"])
      , (3, ["glow"])
      , (4, ["all"])
      ]

cb_ThreadPerformCallback :: Callback
cb_ThreadPerformCallback =
  makeCallback (toExtName "ThreadPerformCallback") [] voidT

cb_ScheduleCallback :: Callback
cb_ScheduleCallback =
  makeCallback (toExtName "ScheduleCallback") [floatT] voidT
