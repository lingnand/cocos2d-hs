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

    , Outline(Outline)
    , outlineColor
    , outlineSize
    , Shadow(Shadow)
    , shadowColor
    , shadowOffset
    , shadowBlur
    , Glow(Glow)
    , glowColor
    )
  where

import Data.Default
import Diagrams (Point(..), P2, V2(..), V3(..))
import Control.Lens
import Data.Colour
import Data.Colour.Names

import Foreign.Hoppy.Runtime (Decodable(..))
import Graphics.UI.Cocos2d.Event

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

-- Label
data Outline = Outline
    { _outlineColor :: AlphaColour Float
    , _outlineSize  :: Int
    } deriving (Show, Eq)
makeLenses ''Outline

instance Default Outline where
  def = Outline
      { _outlineColor = opaque white
      , _outlineSize  = 0
      }

data Shadow = Shadow
    { _shadowColor  :: AlphaColour Float
    , _shadowOffset :: V2 Float
    , _shadowBlur   :: Int
    } deriving (Show, Eq)
makeLenses ''Shadow

instance Default Shadow where
    def = Shadow
        { _shadowColor  = white `withOpacity` 0.5
        , _shadowOffset = 0
        , _shadowBlur   = 0
        }

data Glow = Glow
    { _glowColor  :: AlphaColour Float
    } deriving (Show, Eq)
makeLenses ''Glow

instance Default Glow where
    def = Glow
        { _glowColor = white `withOpacity` 0.5
        }
