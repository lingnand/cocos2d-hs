{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
module Reflex.Cocos2d.Types
    (
      Mouse(Mouse)
    , mouseCursorLocation
    , mouseScroll
    , mouseButton
    , Touch(Touch)
    , touchLocation
    , Acceleration(Acceleration)
    , accelerationVector
    , accelerationTimestamp
    )
  where

import Diagrams (Point(..), P2, V2(..), V3(..))
import Data.Time.Clock
import Control.Lens

import Graphics.UI.Cocos2d.Event
import Foreign.Hoppy.Runtime (Decodable(..))

data Mouse = Mouse
    { _mouseCursorLocation :: P2 Float
    , _mouseScroll         :: V2 Float
    , _mouseButton         :: Int
    }
makeLenses ''Mouse

instance Decodable EventMouse Mouse where
  decode = decode . toEventMouseConst

instance Decodable EventMouseConst Mouse where
  decode em = Mouse <$> (P <$> eventMouse_getLocation em)
                    <*> (V2 <$> eventMouse_getScrollX em <*> eventMouse_getScrollY em)
                    <*> eventMouse_getMouseButton em

data Touch = Touch
    { _touchLocation :: P2 Float
    }
makeLenses ''Touch

instance Decodable EventTouch Touch where
  decode = decode . toEventTouchConst

instance Decodable EventTouchConst Touch where
  decode et = Touch . P <$> eventTouch_getLocation et

data Acceleration = Acceleration
    { _accelerationVector    :: V3 Double
    , _accelerationTimestamp :: Double
    }
makeLenses ''Acceleration

instance Decodable EventAcceleration Acceleration where
  decode = decode . toEventAccelerationConst

instance Decodable EventAccelerationConst Acceleration where
  decode ea = Acceleration <$> (V3 <$> eventAcceleration_x_get ea
                                   <*> eventAcceleration_y_get ea
                                   <*> eventAcceleration_z_get ea)
                           <*> eventAcceleration_timestamp_get ea

