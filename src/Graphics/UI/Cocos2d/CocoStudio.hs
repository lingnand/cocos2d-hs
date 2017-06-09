{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.CocoStudio (
  CsLoaderValue (..),
  CsLoaderConstPtr (..),
  CsLoaderPtr (..),
  csLoader_createNode,
  csLoader_createNodeWithCallback,
  csLoader_createNodeOfVisibleSize,
  csLoader_createNodeOfVisibleSizeWithCallback,
  CsLoaderConst (..),
  castCsLoaderToConst,
  CsLoader (..),
  castCsLoaderToNonconst,
  CsLoaderSuper (..),
  CsLoaderSuperConst (..),
  nodeLoadCallback_newFunPtr,
  nodeLoadCallback_new,
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import qualified Graphics.UI.Cocos2d.Common as M2
import qualified Graphics.UI.Cocos2d.Node as M5
import qualified Graphics.UI.Cocos2d.Std as M1
import Prelude (($), (.), (==), (>>=))
import qualified Prelude as HoppyP

foreign import ccall "genpop__CsLoader_createNode" csLoader_createNode' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "genpop__CsLoader_createNodeWithCallback" csLoader_createNodeWithCallback' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "genpop__CsLoader_createNodeOfVisibleSize" csLoader_createNodeOfVisibleSize' ::  HoppyF.Ptr M1.StdStringConst -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "genpop__CsLoader_createNodeOfVisibleSizeWithCallback" csLoader_createNodeOfVisibleSizeWithCallback' ::  HoppyF.Ptr M1.StdStringConst -> HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.Ptr M5.Node)
foreign import ccall "gendel__CsLoader" delete'CsLoader :: HoppyF.Ptr CsLoaderConst -> HoppyP.IO ()
foreign import ccall "&gendel__CsLoader" deletePtr'CsLoader :: HoppyF.FunPtr (HoppyF.Ptr CsLoaderConst -> HoppyP.IO ())
foreign import ccall "wrapper" nodeLoadCallback_new'newFunPtr :: (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
foreign import ccall "genpop__NodeLoadCallback" nodeLoadCallback_new'newCallback :: HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()) -> HoppyF.FunPtr (HoppyF.FunPtr (HoppyP.IO ()) -> HoppyP.IO ()) -> HoppyP.Bool -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))

class CsLoaderValue a where
  withCsLoaderPtr :: a -> (CsLoaderConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} CsLoaderConstPtr a => CsLoaderValue a where
#else
instance CsLoaderConstPtr a => CsLoaderValue a where
#endif
  withCsLoaderPtr = HoppyP.flip ($) . toCsLoaderConst

class (HoppyFHR.CppPtr this) => CsLoaderConstPtr this where
  toCsLoaderConst :: this -> CsLoaderConst

class (CsLoaderConstPtr this) => CsLoaderPtr this where
  toCsLoader :: this -> CsLoader

csLoader_createNode :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO M5.Node
csLoader_createNode arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M5.Node
  (csLoader_createNode' arg'1')

csLoader_createNodeWithCallback :: (M1.StdStringValue arg'1) => arg'1 -> (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO M5.Node
csLoader_createNodeWithCallback arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  nodeLoadCallback_new arg'2 >>= \arg'2' ->
  HoppyP.fmap M5.Node
  (csLoader_createNodeWithCallback' arg'1' arg'2')

csLoader_createNodeOfVisibleSize :: (M1.StdStringValue arg'1) => arg'1 -> HoppyP.IO M5.Node
csLoader_createNodeOfVisibleSize arg'1 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap M5.Node
  (csLoader_createNodeOfVisibleSize' arg'1')

csLoader_createNodeOfVisibleSizeWithCallback :: (M1.StdStringValue arg'1) => arg'1 -> (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO M5.Node
csLoader_createNodeOfVisibleSizeWithCallback arg'1 arg'2 =
  M1.withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  nodeLoadCallback_new arg'2 >>= \arg'2' ->
  HoppyP.fmap M5.Node
  (csLoader_createNodeOfVisibleSizeWithCallback' arg'1' arg'2')

data CsLoaderConst =
    CsLoaderConst (HoppyF.Ptr CsLoaderConst)
  | CsLoaderConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr CsLoaderConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq CsLoaderConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord CsLoaderConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castCsLoaderToConst :: CsLoader -> CsLoaderConst
castCsLoaderToConst (CsLoader ptr') = CsLoaderConst $ HoppyF.castPtr ptr'
castCsLoaderToConst (CsLoaderGc fptr' ptr') = CsLoaderConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr CsLoaderConst where
  nullptr = CsLoaderConst HoppyF.nullPtr
  
  withCppPtr (CsLoaderConst ptr') f' = f' ptr'
  withCppPtr (CsLoaderConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (CsLoaderConst ptr') = ptr'
  toPtr (CsLoaderConstGc _ ptr') = ptr'
  
  touchCppPtr (CsLoaderConst _) = HoppyP.return ()
  touchCppPtr (CsLoaderConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable CsLoaderConst where
  delete (CsLoaderConst ptr') = delete'CsLoader ptr'
  delete (CsLoaderConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "CsLoaderConst", " object."]
  
  toGc this'@(CsLoaderConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip CsLoaderConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'CsLoader :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(CsLoaderConstGc {}) = HoppyP.return this'

instance CsLoaderConstPtr CsLoaderConst where
  toCsLoaderConst = HoppyP.id

data CsLoader =
    CsLoader (HoppyF.Ptr CsLoader)
  | CsLoaderGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr CsLoader)
  deriving (HoppyP.Show)

instance HoppyP.Eq CsLoader where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord CsLoader where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castCsLoaderToNonconst :: CsLoaderConst -> CsLoader
castCsLoaderToNonconst (CsLoaderConst ptr') = CsLoader $ HoppyF.castPtr ptr'
castCsLoaderToNonconst (CsLoaderConstGc fptr' ptr') = CsLoaderGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr CsLoader where
  nullptr = CsLoader HoppyF.nullPtr
  
  withCppPtr (CsLoader ptr') f' = f' ptr'
  withCppPtr (CsLoaderGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (CsLoader ptr') = ptr'
  toPtr (CsLoaderGc _ ptr') = ptr'
  
  touchCppPtr (CsLoader _) = HoppyP.return ()
  touchCppPtr (CsLoaderGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable CsLoader where
  delete (CsLoader ptr') = delete'CsLoader $ (HoppyF.castPtr ptr' :: HoppyF.Ptr CsLoaderConst)
  delete (CsLoaderGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "CsLoader", " object."]
  
  toGc this'@(CsLoader ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip CsLoaderGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'CsLoader :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(CsLoaderGc {}) = HoppyP.return this'

instance CsLoaderConstPtr CsLoader where
  toCsLoaderConst (CsLoader ptr') = CsLoaderConst $ (HoppyF.castPtr :: HoppyF.Ptr CsLoader -> HoppyF.Ptr CsLoaderConst) ptr'
  toCsLoaderConst (CsLoaderGc fptr' ptr') = CsLoaderConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr CsLoader -> HoppyF.Ptr CsLoaderConst) ptr'

instance CsLoaderPtr CsLoader where
  toCsLoader = HoppyP.id

class CsLoaderSuper a where
  downToCsLoader :: a -> CsLoader


class CsLoaderSuperConst a where
  downToCsLoaderConst :: a -> CsLoaderConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr CsLoader)) CsLoader where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr CsLoader)) CsLoader where
  decode = HoppyP.fmap CsLoader . HoppyF.peek

nodeLoadCallback_newFunPtr :: (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyF.FunPtr (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
nodeLoadCallback_newFunPtr f'hs = nodeLoadCallback_new'newFunPtr $ \arg'1 ->
  let arg'1' = M2.Ref arg'1 in
  (f'hs arg'1')

nodeLoadCallback_new :: (M2.Ref -> HoppyP.IO ()) -> HoppyP.IO (HoppyFHR.CCallback (HoppyF.Ptr M2.Ref -> HoppyP.IO ()))
nodeLoadCallback_new f'hs = do
  f'p <- nodeLoadCallback_newFunPtr f'hs
  nodeLoadCallback_new'newCallback f'p HoppyFHR.freeHaskellFunPtrFunPtr HoppyP.False