{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Texture (
  castTexture2DToRef,
  castRefToTexture2D,
  Texture2DValue (..),
  Texture2DConstPtr (..),
  texture2D_getPixelsWide,
  texture2D_getPixelsHigh,
  texture2D_getContentSize,
  Texture2DPtr (..),
  texture2D_getContentSizeInPixels,
  Texture2DConst (..),
  castTexture2DToConst,
  Texture2D (..),
  castTexture2DToNonconst,
  Texture2DSuper (..),
  Texture2DSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import Linear.V2
import Prelude (($), (.), (=<<), (==), Float)
import qualified Prelude as HoppyP

foreign import ccall "genpop__Texture2D_getContentSizeInPixels" texture2D_getContentSizeInPixels' ::   HoppyF.Ptr Texture2D -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Texture2D_getPixelsWide" texture2D_getPixelsWide' ::   HoppyF.Ptr Texture2DConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Texture2D_getPixelsHigh" texture2D_getPixelsHigh' ::   HoppyF.Ptr Texture2DConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Texture2D_getContentSize" texture2D_getContentSize' ::   HoppyF.Ptr Texture2DConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "gencast__Texture2D__Ref" castTexture2DToRef :: HoppyF.Ptr Texture2DConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Texture2D" castRefToTexture2D :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr Texture2DConst
foreign import ccall "gendel__Texture2D" delete'Texture2D :: HoppyF.Ptr Texture2DConst -> HoppyP.IO ()
foreign import ccall "&gendel__Texture2D" deletePtr'Texture2D :: HoppyF.FunPtr (HoppyF.Ptr Texture2DConst -> HoppyP.IO ())

class Texture2DValue a where
  withTexture2DPtr :: a -> (Texture2DConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} Texture2DConstPtr a => Texture2DValue a where
#else
instance Texture2DConstPtr a => Texture2DValue a where
#endif
  withTexture2DPtr = HoppyP.flip ($) . toTexture2DConst

class (M2.RefConstPtr this) => Texture2DConstPtr this where
  toTexture2DConst :: this -> Texture2DConst

texture2D_getPixelsWide :: (Texture2DValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
texture2D_getPixelsWide arg'1 =
  withTexture2DPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (texture2D_getPixelsWide' arg'1')

texture2D_getPixelsHigh :: (Texture2DValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Int
texture2D_getPixelsHigh arg'1 =
  withTexture2DPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap HoppyFHR.coerceIntegral
  (texture2D_getPixelsHigh' arg'1')

texture2D_getContentSize :: (Texture2DValue arg'1) => arg'1 -> HoppyP.IO (V2 Float)
texture2D_getContentSize arg'1 =
  withTexture2DPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M2.SizeConst) =<<
  (texture2D_getContentSize' arg'1')

class (Texture2DConstPtr this, M2.RefPtr this) => Texture2DPtr this where
  toTexture2D :: this -> Texture2D

texture2D_getContentSizeInPixels :: (Texture2DPtr arg'1) => arg'1 -> HoppyP.IO M2.SizeConst
texture2D_getContentSizeInPixels arg'1 =
  HoppyFHR.withCppPtr (toTexture2D arg'1) $ \arg'1' ->
  HoppyP.fmap M2.SizeConst
  (texture2D_getContentSizeInPixels' arg'1')

data Texture2DConst =
    Texture2DConst (HoppyF.Ptr Texture2DConst)
  | Texture2DConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Texture2DConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq Texture2DConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Texture2DConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTexture2DToConst :: Texture2D -> Texture2DConst
castTexture2DToConst (Texture2D ptr') = Texture2DConst $ HoppyF.castPtr ptr'
castTexture2DToConst (Texture2DGc fptr' ptr') = Texture2DConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Texture2DConst where
  nullptr = Texture2DConst HoppyF.nullPtr
  
  withCppPtr (Texture2DConst ptr') f' = f' ptr'
  withCppPtr (Texture2DConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Texture2DConst ptr') = ptr'
  toPtr (Texture2DConstGc _ ptr') = ptr'
  
  touchCppPtr (Texture2DConst _) = HoppyP.return ()
  touchCppPtr (Texture2DConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Texture2DConst where
  delete (Texture2DConst ptr') = delete'Texture2D ptr'
  delete (Texture2DConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Texture2DConst", " object."]
  
  toGc this'@(Texture2DConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Texture2DConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Texture2D :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Texture2DConstGc {}) = HoppyP.return this'

instance Texture2DConstPtr Texture2DConst where
  toTexture2DConst = HoppyP.id

instance M2.RefConstPtr Texture2DConst where
  toRefConst (Texture2DConst ptr') = M2.RefConst $ castTexture2DToRef ptr'
  toRefConst (Texture2DConstGc fptr' ptr') = M2.RefConstGc fptr' $ castTexture2DToRef ptr'

data Texture2D =
    Texture2D (HoppyF.Ptr Texture2D)
  | Texture2DGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Texture2D)
  deriving (HoppyP.Show)

instance HoppyP.Eq Texture2D where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Texture2D where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTexture2DToNonconst :: Texture2DConst -> Texture2D
castTexture2DToNonconst (Texture2DConst ptr') = Texture2D $ HoppyF.castPtr ptr'
castTexture2DToNonconst (Texture2DConstGc fptr' ptr') = Texture2DGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Texture2D where
  nullptr = Texture2D HoppyF.nullPtr
  
  withCppPtr (Texture2D ptr') f' = f' ptr'
  withCppPtr (Texture2DGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Texture2D ptr') = ptr'
  toPtr (Texture2DGc _ ptr') = ptr'
  
  touchCppPtr (Texture2D _) = HoppyP.return ()
  touchCppPtr (Texture2DGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Texture2D where
  delete (Texture2D ptr') = delete'Texture2D $ (HoppyF.castPtr ptr' :: HoppyF.Ptr Texture2DConst)
  delete (Texture2DGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Texture2D", " object."]
  
  toGc this'@(Texture2D ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip Texture2DGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Texture2D :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(Texture2DGc {}) = HoppyP.return this'

instance Texture2DConstPtr Texture2D where
  toTexture2DConst (Texture2D ptr') = Texture2DConst $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'
  toTexture2DConst (Texture2DGc fptr' ptr') = Texture2DConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'

instance Texture2DPtr Texture2D where
  toTexture2D = HoppyP.id

instance M2.RefConstPtr Texture2D where
  toRefConst (Texture2D ptr') = M2.RefConst $ castTexture2DToRef $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'
  toRefConst (Texture2DGc fptr' ptr') = M2.RefConstGc fptr' $ castTexture2DToRef $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'

instance M2.RefPtr Texture2D where
  toRef (Texture2D ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTexture2DToRef $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'
  toRef (Texture2DGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTexture2DToRef $ (HoppyF.castPtr :: HoppyF.Ptr Texture2D -> HoppyF.Ptr Texture2DConst) ptr'

class Texture2DSuper a where
  downToTexture2D :: a -> Texture2D

instance Texture2DSuper M2.Ref where
  downToTexture2D = castTexture2DToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = Texture2DConst $ castRefToTexture2D ptr'
      cast' (M2.RefConstGc fptr' ptr') = Texture2DConstGc fptr' $ castRefToTexture2D ptr'

class Texture2DSuperConst a where
  downToTexture2DConst :: a -> Texture2DConst

instance Texture2DSuperConst M2.RefConst where
  downToTexture2DConst = cast'
    where
      cast' (M2.RefConst ptr') = Texture2DConst $ castRefToTexture2D ptr'
      cast' (M2.RefConstGc fptr' ptr') = Texture2DConstGc fptr' $ castRefToTexture2D ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Texture2D)) Texture2D where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Texture2D)) Texture2D where
  decode = HoppyP.fmap Texture2D . HoppyF.peek