module Graphics.UI.Cocos2d.Generator.Interface.Utils
  (
    mod_utils
  , f_debug
  ) where

import Foreign.Hoppy.Generator.Spec
import Foreign.Hoppy.Generator.Types

mod_utils :: Module
mod_utils =
  moduleModify' (makeModule "utils" "Utils.hpp" "Utils.cpp") $
    moduleAddExports
    [ ExportFn f_debug
    ]

f_debug :: Function
f_debug =
  addReqIncludes [includeStd "base/CCConsole.h"] $
    makeFn (ident1 "cocos2d" "log") (Just $ toExtName "debug") Nonpure [ptrT $ constT charT] voidT
