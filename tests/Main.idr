module Main

import Data.Maybe
import Data.List
import Data.List1
import Data.Strings

import System
import System.Directory
import System.File
import System.Info
import System.Path

import Test.Golden

%default covering

allTests : TestPool
allTests = MkTestPool "dhall-lang tests" []
  [ "idrall001"
  , "idrall002"
  , "idrall003"
  , "idrall004"
  , "idrall005"
  ]

deriveTests : TestPool
deriveTests = MkTestPool "derive tests" []
  [ "derive001"
  ]

main : IO ()
main = runner
  [ testPaths "idrall" allTests
  , testPaths "derive" deriveTests
  ] where

    testPaths : String -> TestPool -> TestPool
    testPaths dir = record { testCases $= map ((dir ++ "/") ++) }
