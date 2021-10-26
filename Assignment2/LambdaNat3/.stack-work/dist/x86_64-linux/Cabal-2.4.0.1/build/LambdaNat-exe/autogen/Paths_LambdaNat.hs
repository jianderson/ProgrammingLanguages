{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_LambdaNat (
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

bindir     = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/bin"
libdir     = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/lib/x86_64-linux-ghc-8.6.4/LambdaNat-0.1.0.0-3B9hcGkMBrY1NF1SHjpxYB-LambdaNat-exe"
dynlibdir  = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/lib/x86_64-linux-ghc-8.6.4"
datadir    = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/share/x86_64-linux-ghc-8.6.4/LambdaNat-0.1.0.0"
libexecdir = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/libexec/x86_64-linux-ghc-8.6.4/LambdaNat-0.1.0.0"
sysconfdir = "/home/CPSC_354/PLRepo/ProgrammingLanguages/Assignment2/LambdaNat3/.stack-work/install/x86_64-linux/40045114b4a1dc77b67aa4f41d587c8904e6ea1ea0d96d505cf75eb29d8a839b/8.6.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "LambdaNat_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "LambdaNat_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "LambdaNat_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "LambdaNat_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "LambdaNat_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "LambdaNat_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
