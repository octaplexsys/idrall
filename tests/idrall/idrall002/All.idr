module Main

import Idrall.TestHelper

import Idrall.Error
import Idrall.IOEither
import Idrall.APIv1
import Idrall.Parser

import System
import System.Directory
import Data.List
import Data.Strings
import Data.Strings

testAll : IO (Result)
testAll = do
  dir <- findTests "../../../dhall-lang/tests/type-inference/success"
  runTestsCheck dir

main : IO ()
main = do res <- testAll
          printLn $ res
