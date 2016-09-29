{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
module Reflex.Cocos2d.Widget
    (
      WidgetTouchEvents(WidgetTouchEvents)
    , widgetTouchBegan
    , widgetTouchMoved
    , widgetTouchEnded
    , widgetTouchCancelled
    , getWidgetTouchEvents
    , getWidgetClicks
    , findButtonByName
    , findTextByName
    , findLayoutByName
    )
  where

import Data.Dependent.Sum ((==>))
import Control.Monad
import Control.Monad.IO.Class
import Control.Lens hiding (contains)

import Foreign.Hoppy.Runtime (Decodable(..))

import Graphics.UI.Cocos2d.Widget
import Graphics.UI.Cocos2d.Common

import Reflex
import Reflex.Host.Class
import Reflex.Cocos2d.Class
import Reflex.Cocos2d.Attributes
import Reflex.Cocos2d.Types


data WidgetTouchEvents t = WidgetTouchEvents
    { _widgetTouchBegan     :: Event t ()
    , _widgetTouchMoved     :: Event t ()
    , _widgetTouchEnded     :: Event t ()
    , _widgetTouchCancelled :: Event t ()
    }
makeLenses ''WidgetTouchEvents

getWidgetTouchEvents :: (NodeGraph t m, WidgetPtr w) => w -> m (WidgetTouchEvents t)
getWidgetTouchEvents w = do
    runWithActions <- askRunWithActions
    touchTypes <- newEventWithTrigger $ \et -> do
      widget_addTouchEventListener w $ \_ t -> runWithActions ([et ==> t], return ())
      return $ pure ()
    let beganE = fforMaybe touchTypes $ \case
                  TouchEventType_Began -> Just ()
                  _ -> Nothing
        movedE = fforMaybe touchTypes $ \case
                   TouchEventType_Moved -> Just ()
                   _ -> Nothing
        endedE = fforMaybe touchTypes $ \case
                   TouchEventType_Ended -> Just ()
                   _ -> Nothing
        cancelledE = fforMaybe touchTypes $ \case
                       TouchEventType_Canceled -> Just ()
                       _ -> Nothing
    return $ WidgetTouchEvents beganE movedE endedE cancelledE

getWidgetClicks :: (NodeGraph t m, WidgetPtr w) => w -> m (Event t ())
getWidgetClicks w = do
    runWithActions <- askRunWithActions
    newEventWithTrigger $ \et -> do
      widget_addClickEventListener w $ \_ -> runWithActions ([et ==> ()], return ())
      return $ pure ()

instance (MonadIO m, TextPtr t) => HasText t m where
  text = hoistA liftIO $ Attrib' (decode <=< text_getString) text_setString
  horizontalAlign = hoistA liftIO $ Attrib' text_getTextHorizontalAlignment text_setTextHorizontalAlignment
  verticalAlign = hoistA liftIO $ Attrib' text_getTextVerticalAlignment text_setTextVerticalAlignment
  textColor = hoistA liftIO $ Attrib' (decode <=< text_getTextColor) text_setTextColor
  outline = SetOnlyAttrib set
    where set l (Just (Outline sColor sSize)) = liftIO $ text_enableOutlineWithSize l sColor sSize
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Outline
  shadow = SetOnlyAttrib set
    where set l (Just (Shadow shColor shOffset shBlur)) = liftIO $ text_enableShadowWithOffset l shColor shOffset shBlur
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Shadow
  glow = SetOnlyAttrib set
    where set l (Just (Glow glColor)) = liftIO $ text_enableGlow l glColor
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Glow

-- helpers for finding widget
findWidgetByName' :: MonadIO m => (Widget -> a) -> Widget -> String -> m a
findWidgetByName' downcast w name = liftIO $ downcast <$> uiHelper_seekWidgetByName w name
{-# INLINE findWidgetByName' #-}

findButtonByName :: MonadIO m => Widget -> String -> m Button
findButtonByName = findWidgetByName' downToButton

findTextByName :: MonadIO m => Widget -> String -> m Text
findTextByName = findWidgetByName' downToText

findLayoutByName :: MonadIO m => Widget -> String -> m Layout
findLayoutByName = findWidgetByName' downToLayout
