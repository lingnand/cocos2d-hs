{-# LANGUAGE CPP, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, ScopedTypeVariables, TypeSynonymInstances, UndecidableInstances #-}
#if !MIN_VERSION_base(4,8,0)
{-# LANGUAGE OverlappingInstances #-}
#endif

---------- GENERATED FILE, EDITS WILL BE LOST ----------

module Graphics.UI.Cocos2d.Utils (
  debug,
  ) where

import qualified Foreign as HoppyF
import qualified Foreign.C as HoppyFC
import qualified Prelude as HoppyP

foreign import ccall "genpop__debug" debug' ::  HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO ()

debug ::  HoppyF.Ptr HoppyFC.CChar -> HoppyP.IO ()
debug arg'1 =
  let arg'1' = arg'1 in
  (debug' arg'1')