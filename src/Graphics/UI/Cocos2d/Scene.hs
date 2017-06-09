{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Scene (
  castSceneToNode,
  castNodeToScene,
  castSceneToRef,
  castRefToScene,
  SceneValue (..),
  SceneConstPtr (..),
  ScenePtr (..),
  scene_create,
  scene_createWithSize,
  SceneConst (..),
  castSceneToConst,
  Scene (..),
  castSceneToNonconst,
  SceneSuper (..),
  SceneSuperConst (..),
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import Prelude (($), (.), (==))
import qualified Prelude as HoppyP

foreign import ccall "genpop__Scene_create" scene_create' ::  HoppyP.IO (HoppyF.Ptr Scene)
foreign import ccall "genpop__Scene_createWithSize" scene_createWithSize' ::  HoppyF.Ptr M2.SizeConst -> HoppyP.IO (HoppyF.Ptr Scene)
foreign import ccall "gencast__Scene__Node" castSceneToNode :: HoppyF.Ptr SceneConst -> HoppyF.Ptr M5.NodeConst
foreign import ccall "gencast__Node__Scene" castNodeToScene :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr SceneConst
foreign import ccall "gencast__Scene__Ref" castSceneToRef :: HoppyF.Ptr SceneConst -> HoppyF.Ptr M2.RefConst
foreign import ccall "gencast__Ref__Scene" castRefToScene :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr SceneConst
foreign import ccall "gendel__Scene" delete'Scene :: HoppyF.Ptr SceneConst -> HoppyP.IO ()
foreign import ccall "&gendel__Scene" deletePtr'Scene :: HoppyF.FunPtr (HoppyF.Ptr SceneConst -> HoppyP.IO ())

class SceneValue a where
  withScenePtr :: a -> (SceneConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} SceneConstPtr a => SceneValue a where
#else
instance SceneConstPtr a => SceneValue a where
#endif
  withScenePtr = HoppyP.flip ($) . toSceneConst

class (M5.NodeConstPtr this) => SceneConstPtr this where
  toSceneConst :: this -> SceneConst

class (SceneConstPtr this, M5.NodePtr this) => ScenePtr this where
  toScene :: this -> Scene

scene_create ::  HoppyP.IO Scene
scene_create =
  HoppyP.fmap Scene
  (scene_create')

scene_createWithSize :: (M2.SizeValue arg'1) => arg'1 -> HoppyP.IO Scene
scene_createWithSize arg'1 =
  M2.withSizePtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap Scene
  (scene_createWithSize' arg'1')

data SceneConst =
    SceneConst (HoppyF.Ptr SceneConst)
  | SceneConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr SceneConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq SceneConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord SceneConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSceneToConst :: Scene -> SceneConst
castSceneToConst (Scene ptr') = SceneConst $ HoppyF.castPtr ptr'
castSceneToConst (SceneGc fptr' ptr') = SceneConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr SceneConst where
  nullptr = SceneConst HoppyF.nullPtr
  
  withCppPtr (SceneConst ptr') f' = f' ptr'
  withCppPtr (SceneConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (SceneConst ptr') = ptr'
  toPtr (SceneConstGc _ ptr') = ptr'
  
  touchCppPtr (SceneConst _) = HoppyP.return ()
  touchCppPtr (SceneConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable SceneConst where
  delete (SceneConst ptr') = delete'Scene ptr'
  delete (SceneConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "SceneConst", " object."]
  
  toGc this'@(SceneConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SceneConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Scene :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SceneConstGc {}) = HoppyP.return this'

instance SceneConstPtr SceneConst where
  toSceneConst = HoppyP.id

instance M5.NodeConstPtr SceneConst where
  toNodeConst (SceneConst ptr') = M5.NodeConst $ castSceneToNode ptr'
  toNodeConst (SceneConstGc fptr' ptr') = M5.NodeConstGc fptr' $ castSceneToNode ptr'

instance M2.RefConstPtr SceneConst where
  toRefConst (SceneConst ptr') = M2.RefConst $ castSceneToRef ptr'
  toRefConst (SceneConstGc fptr' ptr') = M2.RefConstGc fptr' $ castSceneToRef ptr'

data Scene =
    Scene (HoppyF.Ptr Scene)
  | SceneGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr Scene)
  deriving (HoppyP.Show)

instance HoppyP.Eq Scene where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord Scene where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castSceneToNonconst :: SceneConst -> Scene
castSceneToNonconst (SceneConst ptr') = Scene $ HoppyF.castPtr ptr'
castSceneToNonconst (SceneConstGc fptr' ptr') = SceneGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr Scene where
  nullptr = Scene HoppyF.nullPtr
  
  withCppPtr (Scene ptr') f' = f' ptr'
  withCppPtr (SceneGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (Scene ptr') = ptr'
  toPtr (SceneGc _ ptr') = ptr'
  
  touchCppPtr (Scene _) = HoppyP.return ()
  touchCppPtr (SceneGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable Scene where
  delete (Scene ptr') = delete'Scene $ (HoppyF.castPtr ptr' :: HoppyF.Ptr SceneConst)
  delete (SceneGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "Scene", " object."]
  
  toGc this'@(Scene ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip SceneGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'Scene :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(SceneGc {}) = HoppyP.return this'

instance SceneConstPtr Scene where
  toSceneConst (Scene ptr') = SceneConst $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'
  toSceneConst (SceneGc fptr' ptr') = SceneConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'

instance ScenePtr Scene where
  toScene = HoppyP.id

instance M5.NodeConstPtr Scene where
  toNodeConst (Scene ptr') = M5.NodeConst $ castSceneToNode $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'
  toNodeConst (SceneGc fptr' ptr') = M5.NodeConstGc fptr' $ castSceneToNode $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'

instance M5.NodePtr Scene where
  toNode (Scene ptr') = M5.Node $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castSceneToNode $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'
  toNode (SceneGc fptr' ptr') = M5.NodeGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M5.NodeConst -> HoppyF.Ptr M5.Node) $ castSceneToNode $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'

instance M2.RefConstPtr Scene where
  toRefConst (Scene ptr') = M2.RefConst $ castSceneToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'
  toRefConst (SceneGc fptr' ptr') = M2.RefConstGc fptr' $ castSceneToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'

instance M2.RefPtr Scene where
  toRef (Scene ptr') = M2.Ref $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSceneToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'
  toRef (SceneGc fptr' ptr') = M2.RefGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr M2.RefConst -> HoppyF.Ptr M2.Ref) $ castSceneToRef $ (HoppyF.castPtr :: HoppyF.Ptr Scene -> HoppyF.Ptr SceneConst) ptr'

class SceneSuper a where
  downToScene :: a -> Scene

instance SceneSuper M5.Node where
  downToScene = castSceneToNonconst . cast' . M5.castNodeToConst
    where
      cast' (M5.NodeConst ptr') = SceneConst $ castNodeToScene ptr'
      cast' (M5.NodeConstGc fptr' ptr') = SceneConstGc fptr' $ castNodeToScene ptr'
instance SceneSuper M2.Ref where
  downToScene = castSceneToNonconst . cast' . M2.castRefToConst
    where
      cast' (M2.RefConst ptr') = SceneConst $ castRefToScene ptr'
      cast' (M2.RefConstGc fptr' ptr') = SceneConstGc fptr' $ castRefToScene ptr'

class SceneSuperConst a where
  downToSceneConst :: a -> SceneConst

instance SceneSuperConst M5.NodeConst where
  downToSceneConst = cast'
    where
      cast' (M5.NodeConst ptr') = SceneConst $ castNodeToScene ptr'
      cast' (M5.NodeConstGc fptr' ptr') = SceneConstGc fptr' $ castNodeToScene ptr'
instance SceneSuperConst M2.RefConst where
  downToSceneConst = cast'
    where
      cast' (M2.RefConst ptr') = SceneConst $ castRefToScene ptr'
      cast' (M2.RefConstGc fptr' ptr') = SceneConstGc fptr' $ castRefToScene ptr'

instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr Scene)) Scene where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr Scene)) Scene where
  decode = HoppyP.fmap Scene . HoppyF.peek