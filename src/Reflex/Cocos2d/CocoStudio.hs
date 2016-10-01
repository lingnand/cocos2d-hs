module Reflex.Cocos2d.CocoStudio
    (
      loadCSNode
    , loadCSNodeOfVisibleSize
    )
  where

import Control.Monad.IO.Class

import Graphics.UI.Cocos2d.Node
import Graphics.UI.Cocos2d.CocoStudio

loadCSNode :: MonadIO m => String -> m Node
loadCSNode = liftIO . csLoader_createNode

loadCSNodeOfVisibleSize :: MonadIO m => String -> m Node
loadCSNodeOfVisibleSize = liftIO . csLoader_createNodeOfVisibleSize
