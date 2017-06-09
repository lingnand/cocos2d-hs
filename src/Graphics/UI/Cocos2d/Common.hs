{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Common (
  AffineTransformValue (..),
  AffineTransformConstPtr (..),
  AffineTransformPtr (..),
  AffineTransformConst (..),
  castAffineTransformToConst,
  AffineTransform (..),
  castAffineTransformToNonconst,
  affineTransform_new,
  AffineTransformSuper (..),
  AffineTransformSuperConst (..),
  Color3BValue (..),
  Color3BConstPtr (..),
  Color3BPtr (..),
  Color3BConst (..),
  castColor3BToConst,
  Color3B (..),
  castColor3BToNonconst,
  color3B_r_get,
  color3B_r_set,
  color3B_g_get,
  color3B_g_set,
  color3B_b_get,
  color3B_b_set,
  color3B_newFromRGB,
  Color3BSuper (..),
  Color3BSuperConst (..),
  Color4BValue (..),
  Color4BConstPtr (..),
  Color4BPtr (..),
  Color4BConst (..),
  castColor4BToConst,
  Color4B (..),
  castColor4BToNonconst,
  color4B_r_get,
  color4B_r_set,
  color4B_g_get,
  color4B_g_set,
  color4B_b_get,
  color4B_b_set,
  color4B_a_get,
  color4B_a_set,
  color4B_newFromRGBA,
  Color4BSuper (..),
  Color4BSuperConst (..),
  LabelEffect (..),
  Mat4Value (..),
  Mat4ConstPtr (..),
  Mat4Ptr (..),
  Mat4Const (..),
  castMat4ToConst,
  Mat4 (..),
  castMat4ToNonconst,
  mat4_new,
  mat4_newFromValues,
  Mat4Super (..),
  Mat4SuperConst (..),
  RectValue (..),
  RectConstPtr (..),
  rect_equals,
  rect_containsPoint,
  rect_intersectsRect,
  rect_intersectsCircle,
  rect_unionWithRect,
  RectPtr (..),
  rect_getMinX,
  rect_getMidX,
  rect_getMaxX,
  rect_getMinY,
  rect_getMidY,
  rect_getMaxY,
  RectConst (..),
  castRectToConst,
  Rect (..),
  castRectToNonconst,
  rect_ZERO_get,
  rect_new,
  rect_newFromCoordinatesAndDimensions,
  rect_newFromOriginAndSize,
  RectSuper (..),
  RectSuperConst (..),
  RefValue (..),
  RefConstPtr (..),
  RefPtr (..),
  ref_retain,
  ref_release,
  ref_autorelease,
  ref_getReferenceCount,
  RefConst (..),
  castRefToConst,
  Ref (..),
  castRefToNonconst,
  RefSuper (..),
  RefSuperConst (..),
  scheduleCallback_newFunPtr,
  scheduleCallback_new,
  SizeValue (..),
  SizeConstPtr (..),
  SizePtr (..),
  SizeConst (..),
  castSizeToConst,
  Size (..),
  castSizeToNonconst,
  size_width_get,
  size_width_set,
  size_height_get,
  size_height_set,
  size_newFromDimensions,
  SizeSuper (..),
  SizeSuperConst (..),
  TextHAlignment (..),
  TextVAlignment (..),
  threadPerformCallback_newFunPtr,
  threadPerformCallback_new,
  Vec2Value (..),
  Vec2ConstPtr (..),
  Vec2Ptr (..),
  Vec2Const (..),
  castVec2ToConst,
  Vec2 (..),
  castVec2ToNonconst,
  vec2_x_get,
  vec2_x_set,
  vec2_y_get,
  vec2_y_set,
  vec2_newFromCoordinates,
  Vec2Super (..),
  Vec2SuperConst (..),
  ) where

import Control.Applicative
import Data.Colour
import Data.Colour.SRGB
import qualified Data.Word as HoppyDW
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import Linear.V2
import Prelude (
 ($), (*), (++), (.), (/), (/=), (=<<), (==), (>), Float, fromIntegral, otherwise, recip, return,
 round
  )
import qualified Prelude as HoppyP

foreign import ccall "genpop__AffineTransform_new" affineTransform_new' ::  HoppyP.IO (HoppyF.Ptr AffineTransform)
foreign import ccall "gendel__AffineTransform" delete'AffineTransform :: HoppyF.Ptr AffineTransformConst -> HoppyP.IO ()
foreign import ccall "&gendel__AffineTransform" deletePtr'AffineTransform :: HoppyF.FunPtr (HoppyF.Ptr AffineTransformConst -> HoppyP.IO ())
foreign import ccall "genpop__Color3B_r_get" color3B_r_get' ::  HoppyF.Ptr Color3BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color3B_r_set" color3B_r_set' ::  HoppyF.Ptr Color3B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color3B_g_get" color3B_g_get' ::  HoppyF.Ptr Color3BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color3B_g_set" color3B_g_set' ::  HoppyF.Ptr Color3B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color3B_b_get" color3B_b_get' ::  HoppyF.Ptr Color3BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color3B_b_set" color3B_b_set' ::  HoppyF.Ptr Color3B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color3B_newFromRGB" color3B_newFromRGB' ::  HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyP.IO (HoppyF.Ptr Color3B)
foreign import ccall "gendel__Color3B" delete'Color3B :: HoppyF.Ptr Color3BConst -> HoppyP.IO ()
foreign import ccall "&gendel__Color3B" deletePtr'Color3B :: HoppyF.FunPtr (HoppyF.Ptr Color3BConst -> HoppyP.IO ())
foreign import ccall "genpop__Color4B_r_get" color4B_r_get' ::  HoppyF.Ptr Color4BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color4B_r_set" color4B_r_set' ::  HoppyF.Ptr Color4B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color4B_g_get" color4B_g_get' ::  HoppyF.Ptr Color4BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color4B_g_set" color4B_g_set' ::  HoppyF.Ptr Color4B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color4B_b_get" color4B_b_get' ::  HoppyF.Ptr Color4BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color4B_b_set" color4B_b_set' ::  HoppyF.Ptr Color4B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color4B_a_get" color4B_a_get' ::  HoppyF.Ptr Color4BConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__Color4B_a_set" color4B_a_set' ::  HoppyF.Ptr Color4B -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__Color4B_newFromRGBA" color4B_newFromRGBA' ::  HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyP.IO (HoppyF.Ptr Color4B)
foreign import ccall "gendel__Color4B" delete'Color4B :: HoppyF.Ptr Color4BConst -> HoppyP.IO ()
foreign import ccall "&gendel__Color4B" deletePtr'Color4B :: HoppyF.FunPtr (HoppyF.Ptr Color4BConst -> HoppyP.IO ())
foreign import ccall "genpop__Mat4_new" mat4_new' ::  HoppyP.IO (HoppyF.Ptr Mat4)
foreign import ccall "genpop__Mat4_newFromValues" mat4_newFromValues' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Mat4)
foreign import ccall "gendel__Mat4" delete'Mat4 :: HoppyF.Ptr Mat4Const -> HoppyP.IO ()
foreign import ccall "&gendel__Mat4" deletePtr'Mat4 :: HoppyF.FunPtr (HoppyF.Ptr Mat4Const -> HoppyP.IO ())
foreign import ccall "genpop__Rect_ZERO_get" rect_ZERO_get' ::  HoppyP.IO (HoppyF.Ptr Rect)
foreign import ccall "genpop__Rect_new" rect_new' ::  HoppyP.IO (HoppyF.Ptr Rect)
foreign import ccall "genpop__Rect_newFromCoordinatesAndDimensions" rect_newFromCoordinatesAndDimensions' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Rect)
foreign import ccall "genpop__Rect_newFromOriginAndSize" rect_newFromOriginAndSize' ::  HoppyF.Ptr Vec2Const -> HoppyF.Ptr SizeConst -> HoppyP.IO (HoppyF.Ptr Rect)
foreign import ccall "genpop__Rect_getMinX" rect_getMinX' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_getMidX" rect_getMidX' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_getMaxX" rect_getMaxX' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_getMinY" rect_getMinY' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_getMidY" rect_getMidY' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_getMaxY" rect_getMaxY' ::  HoppyF.Ptr Rect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Rect_equals" rect_equals' ::  HoppyF.Ptr RectConst -> HoppyF.Ptr RectConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Rect_containsPoint" rect_containsPoint' ::  HoppyF.Ptr RectConst -> HoppyF.Ptr Vec2Const -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Rect_intersectsRect" rect_intersectsRect' ::  HoppyF.Ptr RectConst -> HoppyF.Ptr RectConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Rect_intersectsCircle" rect_intersectsCircle' ::  HoppyF.Ptr RectConst -> HoppyF.Ptr Vec2Const -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Rect_unionWithRect" rect_unionWithRect' ::  HoppyF.Ptr RectConst -> HoppyF.Ptr RectConst -> HoppyP.IO (HoppyF.Ptr Rect)
foreign import ccall "gendel__Rect" delete'Rect :: HoppyF.Ptr RectConst -> HoppyP.IO ()
foreign import ccall "&gendel__Rect" deletePtr'Rect :: HoppyF.FunPtr (HoppyF.Ptr RectConst -> HoppyP.IO ())
foreign import ccall "genpop__Ref_retain" ref_retain' ::  HoppyF.Ptr Ref -> HoppyP.IO ()
foreign import ccall "genpop__Ref_release" ref_release' ::  HoppyF.Ptr Ref -> HoppyP.IO ()
foreign import ccall "genpop__Ref_autorelease" ref_autorelease' ::  HoppyF.Ptr Ref -> HoppyP.IO (HoppyF.Ptr Ref)
foreign import ccall "genpop__Ref_getReferenceCount" ref_getReferenceCount' ::  HoppyF.Ptr Ref -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "gendel__Ref" delete'Ref :: HoppyF.Ptr RefConst -> HoppyP.IO ()
foreign import ccall "&gendel__Ref" deletePtr'Ref :: HoppyF.FunPtr (HoppyF.Ptr RefConst -> HoppyP.IO ())
foreign import ccall "wrapper" scheduleCallback_new'newFunPtr :: (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CFloat -> HoppyP.IO ()))
foreign import ccall "genpop__ScheduleCallback" scheduleCallback_new'newCallback :: HoppyF.FunPtr (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CFloat -> HoppyP.IO ()))
foreign import ccall "genpop__Size_width_get" size_width_get' ::  HoppyF.Ptr SizeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Size_width_set" size_width_set' ::  HoppyF.Ptr Size -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Size_height_get" size_height_get' ::  HoppyF.Ptr SizeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Size_height_set" size_height_set' ::  HoppyF.Ptr Size -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Size_newFromDimensions" size_newFromDimensions' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Size)
foreign import ccall "gendel__Size" delete'Size :: HoppyF.Ptr SizeConst -> HoppyP.IO ()
foreign import ccall "&gendel__Size" deletePtr'Size :: HoppyF.FunPtr (HoppyF.Ptr SizeConst -> HoppyP.IO ())
foreign import ccall "wrapper" threadPerformCallback_new'newFunPtr :: HoppyP.IO () -> HoppyP.IO (HoppyF.FunPtr (HoppyP.IO ()))
foreign import ccall "genpop__ThreadPerformCallback" threadPerformCallback_new'newCallback :: HoppyF.FunPtr (HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyP.IO ()))
foreign import ccall "genpop__Vec2_x_get" vec2_x_get' ::  HoppyF.Ptr Vec2Const -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Vec2_x_set" vec2_x_set' ::  HoppyF.Ptr Vec2 -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Vec2_y_get" vec2_y_get' ::  HoppyF.Ptr Vec2Const -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__Vec2_y_set" vec2_y_set' ::  HoppyF.Ptr Vec2 -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__Vec2_newFromCoordinates" vec2_newFromCoordinates' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr Vec2)
foreign import ccall "gendel__Vec2" delete'Vec2 :: HoppyF.Ptr Vec2Const -> HoppyP.IO ()
foreign import ccall "&gendel__Vec2" deletePtr'Vec2 :: HoppyF.FunPtr (HoppyF.Ptr Vec2Const -> HoppyP.IO ())

