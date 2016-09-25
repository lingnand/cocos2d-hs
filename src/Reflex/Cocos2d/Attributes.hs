{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE MultiParamTypeClasses #-}
-- | Concepts largely taken from Graphics.UI.WX.Attributes
module Reflex.Cocos2d.Attributes
  (
    Attrib'(..)
  , Attrib
  , SetOnlyAttrib'(..)
  , SetOnlyAttrib
  , Prop(..)
  , get
  , set
  , hoistA
  , dyn
  , dyn'
  , uDyn
  , uDyn'
  , evt
  , divide
  , divided
  , choose
  , chosen
  -- attrs --
  , HasPosition(..)
  , HasRotation(..)
  , Transform(Transform)
  , HasPos(..)
  , HasRot(..)
  , transform
  ) where

import Data.Functor.Contravariant
import Diagrams (Point(..), V2(..), P2, (^&), _x, _y, Direction, V2)
import Control.Lens hiding (set, chosen, transform)
import Control.Monad
import Control.Monad.IO.Class
import Reflex.Host.Class
import Reflex
import Reflex.Cocos2d.Class

infixr 0 :=

data Prop w m = forall a b c. IsSettable w m a (c w m b a) => (c w m b a) := a -- ^ Assign a value to an attribute

class IsSettable w m a attr | attr -> w m a where
  setter :: attr -> w -> a -> m ()

class IsGettable w m a attr | attr -> w m a where
  getter :: attr -> w -> m a

-- | A datatype that supports getter and setter
data Attrib' w m b a = Attrib' (w -> m b) -- ^ Getter
                               (w -> a -> m ()) -- ^ Setter

type Attrib w m a = Attrib' w m a a

instance IsSettable w m a (Attrib' w m b a) where
    setter (Attrib' _ s) = s

instance IsGettable w m b (Attrib' w m b a) where
    getter (Attrib' g _) = g

instance Contravariant (Attrib' w m b) where
    contramap f (Attrib' g s) = Attrib' g s'
      where s' w = s w . f

data SetOnlyAttrib' w m b a = SetOnlyAttrib' (w -> a -> m ())

type SetOnlyAttrib w m a = forall b. SetOnlyAttrib' w m b a

instance IsSettable w m a (SetOnlyAttrib' w m b a) where
    setter (SetOnlyAttrib' s) = s

instance Contravariant (SetOnlyAttrib' w m b) where
    contramap f s = SetOnlyAttrib' $ \w -> setter s w . f

get :: IsGettable n m a attr => n -> attr -> m a
get = flip getter

set :: Monad m => n -> [Prop n m] -> m ()
set _ [] = return ()
set n ((s := a):ps) = setter s n a >> set n ps

hoistA :: (forall x. f x -> g x)  -> Attrib' w f b a -> Attrib' w g b a
hoistA trans (Attrib' getter setter) = Attrib' (trans . getter) (\w -> trans . setter w)

---- combinators ----

-- | Transforms a IsSettable attribute to a SetOnlyAttribute. This uses lazy read on the incoming Dynamic
dyn :: (NodeGraph t m, IsSettable w (HostFrame t) a (attr w (HostFrame t) b a))
    => attr w (HostFrame t) b a -> SetOnlyAttrib w m (Dynamic t a)
dyn attr = SetOnlyAttrib' $ \w d -> do evt <- askPostBuildEvent
                                       runEvent_ $ (setter attr w =<< sample (current d)) <$ evt
                                       es w (updated d)
  where SetOnlyAttrib' es = evt attr

-- | Similar to `dyn`, but applies strict read
-- XXX: nasty constraints to allow 'c' to be instantiated as different types within the function
dyn' :: ( NodeGraph t m
        , IsSettable w (HostFrame t) a (attr w (HostFrame t) b a)
        , IsSettable w m a (attr w m b a) )
     => (forall m'. (MonadIO m', IsSettable w m' a (attr w m' b a)) => attr w m' b a)
     -> SetOnlyAttrib w m (Dynamic t a)
dyn' attr = SetOnlyAttrib' $ \w d -> do setter attr w =<< sample (current d)
                                        es w (updated d)
  where SetOnlyAttrib' es = evt attr

uDyn :: (NodeGraph t m, IsSettable w (HostFrame t) a (attr w (HostFrame t) b a), Eq a)
     => attr w (HostFrame t) b a -> SetOnlyAttrib w m (UniqDynamic t a)
uDyn = (fromUniqDynamic >$<) . dyn

uDyn' :: ( NodeGraph t m
         , IsSettable w (HostFrame t) a (attr w (HostFrame t) b a)
         , IsSettable w m a (attr w m b a)
         , Eq a )
      => (forall m'. (MonadIO m', IsSettable w m' a (attr w m' b a)) => attr w m' b a)
      -> SetOnlyAttrib w m (UniqDynamic t a)
uDyn' attr = fromUniqDynamic >$< dyn' attr

evt :: (NodeGraph t m, IsSettable w (HostFrame t) a (attr w (HostFrame t) b a))
    => attr w (HostFrame t) b a -> SetOnlyAttrib w m (Event t a)
evt attr = SetOnlyAttrib' $ \w e -> onEvent_ e $ setter attr w

-- degenerative combinators following Contravariant.Divisible
divide :: (Monad m, IsSettable w m b attrb, IsSettable w m c attrc)
       => (a -> (b, c)) -> attrb -> attrc -> SetOnlyAttrib w m a
divide f attrb attrc = SetOnlyAttrib' $ \w a -> let (b, c) = f a in do setter attrb w b
                                                                       setter attrc w c

divided :: (Monad m, IsSettable w m b attrb, IsSettable w m c attrc)
        => attrb -> attrc -> SetOnlyAttrib w m (b, c)
divided = divide id

choose :: (IsSettable w m b attrb, IsSettable w m c attrc)
       => (a -> Either b c) -> attrb -> attrc -> SetOnlyAttrib w m a
choose f attrb attrc = SetOnlyAttrib' $ \w a -> case f a of
                                                  Left b -> setter attrb w b
                                                  Right c -> setter attrc w c

chosen :: (IsSettable w m b attrb, IsSettable w m c attrc)
       => attrb -> attrc -> SetOnlyAttrib w m (Either b c)
chosen = choose id

---- General Attribs ----

class Monad m => HasPosition n m where
  position :: Attrib n m (P2 Float)
  position = Attrib' (\n -> (^&) <$> gx n <*> gy n)
                     (\n p -> let P (V2 x y) = p in sx n x >> sy n y)
    where Attrib' gx sx = positionX
          Attrib' gy sy = positionY
  positionX :: Attrib n m Float
  positionX = Attrib' getter' setter'
    where Attrib' getter setter = position
          getter' n = (^._x) <$> getter n
          setter' n x = getter n >>= setter n . (_x .~ x)
  positionY :: Attrib n m Float
  positionY = Attrib' getter' setter'
    where Attrib' getter setter = position
          getter' n = (^._y) <$> getter n
          setter' n y = getter n >>= setter n . (_y .~ y)

class HasRotation n m where
  rotation :: Attrib n m (Direction V2 Float)

-- Transform is the combination of position and rotation
data Transform = Transform
               { _transformPos :: P2 Float
               , _transformRot :: Direction V2 Float
               } deriving (Show, Read, Eq, Ord)
makeFields ''Transform

transform :: (HasPosition n m, HasRotation n m) => Attrib n m Transform
transform = Attrib' (\n -> Transform <$> gp n <*> gr n)
                    (\n (Transform p r) -> sp n p >> sr n r)
  where Attrib' gp sp = position
        Attrib' gr sr = rotation