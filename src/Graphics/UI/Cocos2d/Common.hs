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
  RawRectValue (..),
  RawRectConstPtr (..),
  rawRect_equals,
  rawRect_containsPoint,
  rawRect_intersectsRect,
  rawRect_intersectsCircle,
  rawRect_unionWithRect,
  RawRectPtr (..),
  rawRect_getMinX,
  rawRect_getMidX,
  rawRect_getMaxX,
  rawRect_getMinY,
  rawRect_getMidY,
  rawRect_getMaxY,
  RawRectConst (..),
  castRawRectToConst,
  RawRect (..),
  castRawRectToNonconst,
  rawRect_origin_get,
  rawRect_origin_set,
  rawRect_size_get,
  rawRect_size_set,
  rawRect_new,
  rawRect_newFromCoordinatesAndDimensions,
  rawRect_newFromOriginAndSize,
  RawRectSuper (..),
  RawRectSuperConst (..),
  RawSizeValue (..),
  RawSizeConstPtr (..),
  RawSizePtr (..),
  RawSizeConst (..),
  castRawSizeToConst,
  RawSize (..),
  castRawSizeToNonconst,
  rawSize_width_get,
  rawSize_width_set,
  rawSize_height_get,
  rawSize_height_set,
  rawSize_newFromDimensions,
  RawSizeSuper (..),
  RawSizeSuperConst (..),
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
import qualified Graphics.UI.Cocos2d.Extra as CE
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
foreign import ccall "genpop__RawRect_origin_get" rawRect_origin_get' ::  HoppyF.Ptr RawRectConst -> HoppyP.IO (HoppyF.Ptr Vec2Const)
foreign import ccall "genpop__RawRect_origin_set" rawRect_origin_set' ::  HoppyF.Ptr RawRect -> HoppyF.Ptr Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__RawRect_size_get" rawRect_size_get' ::  HoppyF.Ptr RawRectConst -> HoppyP.IO (HoppyF.Ptr RawSizeConst)
foreign import ccall "genpop__RawRect_size_set" rawRect_size_set' ::  HoppyF.Ptr RawRect -> HoppyF.Ptr RawSizeConst -> HoppyP.IO ()
foreign import ccall "genpop__RawRect_new" rawRect_new' ::  HoppyP.IO (HoppyF.Ptr RawRect)
foreign import ccall "genpop__RawRect_newFromCoordinatesAndDimensions" rawRect_newFromCoordinatesAndDimensions' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr RawRect)
foreign import ccall "genpop__RawRect_newFromOriginAndSize" rawRect_newFromOriginAndSize' ::  HoppyF.Ptr Vec2Const -> HoppyF.Ptr RawSizeConst -> HoppyP.IO (HoppyF.Ptr RawRect)
foreign import ccall "genpop__RawRect_getMinX" rawRect_getMinX' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_getMidX" rawRect_getMidX' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_getMaxX" rawRect_getMaxX' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_getMinY" rawRect_getMinY' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_getMidY" rawRect_getMidY' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_getMaxY" rawRect_getMaxY' ::  HoppyF.Ptr RawRect -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawRect_equals" rawRect_equals' ::  HoppyF.Ptr RawRectConst -> HoppyF.Ptr RawRectConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__RawRect_containsPoint" rawRect_containsPoint' ::  HoppyF.Ptr RawRectConst -> HoppyF.Ptr Vec2Const -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__RawRect_intersectsRect" rawRect_intersectsRect' ::  HoppyF.Ptr RawRectConst -> HoppyF.Ptr RawRectConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__RawRect_intersectsCircle" rawRect_intersectsCircle' ::  HoppyF.Ptr RawRectConst -> HoppyF.Ptr Vec2Const -> HoppyFC.CFloat -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__RawRect_unionWithRect" rawRect_unionWithRect' ::  HoppyF.Ptr RawRectConst -> HoppyF.Ptr RawRectConst -> HoppyP.IO (HoppyF.Ptr RawRectConst)
foreign import ccall "gendel__RawRect" delete'RawRect :: HoppyF.Ptr RawRectConst -> HoppyP.IO ()
foreign import ccall "&gendel__RawRect" deletePtr'RawRect :: HoppyF.FunPtr (HoppyF.Ptr RawRectConst -> HoppyP.IO ())
foreign import ccall "genpop__RawSize_width_get" rawSize_width_get' ::  HoppyF.Ptr RawSizeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawSize_width_set" rawSize_width_set' ::  HoppyF.Ptr RawSize -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__RawSize_height_get" rawSize_height_get' ::  HoppyF.Ptr RawSizeConst -> HoppyP.IO HoppyFC.CFloat
foreign import ccall "genpop__RawSize_height_set" rawSize_height_set' ::  HoppyF.Ptr RawSize -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__RawSize_newFromDimensions" rawSize_newFromDimensions' ::  HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr RawSize)
foreign import ccall "gendel__RawSize" delete'RawSize :: HoppyF.Ptr RawSizeConst -> HoppyP.IO ()
foreign import ccall "&gendel__RawSize" deletePtr'RawSize :: HoppyF.FunPtr (HoppyF.Ptr RawSizeConst -> HoppyP.IO ())
foreign import ccall "genpop__Ref_retain" ref_retain' ::  HoppyF.Ptr Ref -> HoppyP.IO ()
foreign import ccall "genpop__Ref_release" ref_release' ::  HoppyF.Ptr Ref -> HoppyP.IO ()
foreign import ccall "genpop__Ref_autorelease" ref_autorelease' ::  HoppyF.Ptr Ref -> HoppyP.IO (HoppyF.Ptr Ref)
foreign import ccall "genpop__Ref_getReferenceCount" ref_getReferenceCount' ::  HoppyF.Ptr Ref -> HoppyP.IO HoppyFC.CUInt
foreign import ccall "gendel__Ref" delete'Ref :: HoppyF.Ptr RefConst -> HoppyP.IO ()
foreign import ccall "&gendel__Ref" deletePtr'Ref :: HoppyF.FunPtr (HoppyF.Ptr RefConst -> HoppyP.IO ())
foreign import ccall "wrapper" scheduleCallback_new'newFunPtr :: (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyFC.CFloat -> HoppyP.IO ()))
foreign import ccall "genpop__ScheduleCallback" scheduleCallback_new'newCallback :: HoppyF.FunPtr (HoppyFC.CFloat -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyFC.CFloat -> HoppyP.IO ()))
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

