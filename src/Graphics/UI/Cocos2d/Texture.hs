{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Texture (
  castTexture2DToRef,
  castRefToTexture2D,
  castTextureCacheToRef,
  castRefToTextureCache,
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
  TextureCacheValue (..),
  TextureCacheConstPtr (..),
  textureCache_getCachedTextureInfo,
  textureCache_getTextureFilePath,
  TextureCachePtr (..),
  textureCache_addImage,
  textureCache_addImageAsync,
  textureCache_reloadTexture,
  textureCache_removeAllTextures,
  textureCache_removeUnusedTextures,
  textureCache_removeTexture,
  textureCache_removeTextureForKey,
  TextureCacheConst (..),
  castTextureCacheToConst,
  TextureCache (..),
  castTextureCacheToNonconst,
  TextureCacheSuper (..),
  TextureCacheSuperConst (..),
  textureLoadedCallback_newFunPtr,
  textureLoadedCallback_new,
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Std as M1
import Linear.V2
import Prelude (($), (.), (/=), (=<<), (==), (>>=), Float)
import qualified Prelude as HoppyP

foreign import ccall "genpop__Texture2D_getContentSizeInPixels" texture2D_getContentSizeInPixels' ::  HoppyF.Ptr Texture2D -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "genpop__Texture2D_getPixelsWide" texture2D_getPixelsWide' ::  HoppyF.Ptr Texture2DConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Texture2D_getPixelsHigh" texture2D_getPixelsHigh' ::  HoppyF.Ptr Texture2DConst -> HoppyP.IO HoppyFC.CInt
foreign import ccall "genpop__Texture2D_getContentSize" texture2D_getContentSize' ::  HoppyF.Ptr Texture2DConst -> HoppyP.IO (HoppyF.Ptr M2.SizeConst)
foreign import ccall "gencast__Texture2D__Ref" castTexture2DToRef :: HoppyF.Ptr Texture2DConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Texture2D" castRefToTexture2D :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr Texture2DConst
foreign import ccall "gendel__Texture2D" delete'Texture2D :: HoppyF.Ptr Texture2DConst -> HoppyP.IO ()
foreign import ccall "&gendel__Texture2D" deletePtr'Texture2D :: HoppyF.FunPtr (HoppyF.Ptr Texture2DConst -> HoppyP.IO ())
foreign import ccall "genpop__TextureCache_addImage" textureCache_addImage' ::  HoppyF.Ptr TextureCache -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Texture2D)
foreign import ccall "genpop__TextureCache_addImageAsync" textureCache_addImageAsync' ::  HoppyF.Ptr TextureCache -> HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyF.Ptr Texture2D -> HoppyP.IO ()) -> HoppyP.IO ()
foreign import ccall "genpop__TextureCache_reloadTexture" textureCache_reloadTexture' ::  HoppyF.Ptr TextureCache -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__TextureCache_removeAllTextures" textureCache_removeAllTextures' ::  HoppyF.Ptr TextureCache -> HoppyP.IO ()
foreign import ccall "genpop__TextureCache_removeUnusedTextures" textureCache_removeUnusedTextures' ::  HoppyF.Ptr TextureCache -> HoppyP.IO ()
foreign import ccall "genpop__TextureCache_removeTexture" textureCache_removeTexture' ::  HoppyF.Ptr TextureCache -> HoppyF.Ptr Texture2D -> HoppyP.IO ()
foreign import ccall "genpop__TextureCache_removeTextureForKey" textureCache_removeTextureForKey' ::  HoppyF.Ptr TextureCache -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__TextureCache_getCachedTextureInfo" textureCache_getCachedTextureInfo' ::  HoppyF.Ptr TextureCacheConst -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "genpop__TextureCache_getTextureFilePath" textureCache_getTextureFilePath' ::  HoppyF.Ptr TextureCacheConst -> HoppyF.Ptr Texture2D -> HoppyP.IO (HoppyF.Ptr M1.StdStringConst)
foreign import ccall "gencast__TextureCache__Ref" castTextureCacheToRef :: HoppyF.Ptr TextureCacheConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__TextureCache" castRefToTextureCache :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr TextureCacheConst
foreign import ccall "gendel__TextureCache" delete'TextureCache :: HoppyF.Ptr TextureCacheConst -> HoppyP.IO ()
foreign import ccall "&gendel__TextureCache" deletePtr'TextureCache :: HoppyF.FunPtr (HoppyF.Ptr TextureCacheConst -> HoppyP.IO ())
foreign import ccall "wrapper" textureLoadedCallback_new'newFunPtr :: (HoppyF.Ptr Texture2D -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr Texture2D -> HoppyP.IO ()))
foreign import ccall "genpop__TextureLoadedCallback" textureLoadedCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr Texture2D -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr Texture2D -> HoppyP.IO ()))

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

