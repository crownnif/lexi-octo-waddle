{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_lexi_octo_waddle (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/finn/.cabal/bin"
libdir     = "/Users/finn/.cabal/lib/x86_64-osx-ghc-8.0.2/lexi-octo-waddle-0.1.0.0-inplace-pogramme"
dynlibdir  = "/Users/finn/.cabal/lib/x86_64-osx-ghc-8.0.2"
datadir    = "/Users/finn/.cabal/share/x86_64-osx-ghc-8.0.2/lexi-octo-waddle-0.1.0.0"
libexecdir = "/Users/finn/.cabal/libexec/x86_64-osx-ghc-8.0.2/lexi-octo-waddle-0.1.0.0"
sysconfdir = "/Users/finn/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "lexi_octo_waddle_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "lexi_octo_waddle_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "lexi_octo_waddle_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "lexi_octo_waddle_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "lexi_octo_waddle_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "lexi_octo_waddle_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
