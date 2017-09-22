{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Sprite (
  castSpriteToNode,
  castNodeToSprite,
  castSpriteToRef,
  castRefToSprite,
  castSpriteFrameToRef,
  castRefToSpriteFrame,
  SpriteValue (..),
  SpriteConstPtr (..),
  sprite_getTexture,
  sprite_getSpriteFrame,
  sprite_getTextureRect,
  sprite_getOffsetPosition,
  sprite_isFlippedX,
  sprite_isFlippedY,
  SpritePtr (..),
  sprite_setTexture,
  sprite_setTextureWithFilename,
  sprite_setTextureRect,
  sprite_setVertexRect,
  sprite_setSpriteFrame,
  sprite_setSpriteFrameWithName,
  sprite_setDisplayFrameWithAnimationName,
  sprite_setFlippedX,
  sprite_setFlippedY,
  sprite_create,
  sprite_createWithFilename,
  sprite_createWithFilenameAndRect,
  sprite_createWithTexture,
  sprite_createWithTextureAndRect,
  sprite_createWithSpriteFrame,
  sprite_createWithSpriteFrameName,
  SpriteConst (..),
  castSpriteToConst,
  Sprite (..),
  castSpriteToNonconst,
  SpriteSuper (..),
  SpriteSuperConst (..),
  SpriteFrameValue (..),
  SpriteFrameConstPtr (..),
  spriteFrame_getRectInPixels,
  spriteFrame_isRotated,
  spriteFrame_getRect,
  spriteFrame_getOffsetInPixels,
  spriteFrame_getOriginalSizeInPixels,
  spriteFrame_getOriginalSize,
  spriteFrame_getOffset,
  SpriteFramePtr (..),
  spriteFrame_setRectInPixels,
  spriteFrame_setRotated,
  spriteFrame_setRect,
  spriteFrame_setOffsetInPixels,
  spriteFrame_setOriginalSizeInPixels,
  spriteFrame_setOriginalSize,
  spriteFrame_getTexture,
  spriteFrame_setTexture,
  spriteFrame_setOffset,
  spriteFrame_create,
  spriteFrame_createWithTexture,
  SpriteFrameConst (..),
  castSpriteFrameToConst,
  SpriteFrame (..),
  castSpriteFrameToNonconst,
  SpriteFrameSuper (..),
  SpriteFrameSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Std as M1
import qualified Graphics.UI.Cocos2d.Texture as M3
import Prelude (($), (.), (/=), (==))
import qualified Prelude as HoppyP
import qualified System.Posix.Types as HoppySPT

foreign import ccall "genpop__Sprite_create" sprite_create' ::  HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithFilename" sprite_createWithFilename' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithFilenameAndRect" sprite_createWithFilenameAndRect' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithTexture" sprite_createWithTexture' ::  HoppyF.Ptr M3.Texture2D -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithTextureAndRect" sprite_createWithTextureAndRect' ::  HoppyF.Ptr M3.Texture2D -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithSpriteFrame" sprite_createWithSpriteFrame' ::  HoppyF.Ptr SpriteFrame -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_createWithSpriteFrameName" sprite_createWithSpriteFrameName' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr Sprite)
foreign import ccall "genpop__Sprite_setTexture" sprite_setTexture' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M3.Texture2D -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_setTextureWithFilename" sprite_setTextureWithFilename' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_getTexture" sprite_getTexture' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO (HoppyF.Ptr M3.Texture2D)
foreign import ccall "genpop__Sprite_setTextureRect" sprite_setTextureRect' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_setVertexRect" sprite_setVertexRect' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_setSpriteFrame" sprite_setSpriteFrame' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteFrame -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_setSpriteFrameWithName" sprite_setSpriteFrameWithName' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M1.StdStringConst -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_getSpriteFrame" sprite_getSpriteFrame' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO (HoppyF.Ptr SpriteFrame)
foreign import ccall "genpop__Sprite_setDisplayFrameWithAnimationName" sprite_setDisplayFrameWithAnimationName' ::  HoppyF.Ptr Sprite -> HoppyF.Ptr M1.StdStringConst -> HoppySPT.CSsize -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_getTextureRect" sprite_getTextureRect' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO (HoppyF.Ptr M2.RawRectConst)
foreign import ccall "genpop__Sprite_getOffsetPosition" sprite_getOffsetPosition' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__Sprite_isFlippedX" sprite_isFlippedX' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Sprite_setFlippedX" sprite_setFlippedX' ::  HoppyF.Ptr Sprite -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__Sprite_isFlippedY" sprite_isFlippedY' ::  HoppyF.Ptr SpriteConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__Sprite_setFlippedY" sprite_setFlippedY' ::  HoppyF.Ptr Sprite -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "gencast__Sprite__Node" castSpriteToNode :: HoppyF.Ptr SpriteConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Sprite" castNodeToSprite :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr SpriteConst
foreign import ccall "gencast__Sprite__Ref" castSpriteToRef :: HoppyF.Ptr SpriteConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Sprite" castRefToSprite :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr SpriteConst
foreign import ccall "gendel__Sprite" delete'Sprite :: HoppyF.Ptr SpriteConst -> HoppyP.IO ()
foreign import ccall "&gendel__Sprite" deletePtr'Sprite :: HoppyF.FunPtr (HoppyF.Ptr SpriteConst -> HoppyP.IO ())
foreign import ccall "genpop__SpriteFrame_create" spriteFrame_create' ::  HoppyF.Ptr M1.StdStringConst -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO (HoppyF.Ptr SpriteFrame)
foreign import ccall "genpop__SpriteFrame_createWithTexture" spriteFrame_createWithTexture' ::  HoppyF.Ptr M3.Texture2D -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO (HoppyF.Ptr SpriteFrame)
foreign import ccall "genpop__SpriteFrame_getRectInPixels" spriteFrame_getRectInPixels' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.RawRectConst)
foreign import ccall "genpop__SpriteFrame_setRectInPixels" spriteFrame_setRectInPixels' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_isRotated" spriteFrame_isRotated' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__SpriteFrame_setRotated" spriteFrame_setRotated' ::  HoppyF.Ptr SpriteFrame -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getRect" spriteFrame_getRect' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.RawRectConst)
foreign import ccall "genpop__SpriteFrame_setRect" spriteFrame_setRect' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.RawRectConst -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getOffsetInPixels" spriteFrame_getOffsetInPixels' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__SpriteFrame_setOffsetInPixels" spriteFrame_setOffsetInPixels' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getOriginalSizeInPixels" spriteFrame_getOriginalSizeInPixels' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__SpriteFrame_setOriginalSizeInPixels" spriteFrame_setOriginalSizeInPixels' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.RawSizeConst -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getOriginalSize" spriteFrame_getOriginalSize' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.RawSizeConst)
foreign import ccall "genpop__SpriteFrame_setOriginalSize" spriteFrame_setOriginalSize' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.RawSizeConst -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getTexture" spriteFrame_getTexture' ::  HoppyF.Ptr SpriteFrame -> HoppyP.IO (HoppyF.Ptr M3.Texture2D)
foreign import ccall "genpop__SpriteFrame_setTexture" spriteFrame_setTexture' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M3.Texture2D -> HoppyP.IO ()
foreign import ccall "genpop__SpriteFrame_getOffset" spriteFrame_getOffset' ::  HoppyF.Ptr SpriteFrameConst -> HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__SpriteFrame_setOffset" spriteFrame_setOffset' ::  HoppyF.Ptr SpriteFrame -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "gencast__SpriteFrame__Ref" castSpriteFrameToRef :: HoppyF.Ptr SpriteFrameConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__SpriteFrame" castRefToSpriteFrame :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr SpriteFrameConst
foreign import ccall "gendel__SpriteFrame" delete'SpriteFrame :: HoppyF.Ptr SpriteFrameConst -> HoppyP.IO ()
foreign import ccall "&gendel__SpriteFrame" deletePtr'SpriteFrame :: HoppyF.FunPtr (HoppyF.Ptr SpriteFrameConst -> HoppyP.IO ())

class SpriteValue a where
  withSpritePtr :: a -> (SpriteConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} SpriteConstPtr a => SpriteValue a where
#else
instance SpriteConstPtr a => SpriteValue a where
#endif
  withSpritePtr = HoppyP.flip ($) . toSpriteConst

class (M5.NodeConstPtr this) => SpriteConstPtr this where
  toSpriteConst :: this -> SpriteConst

sprite_getTexture :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO M3.Texture2D
sprite_getTexture arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M3.Texture2D
  (sprite_getTexture' arg'1')

sprite_getSpriteFrame :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO SpriteFrame
sprite_getSpriteFrame arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap SpriteFrame
  (sprite_getSpriteFrame' arg'1')

sprite_getTextureRect :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO M2.RawRectConst
sprite_getTextureRect arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawRectConst
  (sprite_getTextureRect' arg'1')

sprite_getOffsetPosition :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
sprite_getOffsetPosition arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (sprite_getOffsetPosition' arg'1')

sprite_isFlippedX :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
sprite_isFlippedX arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (sprite_isFlippedX' arg'1')

sprite_isFlippedY :: (SpriteValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
sprite_isFlippedY arg'1 =
  withSpritePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (sprite_isFlippedY' arg'1')

class (SpriteConstPtr this, M5.NodePtr this) => SpritePtr this where
  toSprite :: this -> Sprite

sprite_setTexture :: (SpritePtr arg'1, M3.Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M3.toTexture2D arg'2) $ \arg'2' ->
  (sprite_setTexture' arg'1' arg'2')

sprite_setTextureWithFilename :: (SpritePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setTextureWithFilename arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (sprite_setTextureWithFilename' arg'1' arg'2')

sprite_setTextureRect :: (SpritePtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setTextureRect arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (sprite_setTextureRect' arg'1' arg'2')

sprite_setVertexRect :: (SpritePtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setVertexRect arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (sprite_setVertexRect' arg'1' arg'2')

sprite_setSpriteFrame :: (SpritePtr arg'1, SpriteFramePtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setSpriteFrame arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toSpriteFrame arg'2) $ \arg'2' ->
  (sprite_setSpriteFrame' arg'1' arg'2')

sprite_setSpriteFrameWithName :: (SpritePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
sprite_setSpriteFrameWithName arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (sprite_setSpriteFrameWithName' arg'1' arg'2')

sprite_setDisplayFrameWithAnimationName :: (SpritePtr arg'1, M1.StdStringValue arg'2) => arg'1 -> arg'2 -> HoppySPT.CSsize -> HoppyP.IO ()
sprite_setDisplayFrameWithAnimationName arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  M1.withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  let arg'3' = arg'3 in
  (sprite_setDisplayFrameWithAnimationName' arg'1' arg'2' arg'3')

sprite_setFlippedX :: (SpritePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
sprite_setFlippedX arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (sprite_setFlippedX' arg'1' arg'2')

sprite_setFlippedY :: (SpritePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
sprite_setFlippedY arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSprite arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (sprite_setFlippedY' arg'1' arg'2')

sprite_create ::  HoppyP.IO Sprite
sprite_create =
  HoppyP.fmap Sprite
  (sprite_create')

sprite_createWithFilename :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO Sprite
sprite_createWithFilename arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Sprite
  (sprite_createWithFilename' arg'1')

sprite_createWithFilenameAndRect :: (M1.StdStringValue arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Sprite
sprite_createWithFilenameAndRect arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Sprite
  (sprite_createWithFilenameAndRect' arg'1' arg'2')

sprite_createWithTexture :: (M3.Texture2DPtr arg'1) => arg'1 -> HoppyP.IO Sprite
sprite_createWithTexture arg'1 =
  HoppyFHR.withCppPtr (M3.toTexture2D arg'1) $ \arg'1' ->
  HoppyP.fmap Sprite
  (sprite_createWithTexture' arg'1')

sprite_createWithTextureAndRect :: (M3.Texture2DPtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO Sprite
sprite_createWithTextureAndRect arg'1 arg'2 =
  HoppyFHR.withCppPtr (M3.toTexture2D arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap Sprite
  (sprite_createWithTextureAndRect' arg'1' arg'2')

sprite_createWithSpriteFrame :: (SpriteFramePtr arg'1) => arg'1 -> HoppyP.IO Sprite
sprite_createWithSpriteFrame arg'1 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  HoppyP.fmap Sprite
  (sprite_createWithSpriteFrame' arg'1')

sprite_createWithSpriteFrameName :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO Sprite
sprite_createWithSpriteFrameName arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Sprite
  (sprite_createWithSpriteFrameName' arg'1')

data SpriteConst =
    SpriteConst (HoppyF.Ptr SpriteConst)
  | SpriteConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SpriteConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq SpriteConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SpriteConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSpriteToConst :: Sprite -> SpriteConst
castSpriteToConst (Sprite ptr') = SpriteConst $ HoppyF.castPtr ptr'
castSpriteToConst (SpriteGc fptr' ptr') = SpriteConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SpriteConst where
  nullptr = SpriteConst HoppyF.nullPtr
  
  withCppPtr (SpriteConst ptr') f' = f' ptr'
  withCppPtr (SpriteConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SpriteConst ptr') = ptr'
  toPtr (SpriteConstGc _ ptr') = ptr'
  
  touchCppPtr (SpriteConst _) = HoppyP.return ()
  touchCppPtr (SpriteConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SpriteConst where
  delete (SpriteConst ptr') = delete'Sprite ptr'
  delete (SpriteConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SpriteConst", " object."]
  
  toGc this'@(SpriteConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SpriteConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Sprite :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SpriteConstGc {}) = HoppyP.return this'

instance SpriteConstPtr SpriteConst where
  toSpriteConst = HoppyP.id

instance M5.NodeConstPtr SpriteConst where
  toNodeConst (SpriteConst ptr') = M5.NodeConst $ castSpriteToNode ptr'
  toNodeConst (SpriteConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castSpriteToNode ptr'

instance M2.RefConstPtr SpriteConst where
  toRefConst (SpriteConst ptr') = M2.RefConst $ castSpriteToRef ptr'
  toRefConst (SpriteConstGc fptr' ptr') = M2.RefConstGc fptr' $ castSpriteToRef ptr'

data Sprite =
    Sprite (HoppyF.Ptr Sprite)
  | SpriteGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Sprite)
  deriving (HoppyP.Show)

instance HoppyP.Eq Sprite where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Sprite where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSpriteToNonconst :: SpriteConst -> Sprite
castSpriteToNonconst (SpriteConst ptr') = Sprite $ HoppyF.castPtr ptr'
castSpriteToNonconst (SpriteConstGc fptr' ptr') = SpriteGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Sprite where
  nullptr = Sprite HoppyF.nullPtr
  
  withCppPtr (Sprite ptr') f' = f' ptr'
  withCppPtr (SpriteGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Sprite ptr') = ptr'
  toPtr (SpriteGc _ ptr') = ptr'
  
  touchCppPtr (Sprite _) = HoppyP.return ()
  touchCppPtr (SpriteGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Sprite where
  delete (Sprite ptr') = delete'Sprite $ (HoppyF.castPtr ptr' :: HoppyF.Ptr SpriteConst)
  delete (SpriteGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Sprite", " object."]
  
  toGc this'@(Sprite ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SpriteGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Sprite :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SpriteGc {}) = HoppyP.return this'

instance SpriteConstPtr Sprite where
  toSpriteConst (Sprite ptr') = SpriteConst $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'
  toSpriteConst (SpriteGc fptr' ptr') = SpriteConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'

instance SpritePtr Sprite where
  toSprite = HoppyP.id

instance M5.NodeConstPtr Sprite where
  toNodeConst (Sprite ptr') = M5.NodeConst $ castSpriteToNode $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'
  toNodeConst (SpriteGc fptr' ptr') = M5.NodeConstGc fptr' $ castSpriteToNode $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'

instance M5.NodePtr Sprite where
  toNode (Sprite ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castSpriteToNode $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'
  toNode (SpriteGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castSpriteToNode $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'

instance M2.RefConstPtr Sprite where
  toRefConst (Sprite ptr') = M2.RefConst $ castSpriteToRef $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'
  toRefConst (SpriteGc fptr' ptr') = M2.RefConstGc fptr' $ castSpriteToRef $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'

instance M2.RefPtr Sprite where
  toRef (Sprite ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSpriteToRef $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'
  toRef (SpriteGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSpriteToRef $ (HoppyF.castPtr :: HoppyF.Ptr Sprite -> HoppyF.Ptr SpriteConst) ptr'

class SpriteSuper a where
  downToSprite :: a -> Sprite

instance SpriteSuper M5.Node where
  downToSprite = castSpriteToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = SpriteConst $ castNodeToSprite ptr'
      cast' (M5.NodeConstGc fptr' ptr') = SpriteConstGc fptr' $ castNodeToSprite ptr'
instance SpriteSuper M2.Ref where
  downToSprite = castSpriteToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = SpriteConst $ castRefToSprite ptr'
      cast' (M2.RefConstGc fptr' ptr') = SpriteConstGc fptr' $ castRefToSprite ptr'

class SpriteSuperConst a where
  downToSpriteConst :: a -> SpriteConst

instance SpriteSuperConst M5.NodeConst where
  downToSpriteConst = cast'
    where
      cast' (M5.NodeConst ptr') = SpriteConst $ castNodeToSprite ptr'
      cast' (M5.NodeConstGc fptr' ptr') = SpriteConstGc fptr' $ castNodeToSprite ptr'
instance SpriteSuperConst M2.RefConst where
  downToSpriteConst = cast'
    where
      cast' (M2.RefConst ptr') = SpriteConst $ castRefToSprite ptr'
      cast' (M2.RefConstGc fptr' ptr') = SpriteConstGc fptr' $ castRefToSprite ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Sprite)) Sprite where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Sprite)) Sprite where
  decode = HoppyP.fmap Sprite . HoppyF.peek

class SpriteFrameValue a where
  withSpriteFramePtr :: a -> (SpriteFrameConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} SpriteFrameConstPtr a => SpriteFrameValue a where
#else
instance SpriteFrameConstPtr a => SpriteFrameValue a where
#endif
  withSpriteFramePtr = HoppyP.flip ($) . toSpriteFrameConst

class (M2.RefConstPtr this) => SpriteFrameConstPtr this where
  toSpriteFrameConst :: this -> SpriteFrameConst

spriteFrame_getRectInPixels :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.RawRectConst
spriteFrame_getRectInPixels arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawRectConst
  (spriteFrame_getRectInPixels' arg'1')

spriteFrame_isRotated :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
spriteFrame_isRotated arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (spriteFrame_isRotated' arg'1')

spriteFrame_getRect :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.RawRectConst
spriteFrame_getRect arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawRectConst
  (spriteFrame_getRect' arg'1')

spriteFrame_getOffsetInPixels :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
spriteFrame_getOffsetInPixels arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (spriteFrame_getOffsetInPixels' arg'1')

spriteFrame_getOriginalSizeInPixels :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.RawSizeConst
spriteFrame_getOriginalSizeInPixels arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawSizeConst
  (spriteFrame_getOriginalSizeInPixels' arg'1')

spriteFrame_getOriginalSize :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.RawSizeConst
spriteFrame_getOriginalSize arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.RawSizeConst
  (spriteFrame_getOriginalSize' arg'1')

spriteFrame_getOffset :: (SpriteFrameValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
spriteFrame_getOffset arg'1 =
  withSpriteFramePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (spriteFrame_getOffset' arg'1')

class (SpriteFrameConstPtr this, M2.RefPtr this) => SpriteFramePtr this where
  toSpriteFrame :: this -> SpriteFrame

spriteFrame_setRectInPixels :: (SpriteFramePtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setRectInPixels arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setRectInPixels' arg'1' arg'2')

spriteFrame_setRotated :: (SpriteFramePtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
spriteFrame_setRotated arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (spriteFrame_setRotated' arg'1' arg'2')

spriteFrame_setRect :: (SpriteFramePtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setRect arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setRect' arg'1' arg'2')

spriteFrame_setOffsetInPixels :: (SpriteFramePtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setOffsetInPixels arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setOffsetInPixels' arg'1' arg'2')

spriteFrame_setOriginalSizeInPixels :: (SpriteFramePtr arg'1, M2.RawSizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setOriginalSizeInPixels arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withRawSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setOriginalSizeInPixels' arg'1' arg'2')

spriteFrame_setOriginalSize :: (SpriteFramePtr arg'1, M2.RawSizeValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setOriginalSize arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withRawSizePtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setOriginalSize' arg'1' arg'2')

spriteFrame_getTexture :: (SpriteFramePtr arg'1) => arg'1 -> HoppyP.IO M3.Texture2D
spriteFrame_getTexture arg'1 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  HoppyP.fmap M3.Texture2D
  (spriteFrame_getTexture' arg'1')

spriteFrame_setTexture :: (SpriteFramePtr arg'1, M3.Texture2DPtr arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (M3.toTexture2D arg'2) $ \arg'2' ->
  (spriteFrame_setTexture' arg'1' arg'2')

spriteFrame_setOffset :: (SpriteFramePtr arg'1, M2.Vec2Value arg'2) => arg'1 -> arg'2 -> HoppyP.IO ()
spriteFrame_setOffset arg'1 arg'2 =
  HoppyFHR.withCppPtr (toSpriteFrame arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (spriteFrame_setOffset' arg'1' arg'2')

spriteFrame_create :: (M1.StdStringValue arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO SpriteFrame
spriteFrame_create arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap SpriteFrame
  (spriteFrame_create' arg'1' arg'2')

spriteFrame_createWithTexture :: (M3.Texture2DPtr arg'1, M2.RawRectValue arg'2) => arg'1 -> arg'2 -> HoppyP.IO SpriteFrame
spriteFrame_createWithTexture arg'1 arg'2 =
  HoppyFHR.withCppPtr (M3.toTexture2D arg'1) $ \arg'1' ->
  M2.withRawRectPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap SpriteFrame
  (spriteFrame_createWithTexture' arg'1' arg'2')

data SpriteFrameConst =
    SpriteFrameConst (HoppyF.Ptr SpriteFrameConst)
  | SpriteFrameConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SpriteFrameConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq SpriteFrameConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SpriteFrameConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSpriteFrameToConst :: SpriteFrame -> SpriteFrameConst
castSpriteFrameToConst (SpriteFrame ptr') = SpriteFrameConst $ HoppyF.castPtr ptr'
castSpriteFrameToConst (SpriteFrameGc fptr' ptr') = SpriteFrameConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SpriteFrameConst where
  nullptr = SpriteFrameConst HoppyF.nullPtr
  
  withCppPtr (SpriteFrameConst ptr') f' = f' ptr'
  withCppPtr (SpriteFrameConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SpriteFrameConst ptr') = ptr'
  toPtr (SpriteFrameConstGc _ ptr') = ptr'
  
  touchCppPtr (SpriteFrameConst _) = HoppyP.return ()
  touchCppPtr (SpriteFrameConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SpriteFrameConst where
  delete (SpriteFrameConst ptr') = delete'SpriteFrame ptr'
  delete (SpriteFrameConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SpriteFrameConst", " object."]
  
  toGc this'@(SpriteFrameConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SpriteFrameConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'SpriteFrame :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SpriteFrameConstGc {}) = HoppyP.return this'

instance SpriteFrameConstPtr SpriteFrameConst where
  toSpriteFrameConst = HoppyP.id

instance M2.RefConstPtr SpriteFrameConst where
  toRefConst (SpriteFrameConst ptr') = M2.RefConst $ castSpriteFrameToRef ptr'
  toRefConst (SpriteFrameConstGc fptr' ptr') = M2.RefConstGc fptr' $ castSpriteFrameToRef ptr'

data SpriteFrame =
    SpriteFrame (HoppyF.Ptr SpriteFrame)
  | SpriteFrameGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SpriteFrame)
  deriving (HoppyP.Show)

instance HoppyP.Eq SpriteFrame where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SpriteFrame where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSpriteFrameToNonconst :: SpriteFrameConst -> SpriteFrame
castSpriteFrameToNonconst (SpriteFrameConst ptr') = SpriteFrame $ HoppyF.castPtr ptr'
castSpriteFrameToNonconst (SpriteFrameConstGc fptr' ptr') = SpriteFrameGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SpriteFrame where
  nullptr = SpriteFrame HoppyF.nullPtr
  
  withCppPtr (SpriteFrame ptr') f' = f' ptr'
  withCppPtr (SpriteFrameGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SpriteFrame ptr') = ptr'
  toPtr (SpriteFrameGc _ ptr') = ptr'
  
  touchCppPtr (SpriteFrame _) = HoppyP.return ()
  touchCppPtr (SpriteFrameGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SpriteFrame where
  delete (SpriteFrame ptr') = delete'SpriteFrame $ (HoppyF.castPtr ptr' :: HoppyF.Ptr SpriteFrameConst)
  delete (SpriteFrameGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SpriteFrame", " object."]
  
  toGc this'@(SpriteFrame ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SpriteFrameGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'SpriteFrame :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SpriteFrameGc {}) = HoppyP.return this'

instance SpriteFrameConstPtr SpriteFrame where
  toSpriteFrameConst (SpriteFrame ptr') = SpriteFrameConst $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'
  toSpriteFrameConst (SpriteFrameGc fptr' ptr') = SpriteFrameConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'

instance SpriteFramePtr SpriteFrame where
  toSpriteFrame = HoppyP.id

instance M2.RefConstPtr SpriteFrame where
  toRefConst (SpriteFrame ptr') = M2.RefConst $ castSpriteFrameToRef $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'
  toRefConst (SpriteFrameGc fptr' ptr') = M2.RefConstGc fptr' $ castSpriteFrameToRef $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'

instance M2.RefPtr SpriteFrame where
  toRef (SpriteFrame ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSpriteFrameToRef $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'
  toRef (SpriteFrameGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSpriteFrameToRef $ (HoppyF.castPtr :: HoppyF.Ptr SpriteFrame -> HoppyF.Ptr SpriteFrameConst) ptr'

class SpriteFrameSuper a where
  downToSpriteFrame :: a -> SpriteFrame

instance SpriteFrameSuper M2.Ref where
  downToSpriteFrame = castSpriteFrameToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = SpriteFrameConst $ castRefToSpriteFrame ptr'
      cast' (M2.RefConstGc fptr' ptr') = SpriteFrameConstGc fptr' $ castRefToSpriteFrame ptr'

class SpriteFrameSuperConst a where
  downToSpriteFrameConst :: a -> SpriteFrameConst

instance SpriteFrameSuperConst M2.RefConst where
  downToSpriteFrameConst = cast'
    where
      cast' (M2.RefConst ptr') = SpriteFrameConst $ castRefToSpriteFrame ptr'
      cast' (M2.RefConstGc fptr' ptr') = SpriteFrameConstGc fptr' $ castRefToSpriteFrame ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr SpriteFrame)) SpriteFrame where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr SpriteFrame)) SpriteFrame where
  decode = HoppyP.fmap SpriteFrame . HoppyF.peek