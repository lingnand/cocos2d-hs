{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Std (
  StdStringValue (..),
  StdStringConstPtr (..),
  stdString_at,
  stdString_get,
  stdString_c_str,
  stdString_size,
  stdString_EQ,
  stdString_NE,
  stdString_LT,
  stdString_LE,
  stdString_GT,
  stdString_GE,
  StdStringPtr (..),
  stdString_ASSIGN,
  StdStringConst (..),
  castStdStringToConst,
  StdString (..),
  castStdStringToNonconst,
  stdString_new,
  stdString_newFromCString,
  stdString_newCopy,
  StdStringSuper (..),
  StdStringSuperConst (..),
  ) where

import Control.Monad ((<=<))
import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Foreign.Hoppy.Runtime as HoppyFHR
import Prelude (($), (.), (/=), (==), (>>))
import qualified Prelude as HoppyP

foreign import ccall "genpop__StdString_new" stdString_new' ::   HoppyP.IO (HoppyF.Ptr StdString)
foreign import ccall "genpop__StdString_newFromCString" stdString_newFromCString' ::   HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO (HoppyF.Ptr StdString)
foreign import ccall "genpop__StdString_newCopy" stdString_newCopy' ::   HoppyF.Ptr StdStringConst -> HoppyP.IO (HoppyF.Ptr StdString)
foreign import ccall "genpop__StdString_at" stdString_at' ::   HoppyF.Ptr StdStringConst ->    HoppyFC.CInt -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
foreign import ccall "genpop__StdString_get" stdString_get' ::   HoppyF.Ptr StdStringConst ->    HoppyFC.CInt -> HoppyP.IO HoppyFC.CChar
foreign import ccall "genpop__StdString_c_str" stdString_c_str' ::   HoppyF.Ptr StdStringConst -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
foreign import ccall "genpop__StdString_size" stdString_size' ::   HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFC.CSize
foreign import ccall "genpop__StdString_EQ" stdString_EQ' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_NE" stdString_NE' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_LT" stdString_LT' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_LE" stdString_LE' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_GT" stdString_GT' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_GE" stdString_GE' ::   HoppyF.Ptr StdStringConst ->    HoppyF.Ptr StdStringConst -> HoppyP.IO HoppyFHR.CBool
foreign import ccall "genpop__StdString_ASSIGN" stdString_ASSIGN' ::   HoppyF.Ptr StdString ->    HoppyF.Ptr StdStringConst -> HoppyP.IO (HoppyF.Ptr StdString)
foreign import ccall "gendel__StdString" delete'StdString :: HoppyF.Ptr StdStringConst -> HoppyP.IO ()
foreign import ccall "&gendel__StdString" deletePtr'StdString :: HoppyF.FunPtr (HoppyF.Ptr StdStringConst -> HoppyP.IO ())

class StdStringValue a where
  withStdStringPtr :: a -> (StdStringConst -> HoppyP.IO b) -> HoppyP.IO b

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPABLE #-} StdStringConstPtr a => StdStringValue a where
#else
instance StdStringConstPtr a => StdStringValue a where
#endif
  withStdStringPtr = HoppyP.flip ($) . toStdStringConst

#if MIN_VERSION_base(4,8,0)
instance {-# OVERLAPPING #-} StdStringValue (HoppyP.String) where
#else
instance StdStringValue (HoppyP.String) where
#endif
  withStdStringPtr = HoppyFHR.withCppObj

class (HoppyFHR.CppPtr this) => StdStringConstPtr this where
  toStdStringConst :: this -> StdStringConst

stdString_at :: (StdStringValue arg'1) =>  arg'1 -> HoppyP.Int -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
stdString_at arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (stdString_at' arg'1' arg'2')

stdString_get :: (StdStringValue arg'1) =>  arg'1 -> HoppyP.Int -> HoppyP.IO HoppyFC.CChar
stdString_get arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  let arg'2' = HoppyFHR.coerceIntegral arg'2 in
  (stdString_get' arg'1' arg'2')

stdString_c_str :: (StdStringValue arg'1) =>  arg'1 -> HoppyP.IO (HoppyF.Ptr HoppyFC.CChar)
stdString_c_str arg'1 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (stdString_c_str' arg'1')

stdString_size :: (StdStringValue arg'1) => arg'1 -> HoppyP.IO HoppyFC.CSize
stdString_size arg'1 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  (stdString_size' arg'1')

stdString_EQ :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_EQ arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_EQ' arg'1' arg'2')

stdString_NE :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_NE arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_NE' arg'1' arg'2')

stdString_LT :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_LT arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_LT' arg'1' arg'2')

stdString_LE :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_LE arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_LE' arg'1' arg'2')

stdString_GT :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_GT arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_GT' arg'1' arg'2')

stdString_GE :: (StdStringValue arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO HoppyP.Bool
stdString_GE arg'1 arg'2 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap (/= 0)
  (stdString_GE' arg'1' arg'2')

class (StdStringConstPtr this) => StdStringPtr this where
  toStdString :: this -> StdString

stdString_ASSIGN :: (StdStringPtr arg'1, StdStringValue arg'2) =>  arg'1 -> arg'2 -> HoppyP.IO StdString
stdString_ASSIGN arg'1 arg'2 =
  HoppyFHR.withCppPtr (toStdString arg'1) $ \arg'1' ->
  withStdStringPtr arg'2 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'2' ->
  HoppyP.fmap StdString
  (stdString_ASSIGN' arg'1' arg'2')

data StdStringConst =
    StdStringConst (HoppyF.Ptr StdStringConst)
  | StdStringConstGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StdStringConst)
  deriving (HoppyP.Show)

instance HoppyP.Eq StdStringConst where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StdStringConst where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStdStringToConst :: StdString -> StdStringConst
castStdStringToConst (StdString ptr') = StdStringConst $ HoppyF.castPtr ptr'
castStdStringToConst (StdStringGc fptr' ptr') = StdStringConstGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StdStringConst where
  nullptr = StdStringConst HoppyF.nullPtr
  
  withCppPtr (StdStringConst ptr') f' = f' ptr'
  withCppPtr (StdStringConstGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StdStringConst ptr') = ptr'
  toPtr (StdStringConstGc _ ptr') = ptr'
  
  touchCppPtr (StdStringConst _) = HoppyP.return ()
  touchCppPtr (StdStringConstGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StdStringConst where
  delete (StdStringConst ptr') = delete'StdString ptr'
  delete (StdStringConstGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StdStringConst", " object."]
  
  toGc this'@(StdStringConst ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StdStringConstGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StdString :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StdStringConstGc {}) = HoppyP.return this'

instance StdStringConstPtr StdStringConst where
  toStdStringConst = HoppyP.id

data StdString =
    StdString (HoppyF.Ptr StdString)
  | StdStringGc (HoppyF.ForeignPtr ()) (HoppyF.Ptr StdString)
  deriving (HoppyP.Show)

instance HoppyP.Eq StdString where
  x == y = HoppyFHR.toPtr x == HoppyFHR.toPtr y

instance HoppyP.Ord StdString where
  compare x y = HoppyP.compare (HoppyFHR.toPtr x) (HoppyFHR.toPtr y)

castStdStringToNonconst :: StdStringConst -> StdString
castStdStringToNonconst (StdStringConst ptr') = StdString $ HoppyF.castPtr ptr'
castStdStringToNonconst (StdStringConstGc fptr' ptr') = StdStringGc fptr' $ HoppyF.castPtr ptr'

instance HoppyFHR.CppPtr StdString where
  nullptr = StdString HoppyF.nullPtr
  
  withCppPtr (StdString ptr') f' = f' ptr'
  withCppPtr (StdStringGc fptr' ptr') f' = HoppyF.withForeignPtr fptr' $ \_ -> f' ptr'
  
  toPtr (StdString ptr') = ptr'
  toPtr (StdStringGc _ ptr') = ptr'
  
  touchCppPtr (StdString _) = HoppyP.return ()
  touchCppPtr (StdStringGc fptr' _) = HoppyF.touchForeignPtr fptr'

instance HoppyFHR.Deletable StdString where
  delete (StdString ptr') = delete'StdString $ (HoppyF.castPtr ptr' :: HoppyF.Ptr StdStringConst)
  delete (StdStringGc _ _) = HoppyP.fail $ HoppyP.concat ["Deletable.delete: Asked to delete a GC-managed ", "StdString", " object."]
  
  toGc this'@(StdString ptr') = if ptr' == HoppyF.nullPtr then HoppyP.return this' else HoppyP.fmap (HoppyP.flip StdStringGc ptr') $ HoppyF.newForeignPtr (HoppyF.castFunPtr deletePtr'StdString :: HoppyF.FunPtr (HoppyF.Ptr () -> HoppyP.IO ())) (HoppyF.castPtr ptr' :: HoppyF.Ptr ())
  toGc this'@(StdStringGc {}) = HoppyP.return this'

instance StdStringConstPtr StdString where
  toStdStringConst (StdString ptr') = StdStringConst $ (HoppyF.castPtr :: HoppyF.Ptr StdString -> HoppyF.Ptr StdStringConst) ptr'
  toStdStringConst (StdStringGc fptr' ptr') = StdStringConstGc fptr' $ (HoppyF.castPtr :: HoppyF.Ptr StdString -> HoppyF.Ptr StdStringConst) ptr'

instance StdStringPtr StdString where
  toStdString = HoppyP.id

stdString_new ::   HoppyP.IO StdString
stdString_new =
  HoppyP.fmap StdString
  (stdString_new')

stdString_newFromCString ::   HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO StdString
stdString_newFromCString arg'1 =
  let arg'1' = arg'1 in
  HoppyP.fmap StdString
  (stdString_newFromCString' arg'1')

stdString_newCopy :: (StdStringValue arg'1) => arg'1 -> HoppyP.IO StdString
stdString_newCopy arg'1 =
  withStdStringPtr arg'1 $ HoppyP.flip HoppyFHR.withCppPtr $ \arg'1' ->
  HoppyP.fmap StdString
  (stdString_newCopy' arg'1')

class StdStringSuper a where
  downToStdString :: a -> StdString


class StdStringSuperConst a where
  downToStdStringConst :: a -> StdStringConst


instance HoppyFHR.Assignable (HoppyF.Ptr (HoppyF.Ptr StdString)) StdString where
  assign ptr' value' = HoppyF.poke ptr' $ HoppyFHR.toPtr value'

instance StdStringValue a => HoppyFHR.Assignable StdString a where
  assign x' y' = stdString_ASSIGN x' y' >> HoppyP.return ()

instance HoppyFHR.Decodable (HoppyF.Ptr (HoppyF.Ptr StdString)) StdString where
  decode = HoppyP.fmap StdString . HoppyF.peek

instance HoppyFHR.Encodable StdString (HoppyP.String) where
  encode =
    HoppyP.flip HoppyFC.withCString stdString_newFromCString

instance HoppyFHR.Encodable StdStringConst (HoppyP.String) where
  encode = HoppyP.fmap (toStdStringConst) . HoppyFHR.encodeAs (HoppyP.undefined :: StdString)

instance HoppyFHR.Decodable StdString (HoppyP.String) where
  decode = HoppyFHR.decode . toStdStringConst

instance HoppyFHR.Decodable StdStringConst (HoppyP.String) where
  decode =
    HoppyFC.peekCString <=< stdString_c_str