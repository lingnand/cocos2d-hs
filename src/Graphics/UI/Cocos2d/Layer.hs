{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Layer (
  castLayerToNode,
  castNodeToLayer,
  castLayerToRef,
  castRefToLayer,
  castLayerColorToLayer,
  castLayerToLayerColor,
  castLayerColorToNode,
  castNodeToLayerColor,
  castLayerColorToRef,
  castRefToLayerColor,
  castLayerGradientToLayerColor,
  castLayerColorToLayerGradient,
  castLayerGradientToLayer,
  castLayerToLayerGradient,
  castLayerGradientToNode,
  castNodeToLayerGradient,
  castLayerGradientToRef,
  castRefToLayerGradient,
  castLayerMultiplexToLayer,
  castLayerToLayerMultiplex,
  castLayerMultiplexToNode,
  castNodeToLayerMultiplex,
  castLayerMultiplexToRef,
  castRefToLayerMultiplex,
  LayerValue (..),
  LayerConstPtr (..),
  LayerPtr (..),
  layer_create,
  LayerConst (..),
  castLayerToConst,
  Layer (..),
  castLayerToNonconst,
  LayerSuper (..),
  LayerSuperConst (..),
  LayerColorValue (..),
  LayerColorConstPtr (..),
  LayerColorPtr (..),
  layerColor_changeWidth,
  layerColor_changeHeight,
  layerColor_changeWidthAndHeight,
  layerColor_create,
  layerColor_createWithColorAndSize,
  layerColor_createWithColor,
  LayerColorConst (..),
  castLayerColorToConst,
  LayerColor (..),
  castLayerColorToNonconst,
  LayerColorSuper (..),
  LayerColorSuperConst (..),
  LayerGradientValue (..),
  LayerGradientConstPtr (..),
  layerGradient_isCompressedInterpolation,
  layerGradient_getStartColor,
  layerGradient_getEndColor,
  layerGradient_getStartOpacity,
  layerGradient_getEndOpacity,
  layerGradient_getVector,
  LayerGradientPtr (..),
  layerGradient_setCompressedInterpolation,
  layerGradient_setStartColor,
  layerGradient_setEndColor,
  layerGradient_setStartOpacity,
  layerGradient_setEndOpacity,
  layerGradient_setVector,
  layerGradient_create,
  layerGradient_createWithStartEndColor,
  layerGradient_createWithStartEndColorAndDirection,
  LayerGradientConst (..),
  castLayerGradientToConst,
  LayerGradient (..),
  castLayerGradientToNonconst,
  LayerGradientSuper (..),
  LayerGradientSuperConst (..),
  LayerMultiplexValue (..),
  LayerMultiplexConstPtr (..),
  LayerMultiplexPtr (..),
  layerMultiplex_addLayer,
  layerMultiplex_switchTo,
  layerMultiplex_switchToAndReleaseMe,
  layerMultiplex_create,
  layerMultiplex_createWithLayer,
  layerMultiplex_createWithLayers2,
  layerMultiplex_createWithLayers3,
  layerMultiplex_createWithLayers4,
  layerMultiplex_createWithLayers5,
  layerMultiplex_createWithLayers6,
  layerMultiplex_createWithLayers7,
  layerMultiplex_createWithLayers8,
  layerMultiplex_createWithLayers9,
  layerMultiplex_createWithLayers10,
  LayerMultiplexConst (..),
  castLayerMultiplexToConst,
  LayerMultiplex (..),
  castLayerMultiplexToNonconst,
  LayerMultiplexSuper (..),
  LayerMultiplexSuperConst (..),
  ) where

import qualified Data.Word as HoppyDW
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M3
import Prelude (($), (.), (/=), (==))
import qualified Prelude as HoppyP

foreign import ccall "genpop__Layer_create" layer_create' ::   HoppyP.IO (HoppyF.Ptr Layer)
foreign import ccall "gencast__Layer__Node" castLayerToNode :: HoppyF.Ptr LayerConst -> HoppyF.Ptr M3.NodeConst
foreign import ccall "gencast__Node__Layer" castNodeToLayer :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr LayerConst
foreign import ccall "gencast__Layer__Ref" castLayerToRef :: HoppyF.Ptr LayerConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Layer" castRefToLayer :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LayerConst
foreign import ccall "gendel__Layer" delete'Layer :: HoppyF.Ptr LayerConst -> HoppyP.IO ()
foreign import ccall "&gendel__Layer" deletePtr'Layer :: HoppyF.FunPtr (HoppyF.Ptr LayerConst -> HoppyP.IO ())
foreign import ccall "genpop__LayerColor_create" layerColor_create' ::   HoppyP.IO (HoppyF.Ptr LayerColor)
foreign import ccall "genpop__LayerColor_createWithColorAndSize" layerColor_createWithColorAndSize' ::   HoppyF.Ptr M2.Color4BConst ->    HoppyFC.CFloat ->      HoppyFC.CFloat -> HoppyP.IO (HoppyF.Ptr LayerColor)
foreign import ccall "genpop__LayerColor_createWithColor" layerColor_createWithColor' ::   HoppyF.Ptr M2.Color4BConst -> HoppyP.IO (HoppyF.Ptr LayerColor)
foreign import ccall "genpop__LayerColor_changeWidth" layerColor_changeWidth' ::   HoppyF.Ptr LayerColor -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__LayerColor_changeHeight" layerColor_changeHeight' ::   HoppyF.Ptr LayerColor -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "genpop__LayerColor_changeWidthAndHeight" layerColor_changeWidthAndHeight' ::   HoppyF.Ptr LayerColor ->    HoppyFC.CFloat -> HoppyFC.CFloat -> HoppyP.IO ()
foreign import ccall "gencast__LayerColor__Layer" castLayerColorToLayer :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr LayerConst
foreign import ccall "gencast__Layer__LayerColor" castLayerToLayerColor :: HoppyF.Ptr LayerConst -> HoppyF.Ptr LayerColorConst
foreign import ccall "gencast__LayerColor__Node" castLayerColorToNode :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr M3.NodeConst
foreign import ccall "gencast__Node__LayerColor" castNodeToLayerColor :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr LayerColorConst
foreign import ccall "gencast__LayerColor__Ref" castLayerColorToRef :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__LayerColor" castRefToLayerColor :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LayerColorConst
foreign import ccall "gendel__LayerColor" delete'LayerColor :: HoppyF.Ptr LayerColorConst -> HoppyP.IO ()
foreign import ccall "&gendel__LayerColor" deletePtr'LayerColor :: HoppyF.FunPtr (HoppyF.Ptr LayerColorConst -> HoppyP.IO ())
foreign import ccall "genpop__LayerGradient_create" layerGradient_create' ::   HoppyP.IO (HoppyF.Ptr LayerGradient)
foreign import ccall "genpop__LayerGradient_createWithStartEndColor" layerGradient_createWithStartEndColor' ::   HoppyF.Ptr M2.Color4BConst ->    HoppyF.Ptr M2.Color4BConst -> HoppyP.IO (HoppyF.Ptr LayerGradient)
foreign import ccall "genpop__LayerGradient_createWithStartEndColorAndDirection" layerGradient_createWithStartEndColorAndDirection' ::   HoppyF.Ptr M2.Color4BConst ->    HoppyF.Ptr M2.Color4BConst ->      HoppyF.Ptr M2.Vec2Const -> HoppyP.IO (HoppyF.Ptr LayerGradient)
foreign import ccall "genpop__LayerGradient_isCompressedInterpolation" layerGradient_isCompressedInterpolation' ::   HoppyF.Ptr LayerGradientConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__LayerGradient_setCompressedInterpolation" layerGradient_setCompressedInterpolation' ::   HoppyF.Ptr LayerGradient -> HoppyFHR.CBool -> HoppyP.IO ()
foreign import ccall "genpop__LayerGradient_getStartColor" layerGradient_getStartColor' ::   HoppyF.Ptr LayerGradientConst ->    HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__LayerGradient_setStartColor" layerGradient_setStartColor' ::   HoppyF.Ptr LayerGradient ->    HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__LayerGradient_getEndColor" layerGradient_getEndColor' ::   HoppyF.Ptr LayerGradientConst ->    HoppyP.IO (HoppyF.Ptr M2.Color3BConst)
foreign import ccall "genpop__LayerGradient_setEndColor" layerGradient_setEndColor' ::   HoppyF.Ptr LayerGradient ->    HoppyF.Ptr M2.Color3BConst -> HoppyP.IO ()
foreign import ccall "genpop__LayerGradient_getStartOpacity" layerGradient_getStartOpacity' ::   HoppyF.Ptr LayerGradientConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__LayerGradient_setStartOpacity" layerGradient_setStartOpacity' ::   HoppyF.Ptr LayerGradient -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__LayerGradient_getEndOpacity" layerGradient_getEndOpacity' ::   HoppyF.Ptr LayerGradientConst -> HoppyP.IO HoppyDW.Word8
foreign import ccall "genpop__LayerGradient_setEndOpacity" layerGradient_setEndOpacity' ::   HoppyF.Ptr LayerGradient -> HoppyDW.Word8 -> HoppyP.IO ()
foreign import ccall "genpop__LayerGradient_getVector" layerGradient_getVector' ::   HoppyF.Ptr LayerGradientConst ->    HoppyP.IO (HoppyF.Ptr M2.Vec2Const)
foreign import ccall "genpop__LayerGradient_setVector" layerGradient_setVector' ::   HoppyF.Ptr LayerGradient -> HoppyF.Ptr M2.Vec2Const -> HoppyP.IO ()
foreign import ccall "gencast__LayerGradient__LayerColor" castLayerGradientToLayerColor :: HoppyF.Ptr LayerGradientConst -> HoppyF.Ptr LayerColorConst
foreign import ccall "gencast__LayerColor__LayerGradient" castLayerColorToLayerGradient :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr LayerGradientConst
foreign import ccall "gencast__LayerGradient__Layer" castLayerGradientToLayer :: HoppyF.Ptr LayerGradientConst -> HoppyF.Ptr LayerConst
foreign import ccall "gencast__Layer__LayerGradient" castLayerToLayerGradient :: HoppyF.Ptr LayerConst -> HoppyF.Ptr LayerGradientConst
foreign import ccall "gencast__LayerGradient__Node" castLayerGradientToNode :: HoppyF.Ptr LayerGradientConst -> HoppyF.Ptr M3.NodeConst
foreign import ccall "gencast__Node__LayerGradient" castNodeToLayerGradient :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr LayerGradientConst
foreign import ccall "gencast__LayerGradient__Ref" castLayerGradientToRef :: HoppyF.Ptr LayerGradientConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__LayerGradient" castRefToLayerGradient :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LayerGradientConst
foreign import ccall "gendel__LayerGradient" delete'LayerGradient :: HoppyF.Ptr LayerGradientConst -> HoppyP.IO ()
foreign import ccall "&gendel__LayerGradient" deletePtr'LayerGradient :: HoppyF.FunPtr (HoppyF.Ptr LayerGradientConst -> HoppyP.IO ())
foreign import ccall "genpop__LayerMultiplex_create" layerMultiplex_create' ::   HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayer" layerMultiplex_createWithLayer' ::   HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers2" layerMultiplex_createWithLayers2' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers3" layerMultiplex_createWithLayers3' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers4" layerMultiplex_createWithLayers4' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers5" layerMultiplex_createWithLayers5' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers6" layerMultiplex_createWithLayers6' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer ->            HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers7" layerMultiplex_createWithLayers7' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer ->            HoppyF.Ptr Layer ->              HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers8" layerMultiplex_createWithLayers8' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer ->            HoppyF.Ptr Layer ->              HoppyF.Ptr Layer ->                HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers9" layerMultiplex_createWithLayers9' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer ->            HoppyF.Ptr Layer ->              HoppyF.Ptr Layer ->                HoppyF.Ptr Layer ->                  HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_createWithLayers10" layerMultiplex_createWithLayers10' ::   HoppyF.Ptr Layer ->    HoppyF.Ptr Layer ->      HoppyF.Ptr Layer ->        HoppyF.Ptr Layer ->          HoppyF.Ptr Layer ->            HoppyF.Ptr Layer ->              HoppyF.Ptr Layer ->                HoppyF.Ptr Layer ->                  HoppyF.Ptr Layer ->                    HoppyF.Ptr Layer -> HoppyP.IO (HoppyF.Ptr LayerMultiplex)
foreign import ccall "genpop__LayerMultiplex_addLayer" layerMultiplex_addLayer' ::   HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr Layer -> HoppyP.IO ()
foreign import ccall "genpop__LayerMultiplex_switchTo" layerMultiplex_switchTo' ::   HoppyF.Ptr LayerMultiplex -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "genpop__LayerMultiplex_switchToAndReleaseMe" layerMultiplex_switchToAndReleaseMe' ::   HoppyF.Ptr LayerMultiplex -> HoppyFC.CInt -> HoppyP.IO ()
foreign import ccall "gencast__LayerMultiplex__Layer" castLayerMultiplexToLayer :: HoppyF.Ptr LayerMultiplexConst -> HoppyF.Ptr LayerConst
foreign import ccall "gencast__Layer__LayerMultiplex" castLayerToLayerMultiplex :: HoppyF.Ptr LayerConst -> HoppyF.Ptr LayerMultiplexConst
foreign import ccall "gencast__LayerMultiplex__Node" castLayerMultiplexToNode :: HoppyF.Ptr LayerMultiplexConst -> HoppyF.Ptr M3.NodeConst
foreign import ccall "gencast__Node__LayerMultiplex" castNodeToLayerMultiplex :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr LayerMultiplexConst
foreign import ccall "gencast__LayerMultiplex__Ref" castLayerMultiplexToRef :: HoppyF.Ptr LayerMultiplexConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__LayerMultiplex" castRefToLayerMultiplex :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr LayerMultiplexConst
foreign import ccall "gendel__LayerMultiplex" delete'LayerMultiplex :: HoppyF.Ptr LayerMultiplexConst -> HoppyP.IO ()
foreign import ccall "&gendel__LayerMultiplex" deletePtr'LayerMultiplex :: HoppyF.FunPtr (HoppyF.Ptr LayerMultiplexConst -> HoppyP.IO ())

class LayerValue a where
  withLayerPtr :: a -> (LayerConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LayerConstPtr a => LayerValue a where
#else
instance LayerConstPtr a => LayerValue a where
#endif
  withLayerPtr = HoppyP.flip ($) . toLayerConst

class (M3.NodeConstPtr this) => LayerConstPtr this where
  toLayerConst :: this -> LayerConst

class (LayerConstPtr this, M3.NodePtr this) => LayerPtr this where
  toLayer :: this -> Layer

layer_create ::   HoppyP.IO Layer
layer_create =
  HoppyP.fmap Layer
  (layer_create')

data LayerConst =
    LayerConst (HoppyF.Ptr LayerConst)
  | LayerConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerToConst :: Layer -> LayerConst
castLayerToConst (Layer ptr') = LayerConst $ HoppyF.castPtr ptr'
castLayerToConst (LayerGc fptr' ptr') = LayerConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerConst where
  nullptr = LayerConst HoppyF.nullPtr
  
  withCppPtr (LayerConst ptr') f' = f' ptr'
  withCppPtr (LayerConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerConst ptr') = ptr'
  toPtr (LayerConstGc _ ptr') = ptr'
  
  touchCppPtr (LayerConst _) = HoppyP.return ()
  touchCppPtr (LayerConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerConst where
  delete (LayerConst ptr') = delete'Layer ptr'
  delete (LayerConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerConst", " object."]
  
  toGc this'@(LayerConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Layer :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerConstGc {}) = HoppyP.return this'

instance LayerConstPtr LayerConst where
  toLayerConst = HoppyP.id

instance M3.NodeConstPtr LayerConst where
  toNodeConst (LayerConst ptr') = M3.NodeConst $ castLayerToNode ptr'
  toNodeConst (LayerConstGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerToNode ptr'

instance M2.RefConstPtr LayerConst where
  toRefConst (LayerConst ptr') = M2.RefConst $ castLayerToRef ptr'
  toRefConst (LayerConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerToRef ptr'

data Layer =
    Layer (HoppyF.Ptr Layer)
  | LayerGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Layer)
  deriving (HoppyP.Show)

instance HoppyP.Eq Layer where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Layer where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerToNonconst :: LayerConst -> Layer
castLayerToNonconst (LayerConst ptr') = Layer $ HoppyF.castPtr ptr'
castLayerToNonconst (LayerConstGc fptr' ptr') = LayerGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Layer where
  nullptr = Layer HoppyF.nullPtr
  
  withCppPtr (Layer ptr') f' = f' ptr'
  withCppPtr (LayerGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Layer ptr') = ptr'
  toPtr (LayerGc _ ptr') = ptr'
  
  touchCppPtr (Layer _) = HoppyP.return ()
  touchCppPtr (LayerGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Layer where
  delete (Layer ptr') = delete'Layer $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LayerConst)
  delete (LayerGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Layer", " object."]
  
  toGc this'@(Layer ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Layer :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerGc {}) = HoppyP.return this'

instance LayerConstPtr Layer where
  toLayerConst (Layer ptr') = LayerConst $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'
  toLayerConst (LayerGc fptr' ptr') = LayerConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'

instance LayerPtr Layer where
  toLayer = HoppyP.id

instance M3.NodeConstPtr Layer where
  toNodeConst (Layer ptr') = M3.NodeConst $ castLayerToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'
  toNodeConst (LayerGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'

instance M3.NodePtr Layer where
  toNode (Layer ptr') = M3.Node $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'
  toNode (LayerGc fptr' ptr') = M3.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerToNode $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'

instance M2.RefConstPtr Layer where
  toRefConst (Layer ptr') = M2.RefConst $ castLayerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'
  toRefConst (LayerGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'

instance M2.RefPtr Layer where
  toRef (Layer ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'
  toRef (LayerGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerToRef $ (HoppyF.castPtr :: HoppyF.Ptr Layer -> HoppyF.Ptr LayerConst) ptr'

class LayerSuper a where
  downToLayer :: a -> Layer

instance LayerSuper M3.Node where
  downToLayer = castLayerToNonconst . cast' . M3.castNodeToConst
    where
      cast' (M3.NodeConst ptr') = LayerConst $ castNodeToLayer ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerConstGc fptr' $ castNodeToLayer ptr'
instance LayerSuper M2.Ref where
  downToLayer = castLayerToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LayerConst $ castRefToLayer ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerConstGc fptr' $ castRefToLayer ptr'

class LayerSuperConst a where
  downToLayerConst :: a -> LayerConst

instance LayerSuperConst M3.NodeConst where
  downToLayerConst = cast'
    where
      cast' (M3.NodeConst ptr') = LayerConst $ castNodeToLayer ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerConstGc fptr' $ castNodeToLayer ptr'
instance LayerSuperConst M2.RefConst where
  downToLayerConst = cast'
    where
      cast' (M2.RefConst ptr') = LayerConst $ castRefToLayer ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerConstGc fptr' $ castRefToLayer ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Layer)) Layer where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Layer)) Layer where
  decode = HoppyP.fmap Layer . HoppyF.peek

class LayerColorValue a where
  withLayerColorPtr :: a -> (LayerColorConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LayerColorConstPtr a => LayerColorValue a where
#else
instance LayerColorConstPtr a => LayerColorValue a where
#endif
  withLayerColorPtr = HoppyP.flip ($) . toLayerColorConst

class (LayerConstPtr this) => LayerColorConstPtr this where
  toLayerColorConst :: this -> LayerColorConst

class (LayerColorConstPtr this, LayerPtr this) => LayerColorPtr this where
  toLayerColor :: this -> LayerColor

layerColor_changeWidth :: (LayerColorPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
layerColor_changeWidth arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerColor arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (layerColor_changeWidth' arg'1' arg'2')

layerColor_changeHeight :: (LayerColorPtr arg'1) => arg'1 -> HoppyP.Float -> HoppyP.IO ()
layerColor_changeHeight arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerColor arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  (layerColor_changeHeight' arg'1' arg'2')

layerColor_changeWidthAndHeight :: (LayerColorPtr arg'1) =>  arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO ()
layerColor_changeWidthAndHeight arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLayerColor arg'1) $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  (layerColor_changeWidthAndHeight' arg'1' arg'2' arg'3')

layerColor_create ::   HoppyP.IO LayerColor
layerColor_create =
  HoppyP.fmap LayerColor
  (layerColor_create')

layerColor_createWithColorAndSize :: (M2.Color4BValue arg'1) =>  arg'1 -> HoppyP.Float -> HoppyP.Float -> HoppyP.IO LayerColor
layerColor_createWithColorAndSize arg'1 arg'2 arg'3 =
  M2.withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = HoppyP.realToFrac arg'2 in
  let arg'3' = HoppyP.realToFrac arg'3 in
  HoppyP.fmap LayerColor
  (layerColor_createWithColorAndSize' arg'1' arg'2' arg'3')

layerColor_createWithColor :: (M2.Color4BValue arg'1) => arg'1 -> HoppyP.IO LayerColor
layerColor_createWithColor arg'1 =
  M2.withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap LayerColor
  (layerColor_createWithColor' arg'1')

data LayerColorConst =
    LayerColorConst (HoppyF.Ptr LayerColorConst)
  | LayerColorConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerColorConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerColorConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerColorConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerColorToConst :: LayerColor -> LayerColorConst
castLayerColorToConst (LayerColor ptr') = LayerColorConst $ HoppyF.castPtr ptr'
castLayerColorToConst (LayerColorGc fptr' ptr') = LayerColorConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerColorConst where
  nullptr = LayerColorConst HoppyF.nullPtr
  
  withCppPtr (LayerColorConst ptr') f' = f' ptr'
  withCppPtr (LayerColorConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerColorConst ptr') = ptr'
  toPtr (LayerColorConstGc _ ptr') = ptr'
  
  touchCppPtr (LayerColorConst _) = HoppyP.return ()
  touchCppPtr (LayerColorConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerColorConst where
  delete (LayerColorConst ptr') = delete'LayerColor ptr'
  delete (LayerColorConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerColorConst", " object."]
  
  toGc this'@(LayerColorConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerColorConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerColor :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerColorConstGc {}) = HoppyP.return this'

instance LayerColorConstPtr LayerColorConst where
  toLayerColorConst = HoppyP.id

instance LayerConstPtr LayerColorConst where
  toLayerConst (LayerColorConst ptr') = LayerConst $ castLayerColorToLayer ptr'
  toLayerConst (LayerColorConstGc fptr' ptr') = LayerConstGc fptr' $ castLayerColorToLayer ptr'

instance M3.NodeConstPtr LayerColorConst where
  toNodeConst (LayerColorConst ptr') = M3.NodeConst $ castLayerColorToNode ptr'
  toNodeConst (LayerColorConstGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerColorToNode ptr'

instance M2.RefConstPtr LayerColorConst where
  toRefConst (LayerColorConst ptr') = M2.RefConst $ castLayerColorToRef ptr'
  toRefConst (LayerColorConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerColorToRef ptr'

data LayerColor =
    LayerColor (HoppyF.Ptr LayerColor)
  | LayerColorGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerColor)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerColor where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerColor where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerColorToNonconst :: LayerColorConst -> LayerColor
castLayerColorToNonconst (LayerColorConst ptr') = LayerColor $ HoppyF.castPtr ptr'
castLayerColorToNonconst (LayerColorConstGc fptr' ptr') = LayerColorGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerColor where
  nullptr = LayerColor HoppyF.nullPtr
  
  withCppPtr (LayerColor ptr') f' = f' ptr'
  withCppPtr (LayerColorGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerColor ptr') = ptr'
  toPtr (LayerColorGc _ ptr') = ptr'
  
  touchCppPtr (LayerColor _) = HoppyP.return ()
  touchCppPtr (LayerColorGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerColor where
  delete (LayerColor ptr') = delete'LayerColor $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LayerColorConst)
  delete (LayerColorGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerColor", " object."]
  
  toGc this'@(LayerColor ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerColorGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerColor :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerColorGc {}) = HoppyP.return this'

instance LayerColorConstPtr LayerColor where
  toLayerColorConst (LayerColor ptr') = LayerColorConst $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toLayerColorConst (LayerColorGc fptr' ptr') = LayerColorConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance LayerColorPtr LayerColor where
  toLayerColor = HoppyP.id

instance LayerConstPtr LayerColor where
  toLayerConst (LayerColor ptr') = LayerConst $ castLayerColorToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toLayerConst (LayerColorGc fptr' ptr') = LayerConstGc fptr' $ castLayerColorToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance LayerPtr LayerColor where
  toLayer (LayerColor ptr') = Layer $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerColorToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toLayer (LayerColorGc fptr' ptr') = LayerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerColorToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance M3.NodeConstPtr LayerColor where
  toNodeConst (LayerColor ptr') = M3.NodeConst $ castLayerColorToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toNodeConst (LayerColorGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerColorToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance M3.NodePtr LayerColor where
  toNode (LayerColor ptr') = M3.Node $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerColorToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toNode (LayerColorGc fptr' ptr') = M3.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerColorToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance M2.RefConstPtr LayerColor where
  toRefConst (LayerColor ptr') = M2.RefConst $ castLayerColorToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toRefConst (LayerColorGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerColorToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

instance M2.RefPtr LayerColor where
  toRef (LayerColor ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerColorToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'
  toRef (LayerColorGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerColorToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerColor -> HoppyF.Ptr LayerColorConst) ptr'

class LayerColorSuper a where
  downToLayerColor :: a -> LayerColor

instance LayerColorSuper Layer where
  downToLayerColor = castLayerColorToNonconst . cast' . castLayerToConst
    where
      cast' (LayerConst ptr') = LayerColorConst $ castLayerToLayerColor ptr'
      cast' (LayerConstGc fptr' ptr') = LayerColorConstGc fptr' $ castLayerToLayerColor ptr'
instance LayerColorSuper M3.Node where
  downToLayerColor = castLayerColorToNonconst . cast' . M3.castNodeToConst
    where
      cast' (M3.NodeConst ptr') = LayerColorConst $ castNodeToLayerColor ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerColorConstGc fptr' $ castNodeToLayerColor ptr'
instance LayerColorSuper M2.Ref where
  downToLayerColor = castLayerColorToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LayerColorConst $ castRefToLayerColor ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerColorConstGc fptr' $ castRefToLayerColor ptr'

class LayerColorSuperConst a where
  downToLayerColorConst :: a -> LayerColorConst

instance LayerColorSuperConst LayerConst where
  downToLayerColorConst = cast'
    where
      cast' (LayerConst ptr') = LayerColorConst $ castLayerToLayerColor ptr'
      cast' (LayerConstGc fptr' ptr') = LayerColorConstGc fptr' $ castLayerToLayerColor ptr'
instance LayerColorSuperConst M3.NodeConst where
  downToLayerColorConst = cast'
    where
      cast' (M3.NodeConst ptr') = LayerColorConst $ castNodeToLayerColor ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerColorConstGc fptr' $ castNodeToLayerColor ptr'
instance LayerColorSuperConst M2.RefConst where
  downToLayerColorConst = cast'
    where
      cast' (M2.RefConst ptr') = LayerColorConst $ castRefToLayerColor ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerColorConstGc fptr' $ castRefToLayerColor ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr LayerColor)) LayerColor where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr LayerColor)) LayerColor where
  decode = HoppyP.fmap LayerColor . HoppyF.peek

class LayerGradientValue a where
  withLayerGradientPtr :: a -> (LayerGradientConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LayerGradientConstPtr a => LayerGradientValue a where
#else
instance LayerGradientConstPtr a => LayerGradientValue a where
#endif
  withLayerGradientPtr = HoppyP.flip ($) . toLayerGradientConst

class (LayerColorConstPtr this) => LayerGradientConstPtr this where
  toLayerGradientConst :: this -> LayerGradientConst

layerGradient_isCompressedInterpolation :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO HoppyP.Bool
layerGradient_isCompressedInterpolation arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap (/= 0)
  (layerGradient_isCompressedInterpolation' arg'1')

layerGradient_getStartColor :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layerGradient_getStartColor arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layerGradient_getStartColor' arg'1')

layerGradient_getEndColor :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO M2.Color3BConst
layerGradient_getEndColor arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Color3BConst
  (layerGradient_getEndColor' arg'1')

layerGradient_getStartOpacity :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
layerGradient_getStartOpacity arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (layerGradient_getStartOpacity' arg'1')

layerGradient_getEndOpacity :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO HoppyDW.Word8
layerGradient_getEndOpacity arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (layerGradient_getEndOpacity' arg'1')

layerGradient_getVector :: (LayerGradientValue arg'1) => arg'1 -> HoppyP.IO M2.Vec2Const
layerGradient_getVector arg'1 =
  withLayerGradientPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M2.Vec2Const
  (layerGradient_getVector' arg'1')

class (LayerGradientConstPtr this, LayerColorPtr this) => LayerGradientPtr this where
  toLayerGradient :: this -> LayerGradient

layerGradient_setCompressedInterpolation :: (LayerGradientPtr arg'1) => arg'1 -> HoppyP.Bool -> HoppyP.IO ()
layerGradient_setCompressedInterpolation arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  let arg'2' = if arg'2 then 1 else 0 in
  (layerGradient_setCompressedInterpolation' arg'1' arg'2')

layerGradient_setStartColor :: (LayerGradientPtr arg'1, M2.Color3BValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
layerGradient_setStartColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layerGradient_setStartColor' arg'1' arg'2')

layerGradient_setEndColor :: (LayerGradientPtr arg'1, M2.Color3BValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
layerGradient_setEndColor arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  M2.withColor3BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layerGradient_setEndColor' arg'1' arg'2')

layerGradient_setStartOpacity :: (LayerGradientPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
layerGradient_setStartOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (layerGradient_setStartOpacity' arg'1' arg'2')

layerGradient_setEndOpacity :: (LayerGradientPtr arg'1) => arg'1 -> HoppyDW.Word8 -> HoppyP.IO ()
layerGradient_setEndOpacity arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  let arg'2' = arg'2 in
  (layerGradient_setEndOpacity' arg'1' arg'2')

layerGradient_setVector :: (LayerGradientPtr arg'1, M2.Vec2Value arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
layerGradient_setVector arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerGradient arg'1) $ \arg'1' ->
  M2.withVec2Ptr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  (layerGradient_setVector' arg'1' arg'2')

layerGradient_create ::   HoppyP.IO LayerGradient
layerGradient_create =
  HoppyP.fmap LayerGradient
  (layerGradient_create')

layerGradient_createWithStartEndColor :: (M2.Color4BValue arg'1, M2.Color4BValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO LayerGradient
layerGradient_createWithStartEndColor arg'1 arg'2 =
  M2.withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap LayerGradient
  (layerGradient_createWithStartEndColor' arg'1' arg'2')

layerGradient_createWithStartEndColorAndDirection :: (M2.Color4BValue arg'1, M2.Color4BValue arg'2, M2.Vec2Value arg'3) =>  arg'1 -> arg'2 -> arg'3 -> HoppyP.IO LayerGradient
layerGradient_createWithStartEndColorAndDirection arg'1 arg'2 arg'3 =
  M2.withColor4BPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  M2.withColor4BPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  M2.withVec2Ptr arg'3 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'3' ->
  HoppyP.fmap LayerGradient
  (layerGradient_createWithStartEndColorAndDirection' arg'1' arg'2' arg'3')

data LayerGradientConst =
    LayerGradientConst (HoppyF.Ptr LayerGradientConst)
  | LayerGradientConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerGradientConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerGradientConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerGradientConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerGradientToConst :: LayerGradient -> LayerGradientConst
castLayerGradientToConst (LayerGradient ptr') = LayerGradientConst $ HoppyF.castPtr ptr'
castLayerGradientToConst (LayerGradientGc fptr' ptr') = LayerGradientConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerGradientConst where
  nullptr = LayerGradientConst HoppyF.nullPtr
  
  withCppPtr (LayerGradientConst ptr') f' = f' ptr'
  withCppPtr (LayerGradientConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerGradientConst ptr') = ptr'
  toPtr (LayerGradientConstGc _ ptr') = ptr'
  
  touchCppPtr (LayerGradientConst _) = HoppyP.return ()
  touchCppPtr (LayerGradientConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerGradientConst where
  delete (LayerGradientConst ptr') = delete'LayerGradient ptr'
  delete (LayerGradientConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerGradientConst", " object."]
  
  toGc this'@(LayerGradientConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerGradientConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerGradient :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerGradientConstGc {}) = HoppyP.return this'

instance LayerGradientConstPtr LayerGradientConst where
  toLayerGradientConst = HoppyP.id

instance LayerColorConstPtr LayerGradientConst where
  toLayerColorConst (LayerGradientConst ptr') = LayerColorConst $ castLayerGradientToLayerColor ptr'
  toLayerColorConst (LayerGradientConstGc fptr' ptr') = LayerColorConstGc fptr' $ castLayerGradientToLayerColor ptr'

instance LayerConstPtr LayerGradientConst where
  toLayerConst (LayerGradientConst ptr') = LayerConst $ castLayerGradientToLayer ptr'
  toLayerConst (LayerGradientConstGc fptr' ptr') = LayerConstGc fptr' $ castLayerGradientToLayer ptr'

instance M3.NodeConstPtr LayerGradientConst where
  toNodeConst (LayerGradientConst ptr') = M3.NodeConst $ castLayerGradientToNode ptr'
  toNodeConst (LayerGradientConstGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerGradientToNode ptr'

instance M2.RefConstPtr LayerGradientConst where
  toRefConst (LayerGradientConst ptr') = M2.RefConst $ castLayerGradientToRef ptr'
  toRefConst (LayerGradientConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerGradientToRef ptr'

data LayerGradient =
    LayerGradient (HoppyF.Ptr LayerGradient)
  | LayerGradientGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerGradient)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerGradient where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerGradient where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerGradientToNonconst :: LayerGradientConst -> LayerGradient
castLayerGradientToNonconst (LayerGradientConst ptr') = LayerGradient $ HoppyF.castPtr ptr'
castLayerGradientToNonconst (LayerGradientConstGc fptr' ptr') = LayerGradientGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerGradient where
  nullptr = LayerGradient HoppyF.nullPtr
  
  withCppPtr (LayerGradient ptr') f' = f' ptr'
  withCppPtr (LayerGradientGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerGradient ptr') = ptr'
  toPtr (LayerGradientGc _ ptr') = ptr'
  
  touchCppPtr (LayerGradient _) = HoppyP.return ()
  touchCppPtr (LayerGradientGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerGradient where
  delete (LayerGradient ptr') = delete'LayerGradient $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LayerGradientConst)
  delete (LayerGradientGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerGradient", " object."]
  
  toGc this'@(LayerGradient ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerGradientGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerGradient :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerGradientGc {}) = HoppyP.return this'

instance LayerGradientConstPtr LayerGradient where
  toLayerGradientConst (LayerGradient ptr') = LayerGradientConst $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toLayerGradientConst (LayerGradientGc fptr' ptr') = LayerGradientConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance LayerGradientPtr LayerGradient where
  toLayerGradient = HoppyP.id

instance LayerColorConstPtr LayerGradient where
  toLayerColorConst (LayerGradient ptr') = LayerColorConst $ castLayerGradientToLayerColor $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toLayerColorConst (LayerGradientGc fptr' ptr') = LayerColorConstGc fptr' $ castLayerGradientToLayerColor $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance LayerColorPtr LayerGradient where
  toLayerColor (LayerGradient ptr') = LayerColor $ (HoppyF.castPtr :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr LayerColor) $ castLayerGradientToLayerColor $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toLayerColor (LayerGradientGc fptr' ptr') = LayerColorGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerColorConst -> HoppyF.Ptr LayerColor) $ castLayerGradientToLayerColor $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance LayerConstPtr LayerGradient where
  toLayerConst (LayerGradient ptr') = LayerConst $ castLayerGradientToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toLayerConst (LayerGradientGc fptr' ptr') = LayerConstGc fptr' $ castLayerGradientToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance LayerPtr LayerGradient where
  toLayer (LayerGradient ptr') = Layer $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerGradientToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toLayer (LayerGradientGc fptr' ptr') = LayerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerGradientToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance M3.NodeConstPtr LayerGradient where
  toNodeConst (LayerGradient ptr') = M3.NodeConst $ castLayerGradientToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toNodeConst (LayerGradientGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerGradientToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance M3.NodePtr LayerGradient where
  toNode (LayerGradient ptr') = M3.Node $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerGradientToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toNode (LayerGradientGc fptr' ptr') = M3.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerGradientToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance M2.RefConstPtr LayerGradient where
  toRefConst (LayerGradient ptr') = M2.RefConst $ castLayerGradientToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toRefConst (LayerGradientGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerGradientToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

instance M2.RefPtr LayerGradient where
  toRef (LayerGradient ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerGradientToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'
  toRef (LayerGradientGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerGradientToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerGradient -> HoppyF.Ptr LayerGradientConst) ptr'

class LayerGradientSuper a where
  downToLayerGradient :: a -> LayerGradient

instance LayerGradientSuper LayerColor where
  downToLayerGradient = castLayerGradientToNonconst . cast' . castLayerColorToConst
    where
      cast' (LayerColorConst ptr') = LayerGradientConst $ castLayerColorToLayerGradient ptr'
      cast' (LayerColorConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castLayerColorToLayerGradient ptr'
instance LayerGradientSuper Layer where
  downToLayerGradient = castLayerGradientToNonconst . cast' . castLayerToConst
    where
      cast' (LayerConst ptr') = LayerGradientConst $ castLayerToLayerGradient ptr'
      cast' (LayerConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castLayerToLayerGradient ptr'
instance LayerGradientSuper M3.Node where
  downToLayerGradient = castLayerGradientToNonconst . cast' . M3.castNodeToConst
    where
      cast' (M3.NodeConst ptr') = LayerGradientConst $ castNodeToLayerGradient ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castNodeToLayerGradient ptr'
instance LayerGradientSuper M2.Ref where
  downToLayerGradient = castLayerGradientToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LayerGradientConst $ castRefToLayerGradient ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castRefToLayerGradient ptr'

class LayerGradientSuperConst a where
  downToLayerGradientConst :: a -> LayerGradientConst

instance LayerGradientSuperConst LayerColorConst where
  downToLayerGradientConst = cast'
    where
      cast' (LayerColorConst ptr') = LayerGradientConst $ castLayerColorToLayerGradient ptr'
      cast' (LayerColorConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castLayerColorToLayerGradient ptr'
instance LayerGradientSuperConst LayerConst where
  downToLayerGradientConst = cast'
    where
      cast' (LayerConst ptr') = LayerGradientConst $ castLayerToLayerGradient ptr'
      cast' (LayerConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castLayerToLayerGradient ptr'
instance LayerGradientSuperConst M3.NodeConst where
  downToLayerGradientConst = cast'
    where
      cast' (M3.NodeConst ptr') = LayerGradientConst $ castNodeToLayerGradient ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castNodeToLayerGradient ptr'
instance LayerGradientSuperConst M2.RefConst where
  downToLayerGradientConst = cast'
    where
      cast' (M2.RefConst ptr') = LayerGradientConst $ castRefToLayerGradient ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerGradientConstGc fptr' $ castRefToLayerGradient ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr LayerGradient)) LayerGradient where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr LayerGradient)) LayerGradient where
  decode = HoppyP.fmap LayerGradient . HoppyF.peek

class LayerMultiplexValue a where
  withLayerMultiplexPtr :: a -> (LayerMultiplexConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} LayerMultiplexConstPtr a => LayerMultiplexValue a where
#else
instance LayerMultiplexConstPtr a => LayerMultiplexValue a where
#endif
  withLayerMultiplexPtr = HoppyP.flip ($) . toLayerMultiplexConst

class (LayerConstPtr this) => LayerMultiplexConstPtr this where
  toLayerMultiplexConst :: this -> LayerMultiplexConst

class (LayerMultiplexConstPtr this, LayerPtr this) => LayerMultiplexPtr this where
  toLayerMultiplex :: this -> LayerMultiplex

layerMultiplex_addLayer :: (LayerMultiplexPtr arg'1, LayerPtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO ()
layerMultiplex_addLayer arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerMultiplex arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  (layerMultiplex_addLayer' arg'1' arg'2')

layerMultiplex_switchTo :: (LayerMultiplexPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
layerMultiplex_switchTo arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerMultiplex arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (layerMultiplex_switchTo' arg'1' arg'2')

layerMultiplex_switchToAndReleaseMe :: (LayerMultiplexPtr arg'1) => arg'1 -> HoppyP.Int -> HoppyP.IO ()
layerMultiplex_switchToAndReleaseMe arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayerMultiplex arg'1) $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (layerMultiplex_switchToAndReleaseMe' arg'1' arg'2')

layerMultiplex_create ::   HoppyP.IO LayerMultiplex
layerMultiplex_create =
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_create')

layerMultiplex_createWithLayer :: (LayerPtr arg'1) => arg'1 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayer arg'1 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayer' arg'1')

layerMultiplex_createWithLayers2 :: (LayerPtr arg'1, LayerPtr arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers2 arg'1 arg'2 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers2' arg'1' arg'2')

layerMultiplex_createWithLayers3 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3) =>  arg'1 -> arg'2 -> arg'3 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers3 arg'1 arg'2 arg'3 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers3' arg'1' arg'2' arg'3')

layerMultiplex_createWithLayers4 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4) =>  arg'1 -> arg'2 -> arg'3 -> arg'4 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers4 arg'1 arg'2 arg'3 arg'4 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers4' arg'1' arg'2' arg'3' arg'4')

layerMultiplex_createWithLayers5 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5) =>  arg'1 ->    arg'2 -> arg'3 -> arg'4 -> arg'5 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers5 arg'1 arg'2 arg'3 arg'4 arg'5 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers5' arg'1' arg'2' arg'3' arg'4' arg'5')

layerMultiplex_createWithLayers6 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5, LayerPtr arg'6) =>  arg'1 ->    arg'2 ->      arg'3 -> arg'4 -> arg'5 -> arg'6 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers6 arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyFHR.withCppPtr (toLayer arg'6) $ \arg'6' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers6' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6')

layerMultiplex_createWithLayers7 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5, LayerPtr arg'6, LayerPtr arg'7) =>  arg'1 ->    arg'2 ->      arg'3 ->        arg'4 -> arg'5 -> arg'6 -> arg'7 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers7 arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyFHR.withCppPtr (toLayer arg'6) $ \arg'6' ->
  HoppyFHR.withCppPtr (toLayer arg'7) $ \arg'7' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers7' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7')

layerMultiplex_createWithLayers8 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5, LayerPtr arg'6, LayerPtr arg'7, LayerPtr arg'8) =>  arg'1 ->    arg'2 ->      arg'3 ->        arg'4 ->          arg'5 -> arg'6 -> arg'7 -> arg'8 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers8 arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 arg'8 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyFHR.withCppPtr (toLayer arg'6) $ \arg'6' ->
  HoppyFHR.withCppPtr (toLayer arg'7) $ \arg'7' ->
  HoppyFHR.withCppPtr (toLayer arg'8) $ \arg'8' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers8' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7' arg'8')

layerMultiplex_createWithLayers9 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5, LayerPtr arg'6, LayerPtr arg'7, LayerPtr arg'8, LayerPtr arg'9) =>  arg'1 ->    arg'2 ->      arg'3 ->        arg'4 ->          arg'5 ->            arg'6 -> arg'7 -> arg'8 -> arg'9 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers9 arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 arg'8 arg'9 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyFHR.withCppPtr (toLayer arg'6) $ \arg'6' ->
  HoppyFHR.withCppPtr (toLayer arg'7) $ \arg'7' ->
  HoppyFHR.withCppPtr (toLayer arg'8) $ \arg'8' ->
  HoppyFHR.withCppPtr (toLayer arg'9) $ \arg'9' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers9' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7' arg'8' arg'9')

layerMultiplex_createWithLayers10 :: (LayerPtr arg'1, LayerPtr arg'2, LayerPtr arg'3, LayerPtr arg'4, LayerPtr arg'5, LayerPtr arg'6, LayerPtr arg'7, LayerPtr arg'8, LayerPtr arg'9, LayerPtr arg'10) =>  arg'1 ->    arg'2 ->      arg'3 ->        arg'4 ->          arg'5 ->            arg'6 ->              arg'7 -> arg'8 -> arg'9 -> arg'10 -> HoppyP.IO LayerMultiplex
layerMultiplex_createWithLayers10 arg'1 arg'2 arg'3 arg'4 arg'5 arg'6 arg'7 arg'8 arg'9 arg'10 =
  HoppyFHR.withCppPtr (toLayer arg'1) $ \arg'1' ->
  HoppyFHR.withCppPtr (toLayer arg'2) $ \arg'2' ->
  HoppyFHR.withCppPtr (toLayer arg'3) $ \arg'3' ->
  HoppyFHR.withCppPtr (toLayer arg'4) $ \arg'4' ->
  HoppyFHR.withCppPtr (toLayer arg'5) $ \arg'5' ->
  HoppyFHR.withCppPtr (toLayer arg'6) $ \arg'6' ->
  HoppyFHR.withCppPtr (toLayer arg'7) $ \arg'7' ->
  HoppyFHR.withCppPtr (toLayer arg'8) $ \arg'8' ->
  HoppyFHR.withCppPtr (toLayer arg'9) $ \arg'9' ->
  HoppyFHR.withCppPtr (toLayer arg'10) $ \arg'10' ->
  HoppyP.fmap LayerMultiplex
  (layerMultiplex_createWithLayers10' arg'1' arg'2' arg'3' arg'4' arg'5' arg'6' arg'7' arg'8' arg'9' arg'10')

data LayerMultiplexConst =
    LayerMultiplexConst (HoppyF.Ptr LayerMultiplexConst)
  | LayerMultiplexConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerMultiplexConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerMultiplexConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerMultiplexConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerMultiplexToConst :: LayerMultiplex -> LayerMultiplexConst
castLayerMultiplexToConst (LayerMultiplex ptr') = LayerMultiplexConst $ HoppyF.castPtr ptr'
castLayerMultiplexToConst (LayerMultiplexGc fptr' ptr') = LayerMultiplexConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerMultiplexConst where
  nullptr = LayerMultiplexConst HoppyF.nullPtr
  
  withCppPtr (LayerMultiplexConst ptr') f' = f' ptr'
  withCppPtr (LayerMultiplexConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerMultiplexConst ptr') = ptr'
  toPtr (LayerMultiplexConstGc _ ptr') = ptr'
  
  touchCppPtr (LayerMultiplexConst _) = HoppyP.return ()
  touchCppPtr (LayerMultiplexConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerMultiplexConst where
  delete (LayerMultiplexConst ptr') = delete'LayerMultiplex ptr'
  delete (LayerMultiplexConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerMultiplexConst", " object."]
  
  toGc this'@(LayerMultiplexConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerMultiplexConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerMultiplex :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerMultiplexConstGc {}) = HoppyP.return this'

instance LayerMultiplexConstPtr LayerMultiplexConst where
  toLayerMultiplexConst = HoppyP.id

instance LayerConstPtr LayerMultiplexConst where
  toLayerConst (LayerMultiplexConst ptr') = LayerConst $ castLayerMultiplexToLayer ptr'
  toLayerConst (LayerMultiplexConstGc fptr' ptr') = LayerConstGc fptr' $ castLayerMultiplexToLayer ptr'

instance M3.NodeConstPtr LayerMultiplexConst where
  toNodeConst (LayerMultiplexConst ptr') = M3.NodeConst $ castLayerMultiplexToNode ptr'
  toNodeConst (LayerMultiplexConstGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerMultiplexToNode ptr'

instance M2.RefConstPtr LayerMultiplexConst where
  toRefConst (LayerMultiplexConst ptr') = M2.RefConst $ castLayerMultiplexToRef ptr'
  toRefConst (LayerMultiplexConstGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerMultiplexToRef ptr'

data LayerMultiplex =
    LayerMultiplex (HoppyF.Ptr LayerMultiplex)
  | LayerMultiplexGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr LayerMultiplex)
  deriving (HoppyP.Show)

instance HoppyP.Eq LayerMultiplex where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord LayerMultiplex where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castLayerMultiplexToNonconst :: LayerMultiplexConst -> LayerMultiplex
castLayerMultiplexToNonconst (LayerMultiplexConst ptr') = LayerMultiplex $ HoppyF.castPtr ptr'
castLayerMultiplexToNonconst (LayerMultiplexConstGc fptr' ptr') = LayerMultiplexGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr LayerMultiplex where
  nullptr = LayerMultiplex HoppyF.nullPtr
  
  withCppPtr (LayerMultiplex ptr') f' = f' ptr'
  withCppPtr (LayerMultiplexGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (LayerMultiplex ptr') = ptr'
  toPtr (LayerMultiplexGc _ ptr') = ptr'
  
  touchCppPtr (LayerMultiplex _) = HoppyP.return ()
  touchCppPtr (LayerMultiplexGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable LayerMultiplex where
  delete (LayerMultiplex ptr') = delete'LayerMultiplex $ (HoppyF.castPtr ptr' :: HoppyF.Ptr LayerMultiplexConst)
  delete (LayerMultiplexGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "LayerMultiplex", " object."]
  
  toGc this'@(LayerMultiplex ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip LayerMultiplexGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'LayerMultiplex :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(LayerMultiplexGc {}) = HoppyP.return this'

instance LayerMultiplexConstPtr LayerMultiplex where
  toLayerMultiplexConst (LayerMultiplex ptr') = LayerMultiplexConst $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toLayerMultiplexConst (LayerMultiplexGc fptr' ptr') = LayerMultiplexConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance LayerMultiplexPtr LayerMultiplex where
  toLayerMultiplex = HoppyP.id

instance LayerConstPtr LayerMultiplex where
  toLayerConst (LayerMultiplex ptr') = LayerConst $ castLayerMultiplexToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toLayerConst (LayerMultiplexGc fptr' ptr') = LayerConstGc fptr' $ castLayerMultiplexToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance LayerPtr LayerMultiplex where
  toLayer (LayerMultiplex ptr') = Layer $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerMultiplexToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toLayer (LayerMultiplexGc fptr' ptr') = LayerGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr LayerConst -> HoppyF.Ptr Layer) $ castLayerMultiplexToLayer $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance M3.NodeConstPtr LayerMultiplex where
  toNodeConst (LayerMultiplex ptr') = M3.NodeConst $ castLayerMultiplexToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toNodeConst (LayerMultiplexGc fptr' ptr') = M3.NodeConstGc fptr' $ castLayerMultiplexToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance M3.NodePtr LayerMultiplex where
  toNode (LayerMultiplex ptr') = M3.Node $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerMultiplexToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toNode (LayerMultiplexGc fptr' ptr') = M3.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M3.NodeConst -> HoppyF.Ptr M3.Node) $ castLayerMultiplexToNode $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance M2.RefConstPtr LayerMultiplex where
  toRefConst (LayerMultiplex ptr') = M2.RefConst $ castLayerMultiplexToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toRefConst (LayerMultiplexGc fptr' ptr') = M2.RefConstGc fptr' $ castLayerMultiplexToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

instance M2.RefPtr LayerMultiplex where
  toRef (LayerMultiplex ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerMultiplexToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'
  toRef (LayerMultiplexGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castLayerMultiplexToRef $ (HoppyF.castPtr :: HoppyF.Ptr LayerMultiplex -> HoppyF.Ptr LayerMultiplexConst) ptr'

class LayerMultiplexSuper a where
  downToLayerMultiplex :: a -> LayerMultiplex

instance LayerMultiplexSuper Layer where
  downToLayerMultiplex = castLayerMultiplexToNonconst . cast' . castLayerToConst
    where
      cast' (LayerConst ptr') = LayerMultiplexConst $ castLayerToLayerMultiplex ptr'
      cast' (LayerConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castLayerToLayerMultiplex ptr'
instance LayerMultiplexSuper M3.Node where
  downToLayerMultiplex = castLayerMultiplexToNonconst . cast' . M3.castNodeToConst
    where
      cast' (M3.NodeConst ptr') = LayerMultiplexConst $ castNodeToLayerMultiplex ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castNodeToLayerMultiplex ptr'
instance LayerMultiplexSuper M2.Ref where
  downToLayerMultiplex = castLayerMultiplexToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = LayerMultiplexConst $ castRefToLayerMultiplex ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castRefToLayerMultiplex ptr'

class LayerMultiplexSuperConst a where
  downToLayerMultiplexConst :: a -> LayerMultiplexConst

instance LayerMultiplexSuperConst LayerConst where
  downToLayerMultiplexConst = cast'
    where
      cast' (LayerConst ptr') = LayerMultiplexConst $ castLayerToLayerMultiplex ptr'
      cast' (LayerConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castLayerToLayerMultiplex ptr'
instance LayerMultiplexSuperConst M3.NodeConst where
  downToLayerMultiplexConst = cast'
    where
      cast' (M3.NodeConst ptr') = LayerMultiplexConst $ castNodeToLayerMultiplex ptr'
      cast' (M3.NodeConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castNodeToLayerMultiplex ptr'
instance LayerMultiplexSuperConst M2.RefConst where
  downToLayerMultiplexConst = cast'
    where
      cast' (M2.RefConst ptr') = LayerMultiplexConst $ castRefToLayerMultiplex ptr'
      cast' (M2.RefConstGc fptr' ptr') = LayerMultiplexConstGc fptr' $ castRefToLayerMultiplex ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr LayerMultiplex)) LayerMultiplex where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr LayerMultiplex)) LayerMultiplex where
  decode = HoppyP.fmap LayerMultiplex . HoppyF.peek