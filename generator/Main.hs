{-# LANGUAGE LambdaCase #-}
-- This file is part of Hoppy.
--
-- Copyright 2015-2016 Bryan Gardiner <bog@khumba.net>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Foreign.Hoppy.Generator.Main (run)
import System.Environment (getArgs)
import System.Exit (exitFailure)
import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Std (mod_std)

import Graphics.UI.Cocos2d.Generator.Interface.Common
import Graphics.UI.Cocos2d.Generator.Interface.Texture
import Graphics.UI.Cocos2d.Generator.Interface.Director
import Graphics.UI.Cocos2d.Generator.Interface.Node
import Graphics.UI.Cocos2d.Generator.Interface.Layer
import Graphics.UI.Cocos2d.Generator.Interface.Scene
import Graphics.UI.Cocos2d.Generator.Interface.Sprite
import Graphics.UI.Cocos2d.Generator.Interface.Event
import Graphics.UI.Cocos2d.Generator.Interface.Label
import Graphics.UI.Cocos2d.Generator.Interface.Widget
import Graphics.UI.Cocos2d.Generator.Interface.CocoStudio
import Control.Monad

main :: IO ()
main = case interfaceResult of
  Left errorMsg -> do
    putStrLn $ "Error initializing interface: " ++ errorMsg
    exitFailure
  Right iface -> do
    args <- getArgs
    void $ run [iface] args

interfaceResult :: Either String Interface
interfaceResult =
  interface "cocos2d"
    [ mod_std
    , mod_common
    , mod_texture
    , mod_director
    , mod_node
    , mod_layer
    , mod_scene
    , mod_sprite
    , mod_event
    , mod_label
    , mod_widget
    , mod_cocostudio
    ]
  >>= interfaceAddHaskellModuleBase ["Graphics", "UI", "Cocos2d"]
