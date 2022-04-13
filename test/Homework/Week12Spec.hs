module Homework.Week12Spec (
  main,
  spec
) where

import Test.Hspec
import Homework.Week12.Employee
import Homework.Week12.Assignment

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "TODO" $ do
    it "should do something" $ do
      pending