class TextureCacheValue a where
  withTextureCachePtr :: a -> (TextureCacheConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} TextureCacheConstPtr a => TextureCacheValue a where
#else
instance TextureCacheConstPtr a => TextureCacheValue a where
#endif
  withTextureCachePtr = HoppyP.flip ($) . toTextureCacheConst

class (M2.RefConstPtr this) => TextureCacheConstPtr this where
  toTextureCacheConst :: this -> TextureCacheConst

textureCache_getCachedTextureInfo :: (TextureCacheValue arg'1) => arg'1 -> HoppyP.IO HoppyP.String
textureCache_getCachedTextureInfo arg'1 =
  withTextureCachePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (HoppyFHR.decodeAndDelete . M1.StdStringConst) =<<
  (textureCache_getCachedTextureInfo' arg'1')

textureCache_getTextureFilePath :: (TextureCacheValue arg'1, Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.String
textureCache_getTextureFilePath arg'1 arg'2 =
  withTextureCachePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyFHR.withCppPtr (toTexture2D arg'2) $ \arg'2' ->
  (HoppyFHR.decodeAndDelete . M1.StdStringConst) =<<
  (textureCache_getTextureFilePath' arg'1' arg'2')

class (TextureCacheConstPtr this, M2.RefPtr this) => TextureCachePtr this where
  toTextureCache :: this -> TextureCache

textureCache_addImage :: (TextureCachePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Texture2D
textureCache_addImage arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Texture2D
  (textureCache_addImage' arg'1' arg'2')

textureCache_addImageAsync :: (TextureCachePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> (Texture2D -> HoppyP.IO ()) -> HoppyP.IO ()
textureCache_addImageAsync arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  textureLoadedCallback_new arg'3 >>= \arg'3' ->
  (textureCache_addImageAsync' arg'1' arg'2' arg'3')

textureCache_reloadTexture :: (TextureCachePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
textureCache_reloadTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (textureCache_reloadTexture' arg'1' arg'2')

textureCache_removeAllTextures :: (TextureCachePtr arg'1) => arg'1 -> HoppyP.IO ()
textureCache_removeAllTextures arg'1 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  (textureCache_removeAllTextures' arg'1')

textureCache_removeUnusedTextures :: (TextureCachePtr arg'1) => arg'1 -> HoppyP.IO ()
textureCache_removeUnusedTextures arg'1 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  (textureCache_removeUnusedTextures' arg'1')

textureCache_removeTexture :: (TextureCachePtr arg'1, Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
textureCache_removeTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toTexture2D arg'2) $ \arg'2' ->
  (textureCache_removeTexture' arg'1' arg'2')

textureCache_removeTextureForKey :: (TextureCachePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
textureCache_removeTextureForKey arg'1 arg'2 =
  HoppyFHR.withCppPtr (toTextureCache arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (textureCache_removeTextureForKey' arg'1' arg'2')

data TextureCacheConst =
    TextureCacheConst (HoppyF.Ptr TextureCacheConst)
  | TextureCacheConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr TextureCacheConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq TextureCacheConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord TextureCacheConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTextureCacheToConst :: TextureCache -> TextureCacheConst
castTextureCacheToConst (TextureCache ptr') = TextureCacheConst $ HoppyF.castPtr ptr'
castTextureCacheToConst (TextureCacheGc fptr' ptr') = TextureCacheConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr TextureCacheConst where
  nullptr = TextureCacheConst HoppyF.nullPtr
  
  withCppPtr (TextureCacheConst ptr') f' = f' ptr'
  withCppPtr (TextureCacheConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (TextureCacheConst ptr') = ptr'
  toPtr (TextureCacheConstGc _ ptr') = ptr'
  
  touchCppPtr (TextureCacheConst _) = HoppyP.return ()
  touchCppPtr (TextureCacheConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable TextureCacheConst where
  delete (TextureCacheConst ptr') = delete'TextureCache ptr'
  delete (TextureCacheConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "TextureCacheConst", " object."]
  
  toGc this'@(TextureCacheConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TextureCacheConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'TextureCache :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TextureCacheConstGc {}) = HoppyP.return this'

instance TextureCacheConstPtr TextureCacheConst where
  toTextureCacheConst = HoppyP.id

instance M2.RefConstPtr TextureCacheConst where
  toRefConst (TextureCacheConst ptr') = M2.RefConst $ castTextureCacheToRef ptr'
  toRefConst (TextureCacheConstGc fptr' ptr') = M2.RefConstGc fptr' $ castTextureCacheToRef ptr'

data TextureCache =
    TextureCache (HoppyF.Ptr TextureCache)
  | TextureCacheGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr TextureCache)
  deriving (HoppyP.Show)

instance HoppyP.Eq TextureCache where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord TextureCache where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castTextureCacheToNonconst :: TextureCacheConst -> TextureCache
castTextureCacheToNonconst (TextureCacheConst ptr') = TextureCache $ HoppyF.castPtr ptr'
castTextureCacheToNonconst (TextureCacheConstGc fptr' ptr') = TextureCacheGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr TextureCache where
  nullptr = TextureCache HoppyF.nullPtr
  
  withCppPtr (TextureCache ptr') f' = f' ptr'
  withCppPtr (TextureCacheGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (TextureCache ptr') = ptr'
  toPtr (TextureCacheGc _ ptr') = ptr'
  
  touchCppPtr (TextureCache _) = HoppyP.return ()
  touchCppPtr (TextureCacheGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable TextureCache where
  delete (TextureCache ptr') = delete'TextureCache $ (HoppyF.castPtr ptr' :: HoppyF.Ptr TextureCacheConst)
  delete (TextureCacheGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "TextureCache", " object."]
  
  toGc this'@(TextureCache ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip TextureCacheGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'TextureCache :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(TextureCacheGc {}) = HoppyP.return this'

instance TextureCacheConstPtr TextureCache where
  toTextureCacheConst (TextureCache ptr') = TextureCacheConst $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'
  toTextureCacheConst (TextureCacheGc fptr' ptr') = TextureCacheConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'

instance TextureCachePtr TextureCache where
  toTextureCache = HoppyP.id

instance M2.RefConstPtr TextureCache where
  toRefConst (TextureCache ptr') = M2.RefConst $ castTextureCacheToRef $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'
  toRefConst (TextureCacheGc fptr' ptr') = M2.RefConstGc fptr' $ castTextureCacheToRef $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'

instance M2.RefPtr TextureCache where
  toRef (TextureCache ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTextureCacheToRef $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'
  toRef (TextureCacheGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castTextureCacheToRef $ (HoppyF.castPtr :: HoppyF.Ptr TextureCache -> HoppyF.Ptr TextureCacheConst) ptr'

class TextureCacheSuper a where
  downToTextureCache :: a -> TextureCache

instance TextureCacheSuper M2.Ref where
  downToTextureCache = castTextureCacheToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = TextureCacheConst $ castRefToTextureCache ptr'
      cast' (M2.RefConstGc fptr' ptr') = TextureCacheConstGc fptr' $ castRefToTextureCache ptr'

class TextureCacheSuperConst a where
  downToTextureCacheConst :: a -> TextureCacheConst

instance TextureCacheSuperConst M2.RefConst where
  downToTextureCacheConst = cast'
    where
      cast' (M2.RefConst ptr') = TextureCacheConst $ castRefToTextureCache ptr'
      cast' (M2.RefConstGc fptr' ptr') = TextureCacheConstGc fptr' $ castRefToTextureCache ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr TextureCache)) TextureCache where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr TextureCache)) TextureCache where
  decode = HoppyP.fmap TextureCache . HoppyF.peek

textureLoadedCallback_newFunPtr :: (Texture2D -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr Texture2D -> HoppyP.IO ()))
textureLoadedCallback_newFunPtr f'hs = textureLoadedCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = Texture2D arg'1 in
  (f'hs arg'1')

textureLoadedCallback_new :: (Texture2D -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr Texture2D -> HoppyP.IO ()))
textureLoadedCallback_new f'hs = do
  f'p <- textureLoadedCallback_newFunPtr f'hs
  textureLoadedCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False