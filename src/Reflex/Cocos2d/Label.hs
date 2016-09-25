{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE LambdaCase #-}
module Reflex.Cocos2d.Label
    (
      label
    , label_
    -- attrs --
    , text
    , horizontalAlign
    , verticalAlign
    , textColor
    , lineBreakWithoutSpace
    , maxLineWidth
    , boundingSize
    , boundingWidth
    , boundingHeight
    , outline
    , shadow
    , glow
    , clipMargin

    , systemFontName
    , systemFontSize
    -- re-export --
    , Label
    , LabelPtr
    , TextHAlignment(..)
    , TextVAlignment(..)
    ) where

import Diagrams (V2(..))
import Data.Colour
import Control.Monad
import Control.Monad.IO.Class

import Foreign.Hoppy.Runtime (Decodable(..))
import Graphics.UI.Cocos2d.Node
import Graphics.UI.Cocos2d.Label

import Reflex.Cocos2d.Class
import Reflex.Cocos2d.Attributes
import Reflex.Cocos2d.Types

label :: NodeGraph t m => [Prop Label m] -> m Label
label props = do
    l <- liftIO label_create
    set l props
    askParent >>= liftIO . flip node_addChild l
    return l

label_ :: NodeGraph t m => [Prop Label m] -> m ()
label_ = void . label

---- Attrs ----
-- General Attributes
text :: (MonadIO m, LabelPtr l) => Attrib l m String
text = hoistA liftIO $ Attrib' (decode <=< label_getString) label_setString

horizontalAlign :: (MonadIO m, LabelPtr l) => Attrib l m TextHAlignment
horizontalAlign = hoistA liftIO $ Attrib' label_getHorizontalAlignment label_setHorizontalAlignment

verticalAlign :: (MonadIO m, LabelPtr l) => Attrib l m TextVAlignment
verticalAlign = hoistA liftIO $ Attrib' label_getVerticalAlignment label_setVerticalAlignment

textColor :: (MonadIO m, LabelPtr l) => Attrib l m (AlphaColour Float)
textColor = hoistA liftIO $ Attrib' (decode <=< label_getTextColor) label_setTextColor

lineBreakWithoutSpace :: (MonadIO m, LabelPtr l) => SetOnlyAttrib l m Bool
lineBreakWithoutSpace = SetOnlyAttrib' $ \l -> liftIO . label_setLineBreakWithoutSpace l

maxLineWidth :: (MonadIO m, LabelPtr l) => Attrib l m Float
maxLineWidth = hoistA liftIO $ Attrib' label_getMaxLineWidth label_setMaxLineWidth

-- | corresponding to setDimensions
boundingSize :: (MonadIO m, LabelPtr l) => Attrib l m (V2 Float)
boundingSize = hoistA liftIO $ Attrib' (decode <=< label_getDimensions) (\l (V2 w h) -> label_setDimensions l w h)

-- | corresponding to setWidth
boundingWidth :: (MonadIO m, LabelPtr l) => Attrib l m Float
boundingWidth = hoistA liftIO $ Attrib' label_getWidth label_setWidth

-- | corresponding to setHeight
boundingHeight :: (MonadIO m, LabelPtr l) => Attrib l m Float
boundingHeight = hoistA liftIO $ Attrib' label_getHeight label_setHeight

-- | Just Outline to turn on outline, Nothing to turn it off
outline :: (MonadIO m, LabelPtr l) => SetOnlyAttrib l m (Maybe Outline)
outline = SetOnlyAttrib' set
  where set l (Just (Outline sColor sSize)) = liftIO $ label_enableOutlineWithSize l sColor sSize
        set l _ = liftIO $ label_disableLabelEffect l LabelEffect_Outline

shadow :: (MonadIO m, LabelPtr l) => SetOnlyAttrib l m (Maybe Shadow)
shadow = SetOnlyAttrib' set
  where set l (Just (Shadow shColor shOffset shBlur)) = liftIO $ label_enableShadowWithOffset l shColor shOffset shBlur
        set l _ = liftIO $ label_disableLabelEffect l LabelEffect_Shadow

glow :: (MonadIO m, LabelPtr l) => SetOnlyAttrib l m (Maybe Glow)
glow = SetOnlyAttrib' set
  where set l (Just (Glow glColor)) = liftIO $ label_enableGlow l glColor
        set l _ = liftIO $ label_disableLabelEffect l LabelEffect_Glow

clipMargin :: (MonadIO m, LabelPtr l) => Attrib l m Bool
clipMargin = hoistA liftIO $ Attrib' label_isClipMarginEnabled label_setClipMarginEnabled

-- System font
systemFontName :: (MonadIO m, LabelPtr l) => Attrib l m String
systemFontName = hoistA liftIO $ Attrib' (decode <=< label_getSystemFontName) label_setSystemFontName

systemFontSize :: (MonadIO m, LabelPtr l) => Attrib l m Float
systemFontSize = hoistA liftIO $ Attrib' label_getSystemFontSize label_setSystemFontSize

-- TODO
-- lineHeight
-- lineSpacing
-- additionalKerning

