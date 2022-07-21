module Homework.Week10Spec (
  main,
  spec
) where

import Test.Hspec
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck

import Control.Monad.Random
import Homework.Week10.Assignment
import Homework.Week10.Support

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "first tree property" $ do
    prop "the length of the list produced by toList is the size of the given tree" $ \t -> prop_lengthToList t

  describe "second tree property" $ do
    prop "labelTree does not change the size of the tree" $ \t -> prop_sizeLabelTree t

  describe "third tree property" $ do
    prop "for every tree t, toList (labelTree t) is the expected list" $ \t -> prop_labelTree t

  describe "fourth tree property" $ do
    prop "applying labelTree to a list twice does yield the same list as applying it once" $ \t -> prop_labelTreeIdempotent t