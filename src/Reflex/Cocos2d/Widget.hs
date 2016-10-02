{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
module Reflex.Cocos2d.Widget
    ( getWidgetTouchEvents
    , getWidgetClicks
    , getWidgetEvents
    , findButtonByName
    , findTextByName
    , findLayoutByName
    -- data types
    , WidgetTouchEvents(WidgetTouchEvents)
    , HasWidgetTouchEvents(..)
    , WidgetEvents(WidgetEvents)
    , widgetClicked
    -- re-export --
    , Widget
    , WidgetPtr
    )
  where

import Data.Dependent.Sum ((==>))
import Control.Monad
import Control.Monad.Trans
import Control.Lens hiding (contains)

import Foreign.Hoppy.Runtime (Decodable(..), CppPtr(..))

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
makeClassy ''WidgetTouchEvents

data WidgetEvents t = WidgetEvents
    { _weToWTouchEvents :: WidgetTouchEvents t
    , _widgetClicked    :: Event t ()
    }
makeLenses ''WidgetEvents

instance HasWidgetTouchEvents (WidgetEvents t) t where
    widgetTouchEvents = weToWTouchEvents

getWidgetTouchEvents :: (NodeGraph t m, WidgetPtr w) => w -> m (WidgetTouchEvents t)
getWidgetTouchEvents w = do
    run <- view runWithActions
    touchTypes <- newEventWithTrigger $ \et -> do
      widget_addTouchEventListener w $ \_ t -> run ([et ==> t], return ())
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
    run <- view runWithActions
    newEventWithTrigger $ \et -> do
      widget_addClickEventListener w $ \_ -> run ([et ==> ()], return ())
      return $ pure ()

getWidgetEvents :: (NodeGraph t m, WidgetPtr w) => w -> m (WidgetEvents t)
getWidgetEvents w = WidgetEvents <$> getWidgetTouchEvents w <*> getWidgetClicks w

instance (MonadIO m) => HasText Text m where
  text = hoistA liftIO $ Attrib' (decode <=< text_getString) text_setString
  horizontalAlign = hoistA liftIO $ Attrib' text_getTextHorizontalAlignment text_setTextHorizontalAlignment
  verticalAlign = hoistA liftIO $ Attrib' text_getTextVerticalAlignment text_setTextVerticalAlignment
  textColor = hoistA liftIO $ Attrib' (decode <=< text_getTextColor) text_setTextColor
  outline = SetOnlyAttrib' set
    where set l (Just (Outline sColor sSize)) = liftIO $ text_enableOutlineWithSize l sColor sSize
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Outline
  shadow = SetOnlyAttrib' set
    where set l (Just (Shadow shColor shOffset shBlur)) = liftIO $ text_enableShadowWithOffset l shColor shOffset shBlur
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Shadow
  glow = SetOnlyAttrib' set
    where set l (Just (Glow glColor)) = liftIO $ text_enableGlow l glColor
          set l _ = liftIO $ text_disableLabelEffect l LabelEffect_Glow

-- helpers for finding widget
findWidgetByName' :: (MonadIO m, WidgetPtr w) => (Widget -> a) -> w -> String -> m (Maybe a)
findWidgetByName' downcast w name = liftIO $ do
    w' <- uiHelper_seekWidgetByName w name
    if w' == nullptr
      then return Nothing
      else return $ Just $ downcast w'
{-# INLINE findWidgetByName' #-}

findButtonByName :: (MonadIO m, WidgetPtr w) => w -> String -> m (Maybe Button)
findButtonByName = findWidgetByName' downToButton

findTextByName :: (MonadIO m, WidgetPtr w) => w -> String -> m (Maybe Text)
findTextByName = findWidgetByName' downToText

findLayoutByName :: (MonadIO m, WidgetPtr w) => w -> String -> m (Maybe Layout)
findLayoutByName = findWidgetByName' downToLayout