class RawRectValue a where
  withRawRectPtr :: a -> (RawRectConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} RawRectConstPtr a => RawRectValue a where
#else
instance RawRectConstPtr a => RawRectValue a where
#endif
  withRawRectPtr = HoppyP.flip ($) . toRawRectConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} RawRectValue (CE.Rect Float) where
#else
instance RawRectValue (CE.Rect Float) where
#endif
  withRawRectPtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => RawRectConstPtr this where
  toRawRectConst :: this -> RawRectConst

rawRect_equals :: (RawRectValue arg'1, RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rawRect_equals arg'1 arg'2 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rawRect_equals' arg'1' arg'2')

rawRect_containsPoint :: (RawRectValue arg'1, Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rawRect_containsPoint arg'1 arg'2 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rawRect_containsPoint' arg'1' arg'2')

rawRect_intersectsRect :: (RawRectValue arg'1, RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
rawRect_intersectsRect arg'1 arg'2 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (rawRect_intersectsRect' arg'1' arg'2')

rawRect_intersectsCircle :: (RawRectValue arg'1, Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.Float -> HoppyP.IO HoppyP.Bool
rawRect_intersectsCircle arg'1 arg'2 arg'3 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap (/= 0)
  (rawRect_intersectsCircle' arg'1' arg'2' arg'3')

rawRect_unionWithRect :: (RawRectValue arg'1, RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO (CE.Rect Float)
rawRect_unionWithRect arg'1 arg'2 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . RawRectConst) =<<
  (rawRect_unionWithRect' arg'1' arg'2')

class (RawRectConstPtr this) => RawRectPtr this where
  toRawRect :: this -> RawRect

rawRect_getMinX :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMinX arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMinX' arg'1')

rawRect_getMidX :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMidX arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMidX' arg'1')

rawRect_getMaxX :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMaxX arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMaxX' arg'1')

rawRect_getMinY :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMinY arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMinY' arg'1')

rawRect_getMidY :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMidY arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMidY' arg'1')

rawRect_getMaxY :: (RawRectPtr arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawRect_getMaxY arg'1 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawRect_getMaxY' arg'1')

data RawRectConst =
    RawRectConst (HoppyF.Ptr RawRectConst)
  | RawRectConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RawRectConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq RawRectConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RawRectConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRawRectToConst :: RawRect -> RawRectConst
castRawRectToConst (RawRect ptr') = RawRectConst $ HoppyF.castPtr ptr'
castRawRectToConst (RawRectGc fptr' ptr') = RawRectConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RawRectConst where
  nullptr = RawRectConst HoppyF.nullPtr
  
  withCppPtr (RawRectConst ptr') f' = f' ptr'
  withCppPtr (RawRectConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RawRectConst ptr') = ptr'
  toPtr (RawRectConstGc _ ptr') = ptr'
  
  touchCppPtr (RawRectConst _) = HoppyP.return ()
  touchCppPtr (RawRectConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RawRectConst where
  delete (RawRectConst ptr') = delete'RawRect ptr'
  delete (RawRectConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RawRectConst", " object."]
  
  toGc this'@(RawRectConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RawRectConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'RawRect :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RawRectConstGc {}) = HoppyP.return this'

instance RawRectConstPtr RawRectConst where
  toRawRectConst = HoppyP.id

data RawRect =
    RawRect (HoppyF.Ptr RawRect)
  | RawRectGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RawRect)
  deriving (HoppyP.Show)

instance HoppyP.Eq RawRect where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RawRect where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRawRectToNonconst :: RawRectConst -> RawRect
castRawRectToNonconst (RawRectConst ptr') = RawRect $ HoppyF.castPtr ptr'
castRawRectToNonconst (RawRectConstGc fptr' ptr') = RawRectGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RawRect where
  nullptr = RawRect HoppyF.nullPtr
  
  withCppPtr (RawRect ptr') f' = f' ptr'
  withCppPtr (RawRectGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RawRect ptr') = ptr'
  toPtr (RawRectGc _ ptr') = ptr'
  
  touchCppPtr (RawRect _) = HoppyP.return ()
  touchCppPtr (RawRectGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RawRect where
  delete (RawRect ptr') = delete'RawRect $ (HoppyF.castPtr ptr' :: HoppyF.Ptr RawRectConst)
  delete (RawRectGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RawRect", " object."]
  
  toGc this'@(RawRect ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RawRectGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'RawRect :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RawRectGc {}) = HoppyP.return this'

instance RawRectConstPtr RawRect where
  toRawRectConst (RawRect ptr') = RawRectConst $ (HoppyF.castPtr :: HoppyF.Ptr RawRect -> HoppyF.Ptr RawRectConst) ptr'
  toRawRectConst (RawRectGc fptr' ptr') = RawRectConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr RawRect -> HoppyF.Ptr RawRectConst) ptr'

instance RawRectPtr RawRect where
  toRawRect = HoppyP.id

rawRect_origin_get :: (RawRectValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
rawRect_origin_get arg'1 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . Vec2Const) =<<
  (rawRect_origin_get' arg'1')

rawRect_origin_set :: (RawRectPtr arg'1, Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
rawRect_origin_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (rawRect_origin_set' arg'1' arg'2')

rawRect_size_get :: (RawRectValue arg'1) => arg'1 -> HoppyP.IO (CE.Size Float)
rawRect_size_get arg'1 =
  withRawRectPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . RawSizeConst) =<<
  (rawRect_size_get' arg'1')

rawRect_size_set :: (RawRectPtr arg'1, RawSizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
rawRect_size_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toRawRect arg'1) $ \arg'1' ->
  withRawSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (rawRect_size_set' arg'1' arg'2')

rawRect_new ::  HoppyP.IO RawRect
rawRect_new =
  HoppyP.fmap RawRect
  (rawRect_new')

rawRect_newFromCoordinatesAndDimensions ::  HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO RawRect
rawRect_newFromCoordinatesAndDimensions arg'1 arg'2 arg'3 arg'4 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  let arg'4' = HoppyP.realToFrac arg'4 in
  HoppyP.fmap RawRect
  (rawRect_newFromCoordinatesAndDimensions' arg'1' arg'2' arg'3' arg'4')

rawRect_newFromOriginAndSize :: (Vec2Value arg'1, RawSizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO RawRect
rawRect_newFromOriginAndSize arg'1 arg'2 =
  withVec2Ptr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withRawSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap RawRect
  (rawRect_newFromOriginAndSize' arg'1' arg'2')

class RawRectSuper a where
  downToRawRect :: a -> RawRect


class RawRectSuperConst a where
  downToRawRectConst :: a -> RawRectConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr RawRect)) RawRect where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr RawRect)) RawRect where
  decode = HoppyP.fmap RawRect . HoppyF.peek

instance HoppyFHR.Encodable RawRect (CE.Rect Float) where
  encode =
    \(CE.Rect (V2 x y) (CE.S (V2 w h))) -> rawRect_newFromCoordinatesAndDimensions x y w h

instance HoppyFHR.Encodable RawRectConst (CE.Rect Float) where
  encode = HoppyP.fmap (toRawRectConst) . HoppyFHR.encodeAs (HoppyP.undefined :: RawRect)

instance HoppyFHR.Decodable RawRect (CE.Rect Float) where
  decode = HoppyFHR.decode . toRawRectConst

instance HoppyFHR.Decodable RawRectConst (CE.Rect Float) where
  decode =
    \rect -> CE.Rect <$> rawRect_origin_get rect <*> rawRect_size_get rect

class RawSizeValue a where
  withRawSizePtr :: a -> (RawSizeConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} RawSizeConstPtr a => RawSizeValue a where
#else
instance RawSizeConstPtr a => RawSizeValue a where
#endif
  withRawSizePtr = HoppyP.flip ($) . toRawSizeConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} RawSizeValue (CE.Size Float) where
#else
instance RawSizeValue (CE.Size Float) where
#endif
  withRawSizePtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => RawSizeConstPtr this where
  toRawSizeConst :: this -> RawSizeConst

class (RawSizeConstPtr this) => RawSizePtr this where
  toRawSize :: this -> RawSize

data RawSizeConst =
    RawSizeConst (HoppyF.Ptr RawSizeConst)
  | RawSizeConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RawSizeConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq RawSizeConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RawSizeConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRawSizeToConst :: RawSize -> RawSizeConst
castRawSizeToConst (RawSize ptr') = RawSizeConst $ HoppyF.castPtr ptr'
castRawSizeToConst (RawSizeGc fptr' ptr') = RawSizeConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RawSizeConst where
  nullptr = RawSizeConst HoppyF.nullPtr
  
  withCppPtr (RawSizeConst ptr') f' = f' ptr'
  withCppPtr (RawSizeConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RawSizeConst ptr') = ptr'
  toPtr (RawSizeConstGc _ ptr') = ptr'
  
  touchCppPtr (RawSizeConst _) = HoppyP.return ()
  touchCppPtr (RawSizeConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RawSizeConst where
  delete (RawSizeConst ptr') = delete'RawSize ptr'
  delete (RawSizeConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RawSizeConst", " object."]
  
  toGc this'@(RawSizeConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RawSizeConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'RawSize :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RawSizeConstGc {}) = HoppyP.return this'

instance RawSizeConstPtr RawSizeConst where
  toRawSizeConst = HoppyP.id

data RawSize =
    RawSize (HoppyF.Ptr RawSize)
  | RawSizeGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr RawSize)
  deriving (HoppyP.Show)

instance HoppyP.Eq RawSize where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord RawSize where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castRawSizeToNonconst :: RawSizeConst -> RawSize
castRawSizeToNonconst (RawSizeConst ptr') = RawSize $ HoppyF.castPtr ptr'
castRawSizeToNonconst (RawSizeConstGc fptr' ptr') = RawSizeGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr RawSize where
  nullptr = RawSize HoppyF.nullPtr
  
  withCppPtr (RawSize ptr') f' = f' ptr'
  withCppPtr (RawSizeGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (RawSize ptr') = ptr'
  toPtr (RawSizeGc _ ptr') = ptr'
  
  touchCppPtr (RawSize _) = HoppyP.return ()
  touchCppPtr (RawSizeGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable RawSize where
  delete (RawSize ptr') = delete'RawSize $ (HoppyF.castPtr ptr' :: HoppyF.Ptr RawSizeConst)
  delete (RawSizeGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "RawSize", " object."]
  
  toGc this'@(RawSize ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip RawSizeGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'RawSize :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(RawSizeGc {}) = HoppyP.return this'

instance RawSizeConstPtr RawSize where
  toRawSizeConst (RawSize ptr') = RawSizeConst $ (HoppyF.castPtr :: HoppyF.Ptr RawSize -> HoppyF.Ptr RawSizeConst) ptr'
  toRawSizeConst (RawSizeGc fptr' ptr') = RawSizeConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr RawSize -> HoppyF.Ptr RawSizeConst) ptr'

instance RawSizePtr RawSize where
  toRawSize = HoppyP.id

rawSize_width_get :: (RawSizeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawSize_width_get arg'1 =
  withRawSizePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawSize_width_get' arg'1')

rawSize_width_set :: (RawSizePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
rawSize_width_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toRawSize arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (rawSize_width_set' arg'1' arg'2')

rawSize_height_get :: (RawSizeValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Float
rawSize_height_get arg'1 =
  withRawSizePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyP.realToFrac
  (rawSize_height_get' arg'1')

rawSize_height_set :: (RawSizePtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
rawSize_height_set arg'1 arg'2 =
  HoppyFHR.withCppPtr (toRawSize arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (rawSize_height_set' arg'1' arg'2')

rawSize_newFromDimensions ::  HoppyP.Float -> HoppyP.Float -> HoppyP.IO RawSize
rawSize_newFromDimensions arg'1 arg'2 =
  let arg'1' = HoppyP.realToFrac arg'1 in
  let arg'2' = HoppyP.realToFrac arg'2 in
  HoppyP.fmap RawSize
  (rawSize_newFromDimensions' arg'1' arg'2')

class RawSizeSuper a where
  downToRawSize :: a -> RawSize


class RawSizeSuperConst a where
  downToRawSizeConst :: a -> RawSizeConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr RawSize)) RawSize where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr RawSize)) RawSize where
  decode = HoppyP.fmap RawSize . HoppyF.peek

instance HoppyFHR.Encodable RawSize (CE.Size Float) where
  encode =
    \(CE.S (V2 x y)) -> rawSize_newFromDimensions x y

instance HoppyFHR.Encodable RawSizeConst (CE.Size Float) where
  encode = HoppyP.fmap (toRawSizeConst) . HoppyFHR.encodeAs (HoppyP.undefined :: RawSize)

instance HoppyFHR.Decodable RawSize (CE.Size Float) where
  decode = HoppyFHR.decode . toRawSizeConst

instance HoppyFHR.Decodable RawSizeConst (CE.Size Float) where
  decode =
    \sz -> (CE.S .) . V2 <$> rawSize_width_get sz <*> rawSize_height_get sz

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