class AffineTransformValue a where
  withAffineTransformPtr :: a -> (AffineTransformConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} AffineTransformConstPtr a => AffineTransformValue a where
#else
instance AffineTransformConstPtr a => AffineTransformValue a where
#endif
  withAffineTransformPtr = HoppyP.flip ($) . toAffineTransformConst

class (HoppyFHR.CppPtr this) => AffineTransformConstPtr this where
  toAffineTransformConst :: this -> AffineTransformConst

class (AffineTransformConstPtr this) => AffineTransformPtr this where
  toAffineTransform :: this -> AffineTransform

data AffineTransformConst =
    AffineTransformConst (HoppyF.Ptr AffineTransformConst)
  | AffineTransformConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AffineTransformConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq AffineTransformConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AffineTransformConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAffineTransformToConst :: AffineTransform -> AffineTransformConst
castAffineTransformToConst (AffineTransform ptr') = AffineTransformConst $ HoppyF.castPtr ptr'
castAffineTransformToConst (AffineTransformGc fptr' ptr') = AffineTransformConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AffineTransformConst where
  nullptr = AffineTransformConst HoppyF.nullPtr
  
  withCppPtr (AffineTransformConst ptr') f' = f' ptr'
  withCppPtr (AffineTransformConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AffineTransformConst ptr') = ptr'
  toPtr (AffineTransformConstGc _ ptr') = ptr'
  
  touchCppPtr (AffineTransformConst _) = HoppyP.return ()
  touchCppPtr (AffineTransformConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AffineTransformConst where
  delete (AffineTransformConst ptr') = delete'AffineTransform ptr'
  delete (AffineTransformConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AffineTransformConst", " object."]
  
  toGc this'@(AffineTransformConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AffineTransformConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AffineTransform :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AffineTransformConstGc {}) = HoppyP.return this'

instance AffineTransformConstPtr AffineTransformConst where
  toAffineTransformConst = HoppyP.id

data AffineTransform =
    AffineTransform (HoppyF.Ptr AffineTransform)
  | AffineTransformGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr AffineTransform)
  deriving (HoppyP.Show)

instance HoppyP.Eq AffineTransform where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord AffineTransform where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castAffineTransformToNonconst :: AffineTransformConst -> AffineTransform
castAffineTransformToNonconst (AffineTransformConst ptr') = AffineTransform $ HoppyF.castPtr ptr'
castAffineTransformToNonconst (AffineTransformConstGc fptr' ptr') = AffineTransformGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr AffineTransform where
  nullptr = AffineTransform HoppyF.nullPtr
  
  withCppPtr (AffineTransform ptr') f' = f' ptr'
  withCppPtr (AffineTransformGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (AffineTransform ptr') = ptr'
  toPtr (AffineTransformGc _ ptr') = ptr'
  
  touchCppPtr (AffineTransform _) = HoppyP.return ()
  touchCppPtr (AffineTransformGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable AffineTransform where
  delete (AffineTransform ptr') = delete'AffineTransform $ (HoppyF.castPtr ptr' :: HoppyF.Ptr AffineTransformConst)
  delete (AffineTransformGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "AffineTransform", " object."]
  
  toGc this'@(AffineTransform ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip AffineTransformGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'AffineTransform :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(AffineTransformGc {}) = HoppyP.return this'

instance AffineTransformConstPtr AffineTransform where
  toAffineTransformConst (AffineTransform ptr') = AffineTransformConst $ (HoppyF.castPtr :: HoppyF.Ptr AffineTransform -> HoppyF.Ptr AffineTransformConst) ptr'
  toAffineTransformConst (AffineTransformGc fptr' ptr') = AffineTransformConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr AffineTransform -> HoppyF.Ptr AffineTransformConst) ptr'

instance AffineTransformPtr AffineTransform where
  toAffineTransform = HoppyP.id

affineTransform_new ::  HoppyP.IO AffineTransform
affineTransform_new =
  HoppyP.fmap AffineTransform
  (affineTransform_new')

class AffineTransformSuper a where
  downToAffineTransform :: a -> AffineTransform


class AffineTransformSuperConst a where
  downToAffineTransformConst :: a -> AffineTransformConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr AffineTransform)) AffineTransform where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr AffineTransform)) AffineTransform where
  decode = HoppyP.fmap AffineTransform . HoppyF.peek

class Color3BValue a where
  withColor3BPtr :: a -> (Color3BConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} Color3BConstPtr a => Color3BValue a where
#else
instance Color3BConstPtr a => Color3BValue a where
#endif
  withColor3BPtr = HoppyP.flip ($) . toColor3BConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} Color3BValue (Colour Float) where
#else
instance Color3BValue (Colour Float) where
#endif
  withColor3BPtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => Color3BConstPtr this where
  toColor3BConst :: this -> Color3BConst

class (Color3BConstPtr this) => Color3BPtr this where
  toColor3B :: this -> Color3B

data Color3BConst =
    Color3BConst (HoppyF.Ptr Color3BConst)
  | Color3BConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Color3BConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq Color3BConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Color3BConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castColor3BToConst :: Color3B -> Color3BConst
castColor3BToConst (Color3B ptr') = Color3BConst $ HoppyF.castPtr ptr'
castColor3BToConst (Color3BGc fptr' ptr') = Color3BConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Color3BConst where
  nullptr = Color3BConst HoppyF.nullPtr
  
  withCppPtr (Color3BConst ptr') f' = f' ptr'
  withCppPtr (Color3BConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Color3BConst ptr') = ptr'
  toPtr (Color3BConstGc _ ptr') = ptr'
  
  touchCppPtr (Color3BConst _) = HoppyP.return ()
  touchCppPtr (Color3BConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Color3BConst where
  delete (Color3BConst ptr') = delete'Color3B ptr'
  delete (Color3BConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Color3BConst", " object."]
  
  toGc this'@(Color3BConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Color3BConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Color3B :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Color3BConstGc {}) = HoppyP.return this'

instance Color3BConstPtr Color3BConst where
  toColor3BConst = HoppyP.id

data Color3B =
    Color3B (HoppyF.Ptr Color3B)
  | Color3BGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Color3B)
  deriving (HoppyP.Show)

instance HoppyP.Eq Color3B where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Color3B where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castColor3BToNonconst :: Color3BConst -> Color3B
castColor3BToNonconst (Color3BConst ptr') = Color3B $ HoppyF.castPtr ptr'
castColor3BToNonconst (Color3BConstGc fptr' ptr') = Color3BGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Color3B where
  nullptr = Color3B HoppyF.nullPtr
  
  withCppPtr (Color3B ptr') f' = f' ptr'
  withCppPtr (Color3BGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Color3B ptr') = ptr'
  toPtr (Color3BGc _ ptr') = ptr'
  
  touchCppPtr (Color3B _) = HoppyP.return ()
  touchCppPtr (Color3BGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Color3B where
  delete (Color3B ptr') = delete'Color3B $ (HoppyF.castPtr ptr' :: HoppyF.Ptr Color3BConst)
  delete (Color3BGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Color3B", " object."]
  
  toGc this'@(Color3B ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Color3BGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Color3B :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Color3BGc {}) = HoppyP.return this'

instance Color3BConstPtr Color3B where
  toColor3BConst (Color3B ptr') = Color3BConst $ (HoppyF.castPtr :: HoppyF.Ptr Color3B -> HoppyF.Ptr Color3BConst) ptr'
  toColor3BConst (Color3BGc fptr' ptr') = Color3BConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Color3B -> HoppyF.Ptr Color3BConst) ptr'

instance Color3BPtr Color3B where
  toColor3B = HoppyP.id

color3B_r_get :: (Color3BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color3B_r_get arg'1 =
  withColor3BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color3B_r_get' arg'1')

color3B_r_set :: (Color3BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color3B_r_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor3B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color3B_r_set' arg'1' arg'2')

color3B_g_get :: (Color3BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color3B_g_get arg'1 =
  withColor3BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color3B_g_get' arg'1')

color3B_g_set :: (Color3BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color3B_g_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor3B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color3B_g_set' arg'1' arg'2')

color3B_b_get :: (Color3BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color3B_b_get arg'1 =
  withColor3BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color3B_b_get' arg'1')

color3B_b_set :: (Color3BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color3B_b_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor3B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color3B_b_set' arg'1' arg'2')

color3B_newFromRGB ::  HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyP.IO Color3B
color3B_newFromRGB arg'1 arg'2 arg'3 =
  let arg'1' = arg'1 in
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  HoppyP.fmap Color3B
  (color3B_newFromRGB' arg'1' arg'2' arg'3')

class Color3BSuper a where
  downToColor3B :: a -> Color3B


class Color3BSuperConst a where
  downToColor3BConst :: a -> Color3BConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Color3B)) Color3B where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Color3B)) Color3B where
  decode = HoppyP.fmap Color3B . HoppyF.peek

instance HoppyFHR.Encodable Color3B (Colour Float) where
  encode =
    \c -> let RGB r g b = toSRGB24 c in color3B_newFromRGB r g b

instance HoppyFHR.Encodable Color3BConst (Colour Float) where
  encode = HoppyP.fmap (toColor3BConst) . HoppyFHR.encodeAs (HoppyP.undefined :: Color3B)

instance HoppyFHR.Decodable Color3B (Colour Float) where
  decode = HoppyFHR.decode . toColor3BConst

instance HoppyFHR.Decodable Color3BConst (Colour Float) where
  decode =
    \raw -> sRGB24 <$> color3B_r_get raw <*> color3B_g_get raw <*> color3B_b_get raw

class Color4BValue a where
  withColor4BPtr :: a -> (Color4BConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} Color4BConstPtr a => Color4BValue a where
#else
instance Color4BConstPtr a => Color4BValue a where
#endif
  withColor4BPtr = HoppyP.flip ($) . toColor4BConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} Color4BValue (AlphaColour Float) where
#else
instance Color4BValue (AlphaColour Float) where
#endif
  withColor4BPtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => Color4BConstPtr this where
  toColor4BConst :: this -> Color4BConst

class (Color4BConstPtr this) => Color4BPtr this where
  toColor4B :: this -> Color4B

data Color4BConst =
    Color4BConst (HoppyF.Ptr Color4BConst)
  | Color4BConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Color4BConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq Color4BConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Color4BConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castColor4BToConst :: Color4B -> Color4BConst
castColor4BToConst (Color4B ptr') = Color4BConst $ HoppyF.castPtr ptr'
castColor4BToConst (Color4BGc fptr' ptr') = Color4BConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Color4BConst where
  nullptr = Color4BConst HoppyF.nullPtr
  
  withCppPtr (Color4BConst ptr') f' = f' ptr'
  withCppPtr (Color4BConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Color4BConst ptr') = ptr'
  toPtr (Color4BConstGc _ ptr') = ptr'
  
  touchCppPtr (Color4BConst _) = HoppyP.return ()
  touchCppPtr (Color4BConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Color4BConst where
  delete (Color4BConst ptr') = delete'Color4B ptr'
  delete (Color4BConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Color4BConst", " object."]
  
  toGc this'@(Color4BConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Color4BConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Color4B :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Color4BConstGc {}) = HoppyP.return this'

instance Color4BConstPtr Color4BConst where
  toColor4BConst = HoppyP.id

data Color4B =
    Color4B (HoppyF.Ptr Color4B)
  | Color4BGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Color4B)
  deriving (HoppyP.Show)

instance HoppyP.Eq Color4B where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Color4B where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castColor4BToNonconst :: Color4BConst -> Color4B
castColor4BToNonconst (Color4BConst ptr') = Color4B $ HoppyF.castPtr ptr'
castColor4BToNonconst (Color4BConstGc fptr' ptr') = Color4BGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Color4B where
  nullptr = Color4B HoppyF.nullPtr
  
  withCppPtr (Color4B ptr') f' = f' ptr'
  withCppPtr (Color4BGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Color4B ptr') = ptr'
  toPtr (Color4BGc _ ptr') = ptr'
  
  touchCppPtr (Color4B _) = HoppyP.return ()
  touchCppPtr (Color4BGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Color4B where
  delete (Color4B ptr') = delete'Color4B $ (HoppyF.castPtr ptr' :: HoppyF.Ptr Color4BConst)
  delete (Color4BGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Color4B", " object."]
  
  toGc this'@(Color4B ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Color4BGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Color4B :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Color4BGc {}) = HoppyP.return this'

instance Color4BConstPtr Color4B where
  toColor4BConst (Color4B ptr') = Color4BConst $ (HoppyF.castPtr :: HoppyF.Ptr Color4B -> HoppyF.Ptr Color4BConst) ptr'
  toColor4BConst (Color4BGc fptr' ptr') = Color4BConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Color4B -> HoppyF.Ptr Color4BConst) ptr'

instance Color4BPtr Color4B where
  toColor4B = HoppyP.id

color4B_r_get :: (Color4BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color4B_r_get arg'1 =
  withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color4B_r_get' arg'1')

color4B_r_set :: (Color4BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color4B_r_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor4B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color4B_r_set' arg'1' arg'2')

color4B_g_get :: (Color4BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color4B_g_get arg'1 =
  withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color4B_g_get' arg'1')

color4B_g_set :: (Color4BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color4B_g_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor4B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color4B_g_set' arg'1' arg'2')

color4B_b_get :: (Color4BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color4B_b_get arg'1 =
  withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color4B_b_get' arg'1')

color4B_b_set :: (Color4BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color4B_b_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor4B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color4B_b_set' arg'1' arg'2')

color4B_a_get :: (Color4BValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
color4B_a_get arg'1 =
  withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (color4B_a_get' arg'1')

color4B_a_set :: (Color4BPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
color4B_a_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toColor4B arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (color4B_a_set' arg'1' arg'2')

color4B_newFromRGBA ::  HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyDW.Word8 -> HoppyP.IO Color4B
color4B_newFromRGBA arg'1 arg'2 arg'3 arg'4 =
  let arg'1' = arg'1 in
  let arg'2' = arg'2 in
  let arg'3' = arg'3 in
  let arg'4' = arg'4 in
  HoppyP.fmap Color4B
  (color4B_newFromRGBA' arg'1' arg'2' arg'3' arg'4')

class Color4BSuper a where
  downToColor4B :: a -> Color4B


class Color4BSuperConst a where
  downToColor4BConst :: a -> Color4BConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Color4B)) Color4B where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Color4B)) Color4B where
  decode = HoppyP.fmap Color4B . HoppyF.peek

instance HoppyFHR.Encodable Color4B (AlphaColour Float) where
  encode =
    \ac -> do
      let
        a = alphaChannel ac
        c | a > 0 = darken (recip a) (ac `over` black)
          | otherwise = black
        RGB r g b = toSRGB24 c
      color4B_newFromRGBA r g b (round $ a * 255)

instance HoppyFHR.Encodable Color4BConst (AlphaColour Float) where
  encode = HoppyP.fmap (toColor4BConst) . HoppyFHR.encodeAs (HoppyP.undefined :: Color4B)

instance HoppyFHR.Decodable Color4B (AlphaColour Float) where
  decode = HoppyFHR.decode . toColor4BConst

instance HoppyFHR.Decodable Color4BConst (AlphaColour Float) where
  decode =
    \raw -> do
      c <- sRGB24 <$> color4B_r_get raw <*> color4B_g_get raw <*> color4B_b_get raw
      a <- color4B_a_get raw
      return $ withOpacity c (fromIntegral a / 255)

data LabelEffect =
  LabelEffect_Normal
  | LabelEffect_Outline
  | LabelEffect_Shadow
  | LabelEffect_Glow
  | LabelEffect_All
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum LabelEffect where
  fromEnum LabelEffect_Normal = 0
  fromEnum LabelEffect_Outline = 1
  fromEnum LabelEffect_Shadow = 2
  fromEnum LabelEffect_Glow = 3
  fromEnum LabelEffect_All = 4
  
  toEnum (0) = LabelEffect_Normal
  toEnum (1) = LabelEffect_Outline
  toEnum (2) = LabelEffect_Shadow
  toEnum (3) = LabelEffect_Glow
  toEnum (4) = LabelEffect_All
  toEnum n' = HoppyP.error $ "Unknown LabelEffect numeric value: " ++ HoppyP.show n'

class Mat4Value a where
  withMat4Ptr :: a -> (Mat4Const -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} Mat4ConstPtr a => Mat4Value a where
#else
instance Mat4ConstPtr a => Mat4Value a where
#endif
  withMat4Ptr = HoppyP.flip ($) . toMat4Const

class (HoppyFHR.CppPtr this) => Mat4ConstPtr this where
  toMat4Const :: this -> Mat4Const

class (Mat4ConstPtr this) => Mat4Ptr this where
  toMat4 :: this -> Mat4

data Mat4Const =
    Mat4Const (HoppyF.Ptr Mat4Const)
  | Mat4ConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Mat4Const)
  deriving (HoppyP.Show)

instance HoppyP.Eq Mat4Const where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Mat4Const where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castMat4ToConst :: Mat4 -> Mat4Const
castMat4ToConst (Mat4 ptr') = Mat4Const $ HoppyF.castPtr ptr'
castMat4ToConst (Mat4Gc fptr' ptr') = Mat4ConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Mat4Const where
  nullptr = Mat4Const HoppyF.nullPtr
  
  withCppPtr (Mat4Const ptr') f' = f' ptr'
  withCppPtr (Mat4ConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Mat4Const ptr') = ptr'
  toPtr (Mat4ConstGc _ ptr') = ptr'
  
  touchCppPtr (Mat4Const _) = HoppyP.return ()
  touchCppPtr (Mat4ConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Mat4Const where
  delete (Mat4Const ptr') = delete'Mat4 ptr'
  delete (Mat4ConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Mat4Const", " object."]
  
  toGc this'@(Mat4Const ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Mat4ConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Mat4 :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Mat4ConstGc {}) = HoppyP.return this'

instance Mat4ConstPtr Mat4Const where
  toMat4Const = HoppyP.id

data Mat4 =
    Mat4 (HoppyF.Ptr Mat4)
  | Mat4Gc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Mat4)
  deriving (HoppyP.Show)

instance HoppyP.Eq Mat4 where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Mat4 where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castMat4ToNonconst :: Mat4Const -> Mat4
castMat4ToNonconst (Mat4Const ptr') = Mat4 $ HoppyF.castPtr ptr'
castMat4ToNonconst (Mat4ConstGc fptr' ptr') = Mat4Gc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Mat4 where
  nullptr = Mat4 HoppyF.nullPtr
  
  withCppPtr (Mat4 ptr') f' = f' ptr'
  withCppPtr (Mat4Gc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Mat4 ptr') = ptr'
  toPtr (Mat4Gc _ ptr') = ptr'
  
  touchCppPtr (Mat4 _) = HoppyP.return ()
  touchCppPtr (Mat4Gc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Mat4 where
  delete (Mat4 ptr') = delete'Mat4 $ (HoppyF.castPtr ptr' :: HoppyF.Ptr Mat4Const)
  delete (Mat4Gc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Mat4", " object."]
  
  toGc this'@(Mat4 ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Mat4Gc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Mat4 :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Mat4Gc {}) = HoppyP.return this'

instance Mat4ConstPtr Mat4 where
  toMat4Const (Mat4 ptr') = Mat4Const $ (HoppyF.castPtr :: HoppyF.Ptr Mat4 -> HoppyF.Ptr Mat4Const) ptr'
  toMat4Const (Mat4Gc fptr' ptr') = Mat4ConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Mat4 -> HoppyF.Ptr Mat4Const) ptr'

instance Mat4Ptr Mat4 where
  toMat4 = HoppyP.id

mat4_new ::  HoppyP.IO Mat4
mat4_new =
  HoppyP.fmap Mat4
  (mat4_new')

mat4_newFromValues ::  HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO Mat4
mat4_newFromValues arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 arg'8 arg'9 arg'10 arg'11 arg'12 arg'13 arg'14 arg'15 arg'16 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  let arg'5' = HoppyP.realToFrac arg'5 in
  let arg'6' = HoppyP.realToFrac arg'6 in
  let arg'7' = HoppyP.realToFrac arg'7 in
  let arg'8' = HoppyP.realToFrac arg'8 in
  let arg'9' = HoppyP.realToFrac arg'9 in
  let arg'10' = HoppyP.realToFrac arg'10 in
  let arg'11' = HoppyP.realToFrac arg'11 in
  let arg'12' = HoppyP.realToFrac arg'12 in
  let arg'13' = HoppyP.realToFrac arg'13 in
  let arg'14' = HoppyP.realToFrac arg'14 in
  let arg'15' = HoppyP.realToFrac arg'15 in
  let arg'16' = HoppyP.realToFrac arg'16 in
  HoppyP.fmap Mat4
  (mat4_newFromValues' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7' arg'8' arg'9' arg'10' arg'11' arg'12' arg'13' arg'14' arg'15' arg'16')

class Mat4Super a where
  downToMat4 :: a -> Mat4


class Mat4SuperConst a where
  downToMat4Const :: a -> Mat4Const


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Mat4)) Mat4 where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Mat4)) Mat4 where
  decode = HoppyP.fmap Mat4 . HoppyF.peek

class RectValue a where
  withRectPtr :: a -> (RectConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} RectConstPtr a => RectValue a where
#else
instance RectConstPtr a => RectValue a where
#endif
  withRectPtr = HoppyP.flip ($) . toRectConst

class (HoppyFHR.CppPtr this) => RectConstPtr this where
  toRectConst :: this -> RectConst

rect_equals :: (RectValue arg'1, RectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rect_equals arg'1 arg'2 =
  withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rect_equals' arg'1' arg'2')

rect_containsPoint :: (RectValue arg'1, Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rect_containsPoint arg'1 arg'2 =
  withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rect_containsPoint' arg'1' arg'2')

rect_intersectsRect :: (RectValue arg'1, RectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rect_intersectsRect arg'1 arg'2 =
  withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rect_intersectsRect' arg'1' arg'2')

rect_intersectsCircle :: (RectValue arg'1, Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
rect_intersectsCircle arg'1 arg'2 arg'3 =
  withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap (/= 0)
  (rect_intersectsCircle' arg'1' arg'2' arg'3')

rect_unionWithRect :: (RectValue arg'1, RectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Rect
rect_unionWithRect arg'1 arg'2 =
  withRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyFHR.toGc =<<
  HoppyP.fmap Rect
  (rect_unionWithRect' arg'1' arg'2')

class (RectConstPtr this) => RectPtr this where
  toRect :: this -> Rect

rect_getMinX :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMinX arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMinX' arg'1')

rect_getMidX :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMidX arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMidX' arg'1')

rect_getMaxX :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMaxX arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMaxX' arg'1')

rect_getMinY :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMinY arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMinY' arg'1')

rect_getMidY :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMidY arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMidY' arg'1')

rect_getMaxY :: (RectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rect_getMaxY arg'1 =
  HoppyFHR.withCppPtr (toRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rect_getMaxY' arg'1')

data RectConst =
    RectConst (HoppyF.Ptr RectConst)
  | RectConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RectConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq RectConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RectConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRectToConst :: Rect -> RectConst
castRectToConst (Rect ptr') = RectConst $ HoppyF.castPtr ptr'
castRectToConst (RectGc fptr' ptr') = RectConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RectConst where
  nullptr = RectConst HoppyF.nullPtr
  
  withCppPtr (RectConst ptr') f' = f' ptr'
  withCppPtr (RectConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RectConst ptr') = ptr'
  toPtr (RectConstGc _ ptr') = ptr'
  
  touchCppPtr (RectConst _) = HoppyP.return ()
  touchCppPtr (RectConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RectConst where
  delete (RectConst ptr') = delete'Rect ptr'
  delete (RectConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RectConst", " object."]
  
  toGc this'@(RectConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RectConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Rect :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RectConstGc {}) = HoppyP.return this'

instance RectConstPtr RectConst where
  toRectConst = HoppyP.id

data Rect =
    Rect (HoppyF.Ptr Rect)
  | RectGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Rect)
  deriving (HoppyP.Show)

instance HoppyP.Eq Rect where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Rect where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRectToNonconst :: RectConst -> Rect
castRectToNonconst (RectConst ptr') = Rect $ HoppyF.castPtr ptr'
castRectToNonconst (RectConstGc fptr' ptr') = RectGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Rect where
  nullptr = Rect HoppyF.nullPtr
  
  withCppPtr (Rect ptr') f' = f' ptr'
  withCppPtr (RectGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Rect ptr') = ptr'
  toPtr (RectGc _ ptr') = ptr'
  
  touchCppPtr (Rect _) = HoppyP.return ()
  touchCppPtr (RectGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Rect where
  delete (Rect ptr') = delete'Rect $ (HoppyF.castPtr ptr' :: HoppyF.Ptr RectConst)
  delete (RectGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Rect", " object."]
  
  toGc this'@(Rect ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RectGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Rect :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RectGc {}) = HoppyP.return this'

instance RectConstPtr Rect where
  toRectConst (Rect ptr') = RectConst $ (HoppyF.castPtr :: HoppyF.Ptr Rect -> HoppyF.Ptr RectConst) ptr'
  toRectConst (RectGc fptr' ptr') = RectConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Rect -> HoppyF.Ptr RectConst) ptr'

instance RectPtr Rect where
  toRect = HoppyP.id

rect_ZERO_get ::  HoppyP.IO Rect
rect_ZERO_get =
  HoppyFHR.toGc =<<
  HoppyP.fmap Rect
  (rect_ZERO_get')

rect_new ::  HoppyP.IO Rect
rect_new =
  HoppyP.fmap Rect
  (rect_new')

rect_newFromCoordinatesAndDimensions ::  HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO Rect
rect_newFromCoordinatesAndDimensions arg'1 arg'2 arg'3 arg'4 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  HoppyP.fmap Rect
  (rect_newFromCoordinatesAndDimensions' arg'1' arg'2' arg'3' arg'4')

rect_newFromOriginAndSize :: (Vec2Value arg'1, SizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Rect
rect_newFromOriginAndSize arg'1 arg'2 =
  withVec2Ptr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Rect
  (rect_newFromOriginAndSize' arg'1' arg'2')

class RectSuper a where
  downToRect :: a -> Rect


class RectSuperConst a where
  downToRectConst :: a -> RectConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Rect)) Rect where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Rect)) Rect where
  decode = HoppyP.fmap Rect . HoppyF.peek

class RefValue a where
  withRefPtr :: a -> (RefConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} RefConstPtr a => RefValue a where
#else
instance RefConstPtr a => RefValue a where
#endif
  withRefPtr = HoppyP.flip ($) . toRefConst

class (HoppyFHR.CppPtr this) => RefConstPtr this where
  toRefConst :: this -> RefConst

class (RefConstPtr this) => RefPtr this where
  toRef :: this -> Ref

ref_retain :: (RefPtr arg'1) => arg'1 -> HoppyP.IO ()
ref_retain arg'1 =
  HoppyFHR.withCppPtr (toRef arg'1) $ \arg'1' ->
  (ref_retain' arg'1')

ref_release :: (RefPtr arg'1) => arg'1 -> HoppyP.IO ()
ref_release arg'1 =
  HoppyFHR.withCppPtr (toRef arg'1) $ \arg'1' ->
  (ref_release' arg'1')

ref_autorelease :: (RefPtr arg'1) => arg'1 -> HoppyP.IO Ref
ref_autorelease arg'1 =
  HoppyFHR.withCppPtr (toRef arg'1) $ \arg'1' ->
  HoppyP.fmap Ref
  (ref_autorelease' arg'1')

ref_getReferenceCount :: (RefPtr arg'1) => arg'1 -> HoppyP.IO HoppyFC.CUInt
ref_getReferenceCount arg'1 =
  HoppyFHR.withCppPtr (toRef arg'1) $ \arg'1' ->
  (ref_getReferenceCount' arg'1')

data RefConst =
    RefConst (HoppyF.Ptr RefConst)
  | RefConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RefConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq RefConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RefConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRefToConst :: Ref -> RefConst
castRefToConst (Ref ptr') = RefConst $ HoppyF.castPtr ptr'
castRefToConst (RefGc fptr' ptr') = RefConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RefConst where
  nullptr = RefConst HoppyF.nullPtr
  
  withCppPtr (RefConst ptr') f' = f' ptr'
  withCppPtr (RefConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RefConst ptr') = ptr'
  toPtr (RefConstGc _ ptr') = ptr'
  
  touchCppPtr (RefConst _) = HoppyP.return ()
  touchCppPtr (RefConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RefConst where
  delete (RefConst ptr') = delete'Ref ptr'
  delete (RefConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RefConst", " object."]
  
  toGc this'@(RefConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RefConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Ref :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RefConstGc {}) = HoppyP.return this'

instance RefConstPtr RefConst where
  toRefConst = HoppyP.id

data Ref =
    Ref (HoppyF.Ptr Ref)
  | RefGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Ref)
  deriving (HoppyP.Show)

instance HoppyP.Eq Ref where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Ref where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRefToNonconst :: RefConst -> Ref
castRefToNonconst (RefConst ptr') = Ref $ HoppyF.castPtr ptr'
castRefToNonconst (RefConstGc fptr' ptr') = RefGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Ref where
  nullptr = Ref HoppyF.nullPtr
  
  withCppPtr (Ref ptr') f' = f' ptr'
  withCppPtr (RefGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Ref ptr') = ptr'
  toPtr (RefGc _ ptr') = ptr'
  
  touchCppPtr (Ref _) = HoppyP.return ()
  touchCppPtr (RefGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Ref where
  delete (Ref ptr') = delete'Ref $ (HoppyF.castPtr ptr' :: HoppyF.Ptr RefConst)
  delete (RefGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Ref", " object."]
  
  toGc this'@(Ref ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RefGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Ref :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RefGc {}) = HoppyP.return this'

instance RefConstPtr Ref where
  toRefConst (Ref ptr') = RefConst $ (HoppyF.castPtr :: HoppyF.Ptr Ref -> HoppyF.Ptr RefConst) ptr'
  toRefConst (RefGc fptr' ptr') = RefConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Ref -> HoppyF.Ptr RefConst) ptr'

instance RefPtr Ref where
  toRef = HoppyP.id

class RefSuper a where
  downToRef :: a -> Ref


class RefSuperConst a where
  downToRefConst :: a -> RefConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Ref)) Ref where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Ref)) Ref where
  decode = HoppyP.fmap Ref . HoppyF.peek

scheduleCallback_newFunPtr :: (HoppyP.Float -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CFloat -> HoppyP.IO ()))
scheduleCallback_newFunPtr f'hs = scheduleCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = HoppyP.realToFrac arg'1 in
  (f'hs arg'1')

scheduleCallback_new :: (HoppyP.Float -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CFloat -> HoppyP.IO ()))
scheduleCallback_new f'hs = do
  f'p <- scheduleCallback_newFunPtr f'hs
  scheduleCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class SizeValue a where
  withSizePtr :: a -> (SizeConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} SizeConstPtr a => SizeValue a where
#else
instance SizeConstPtr a => SizeValue a where
#endif
  withSizePtr = HoppyP.flip ($) . toSizeConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} SizeValue (V2 Float) where
#else
instance SizeValue (V2 Float) where
#endif
  withSizePtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => SizeConstPtr this where
  toSizeConst :: this -> SizeConst

class (SizeConstPtr this) => SizePtr this where
  toSize :: this -> Size

data SizeConst =
    SizeConst (HoppyF.Ptr SizeConst)
  | SizeConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SizeConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq SizeConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SizeConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSizeToConst :: Size -> SizeConst
castSizeToConst (Size ptr') = SizeConst $ HoppyF.castPtr ptr'
castSizeToConst (SizeGc fptr' ptr') = SizeConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SizeConst where
  nullptr = SizeConst HoppyF.nullPtr
  
  withCppPtr (SizeConst ptr') f' = f' ptr'
  withCppPtr (SizeConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SizeConst ptr') = ptr'
  toPtr (SizeConstGc _ ptr') = ptr'
  
  touchCppPtr (SizeConst _) = HoppyP.return ()
  touchCppPtr (SizeConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SizeConst where
  delete (SizeConst ptr') = delete'Size ptr'
  delete (SizeConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SizeConst", " object."]
  
  toGc this'@(SizeConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SizeConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Size :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SizeConstGc {}) = HoppyP.return this'

instance SizeConstPtr SizeConst where
  toSizeConst = HoppyP.id

data Size =
    Size (HoppyF.Ptr Size)
  | SizeGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Size)
  deriving (HoppyP.Show)

instance HoppyP.Eq Size where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Size where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSizeToNonconst :: SizeConst -> Size
castSizeToNonconst (SizeConst ptr') = Size $ HoppyF.castPtr ptr'
castSizeToNonconst (SizeConstGc fptr' ptr') = SizeGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Size where
  nullptr = Size HoppyF.nullPtr
  
  withCppPtr (Size ptr') f' = f' ptr'
  withCppPtr (SizeGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Size ptr') = ptr'
  toPtr (SizeGc _ ptr') = ptr'
  
  touchCppPtr (Size _) = HoppyP.return ()
  touchCppPtr (SizeGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Size where
  delete (Size ptr') = delete'Size $ (HoppyF.castPtr ptr' :: HoppyF.Ptr SizeConst)
  delete (SizeGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Size", " object."]
  
  toGc this'@(Size ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SizeGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Size :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SizeGc {}) = HoppyP.return this'

instance SizeConstPtr Size where
  toSizeConst (Size ptr') = SizeConst $ (HoppyF.castPtr :: HoppyF.Ptr Size -> HoppyF.Ptr SizeConst) ptr'
  toSizeConst (SizeGc fptr' ptr') = SizeConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Size -> HoppyF.Ptr SizeConst) ptr'

instance SizePtr Size where
  toSize = HoppyP.id

size_width_get :: (SizeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
size_width_get arg'1 =
  withSizePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (size_width_get' arg'1')

size_width_set :: (SizePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
size_width_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSize arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (size_width_set' arg'1' arg'2')

size_height_get :: (SizeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
size_height_get arg'1 =
  withSizePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (size_height_get' arg'1')

size_height_set :: (SizePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
size_height_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSize arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (size_height_set' arg'1' arg'2')

size_newFromDimensions ::  HoppyP.Float -> HoppyP.Float -> HoppyP.IO Size
size_newFromDimensions arg'1 arg'2 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  HoppyP.fmap Size
  (size_newFromDimensions' arg'1' arg'2')

class SizeSuper a where
  downToSize :: a -> Size


class SizeSuperConst a where
  downToSizeConst :: a -> SizeConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Size)) Size where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Size)) Size where
  decode = HoppyP.fmap Size . HoppyF.peek

instance HoppyFHR.Encodable Size (V2 Float) where
  encode =
    \(V2 x y) -> size_newFromDimensions x y

instance HoppyFHR.Encodable SizeConst (V2 Float) where
  encode = HoppyP.fmap (toSizeConst) . HoppyFHR.encodeAs (HoppyP.undefined :: Size)

instance HoppyFHR.Decodable Size (V2 Float) where
  decode = HoppyFHR.decode . toSizeConst

instance HoppyFHR.Decodable SizeConst (V2 Float) where
  decode =
    \sz -> V2 <$> size_width_get sz <*> size_height_get sz

data TextHAlignment =
  TextHAlignment_Left
  | TextHAlignment_Center
  | TextHAlignment_Right
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum TextHAlignment where
  fromEnum TextHAlignment_Left = 0
  fromEnum TextHAlignment_Center = 1
  fromEnum TextHAlignment_Right = 2
  
  toEnum (0) = TextHAlignment_Left
  toEnum (1) = TextHAlignment_Center
  toEnum (2) = TextHAlignment_Right
  toEnum n' = HoppyP.error $ "Unknown TextHAlignment numeric value: " ++ HoppyP.show n'

data TextVAlignment =
  TextVAlignment_Top
  | TextVAlignment_Center
  | TextVAlignment_Bottom
  deriving (HoppyP.Bounded, HoppyP.Eq, HoppyP.Ord, HoppyP.Show)

instance HoppyP.Enum TextVAlignment where
  fromEnum TextVAlignment_Top = 0
  fromEnum TextVAlignment_Center = 1
  fromEnum TextVAlignment_Bottom = 2
  
  toEnum (0) = TextVAlignment_Top
  toEnum (1) = TextVAlignment_Center
  toEnum (2) = TextVAlignment_Bottom
  toEnum n' = HoppyP.error $ "Unknown TextVAlignment numeric value: " ++ HoppyP.show n'

threadPerformCallback_newFunPtr :: HoppyP.IO () -> HoppyP.IO (HoppyF.FunPtr (HoppyP.IO ()))
threadPerformCallback_newFunPtr f'hs = threadPerformCallback_new'newFunPtr $
  (f'hs)

threadPerformCallback_new :: HoppyP.IO () -> HoppyP.IO (HoppyFHR.CCallback (HoppyP.IO ()))
threadPerformCallback_new f'hs = do
  f'p <- threadPerformCallback_newFunPtr f'hs
  threadPerformCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False

class Vec2Value a where
  withVec2Ptr :: a -> (Vec2Const -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} Vec2ConstPtr a => Vec2Value a where
#else
instance Vec2ConstPtr a => Vec2Value a where
#endif
  withVec2Ptr = HoppyP.flip ($) . toVec2Const

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} Vec2Value (V2 Float) where
#else
instance Vec2Value (V2 Float) where
#endif
  withVec2Ptr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => Vec2ConstPtr this where
  toVec2Const :: this -> Vec2Const

class (Vec2ConstPtr this) => Vec2Ptr this where
  toVec2 :: this -> Vec2

data Vec2Const =
    Vec2Const (HoppyF.Ptr Vec2Const)
  | Vec2ConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Vec2Const)
  deriving (HoppyP.Show)

instance HoppyP.Eq Vec2Const where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Vec2Const where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castVec2ToConst :: Vec2 -> Vec2Const
castVec2ToConst (Vec2 ptr') = Vec2Const $ HoppyF.castPtr ptr'
castVec2ToConst (Vec2Gc fptr' ptr') = Vec2ConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Vec2Const where
  nullptr = Vec2Const HoppyF.nullPtr
  
  withCppPtr (Vec2Const ptr') f' = f' ptr'
  withCppPtr (Vec2ConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Vec2Const ptr') = ptr'
  toPtr (Vec2ConstGc _ ptr') = ptr'
  
  touchCppPtr (Vec2Const _) = HoppyP.return ()
  touchCppPtr (Vec2ConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Vec2Const where
  delete (Vec2Const ptr') = delete'Vec2 ptr'
  delete (Vec2ConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Vec2Const", " object."]
  
  toGc this'@(Vec2Const ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Vec2ConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Vec2 :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Vec2ConstGc {}) = HoppyP.return this'

instance Vec2ConstPtr Vec2Const where
  toVec2Const = HoppyP.id

data Vec2 =
    Vec2 (HoppyF.Ptr Vec2)
  | Vec2Gc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Vec2)
  deriving (HoppyP.Show)

instance HoppyP.Eq Vec2 where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Vec2 where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castVec2ToNonconst :: Vec2Const -> Vec2
castVec2ToNonconst (Vec2Const ptr') = Vec2 $ HoppyF.castPtr ptr'
castVec2ToNonconst (Vec2ConstGc fptr' ptr') = Vec2Gc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Vec2 where
  nullptr = Vec2 HoppyF.nullPtr
  
  withCppPtr (Vec2 ptr') f' = f' ptr'
  withCppPtr (Vec2Gc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Vec2 ptr') = ptr'
  toPtr (Vec2Gc _ ptr') = ptr'
  
  touchCppPtr (Vec2 _) = HoppyP.return ()
  touchCppPtr (Vec2Gc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Vec2 where
  delete (Vec2 ptr') = delete'Vec2 $ (HoppyF.castPtr ptr' :: HoppyF.Ptr Vec2Const)
  delete (Vec2Gc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Vec2", " object."]
  
  toGc this'@(Vec2 ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Vec2Gc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Vec2 :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Vec2Gc {}) = HoppyP.return this'

instance Vec2ConstPtr Vec2 where
  toVec2Const (Vec2 ptr') = Vec2Const $ (HoppyF.castPtr :: HoppyF.Ptr Vec2 -> HoppyF.Ptr Vec2Const) ptr'
  toVec2Const (Vec2Gc fptr' ptr') = Vec2ConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Vec2 -> HoppyF.Ptr Vec2Const) ptr'

instance Vec2Ptr Vec2 where
  toVec2 = HoppyP.id

vec2_x_get :: (Vec2Value arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
vec2_x_get arg'1 =
  withVec2Ptr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (vec2_x_get' arg'1')

vec2_x_set :: (Vec2Ptr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
vec2_x_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toVec2 arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (vec2_x_set' arg'1' arg'2')

vec2_y_get :: (Vec2Value arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
vec2_y_get arg'1 =
  withVec2Ptr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (vec2_y_get' arg'1')

vec2_y_set :: (Vec2Ptr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
vec2_y_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toVec2 arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (vec2_y_set' arg'1' arg'2')

vec2_newFromCoordinates ::  HoppyP.Float -> HoppyP.Float -> HoppyP.IO Vec2
vec2_newFromCoordinates arg'1 arg'2 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  HoppyP.fmap Vec2
  (vec2_newFromCoordinates' arg'1' arg'2')

class Vec2Super a where
  downToVec2 :: a -> Vec2


class Vec2SuperConst a where
  downToVec2Const :: a -> Vec2Const


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Vec2)) Vec2 where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Vec2)) Vec2 where
  decode = HoppyP.fmap Vec2 . HoppyF.peek

instance HoppyFHR.Encodable Vec2 (V2 Float) where
  encode =
    \(V2 x y) -> vec2_newFromCoordinates x y

instance HoppyFHR.Encodable Vec2Const (V2 Float) where
  encode = HoppyP.fmap (toVec2Const) . HoppyFHR.encodeAs (HoppyP.undefined :: Vec2)

instance HoppyFHR.Decodable Vec2 (V2 Float) where
  decode = HoppyFHR.decode . toVec2Const

instance HoppyFHR.Decodable Vec2Const (V2 Float) where
  decode =
    \v -> V2 <$> vec2_x_get v <*> vec2_y_get v