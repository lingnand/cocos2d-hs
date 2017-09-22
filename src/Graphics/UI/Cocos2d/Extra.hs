{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- | Extra data types (mostly wrappers around existing types)
module Graphics.UI.Cocos2d.Extra
  (
    Size(..)
  , size_width
  , size_height

  , Rect(..)
  , rect_origin
  , rect_size
  ) where

import Linear.V2
import Diagrams.Coordinates
import Data.Ix
import Control.Monad.Zip
import Control.Lens

newtype Size a = S (V2 a)
  deriving
    ( Functor, Applicative, Monad, Foldable
    , Eq, Ord, MonadZip
    , Num, Ix, Bounded
    , Read, Show )

size_width :: Lens' (Size a) a
size_width = lens (\(S (V2 x _)) -> x) (\(S (V2 _ y)) x' -> S $ V2 x' y)

size_height :: Lens' (Size a) a
size_height = lens (\(S (V2 _ y)) -> y) (\(S (V2 x _)) y' -> S $ V2 x y')

instance Coordinates (Size a) where
  type FinalCoord (Size a) = a
  type PrevDim (Size a) = a
  type Decomposition (Size a) = a :& a

  x ^& y = S (V2 x y)
  coords (S (V2 x y)) = x :& y

data Rect a = Rect { _rect_origin :: V2 a, _rect_size :: Size a }
  deriving (Show, Read, Eq, Ord, Functor)

rect_origin :: forall a_afbx. Lens' (Rect a_afbx) (V2 a_afbx)
rect_origin f_ajE0 (Rect x1_ajE1 x2_ajE2)
  = fmap (\ y1_ajE3 -> Rect y1_ajE3 x2_ajE2) (f_ajE0 x1_ajE1)
{-# INLINE rect_origin #-}

rect_size :: forall a_afbx. Lens' (Rect a_afbx) (Size a_afbx)
rect_size f_ajE4 (Rect x1_ajE5 x2_ajE6)
  = fmap (\ y1_ajE7 -> Rect x1_ajE5 y1_ajE7) (f_ajE4 x2_ajE6)
{-# INLINE rect_size #-}
