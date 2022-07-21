module Homework.Week10.Assignment where

import Homework.Week10.Support (Tree(..), labelTree)
import Test.QuickCheck

-- Exercise 1

genTree :: Arbitrary a => Gen (Tree a)
genTree = do
    make_leaf <- arbitrary
    if make_leaf
        then do
            Leaf <$> arbitrary
        else do
            t1 <- genTree
            Node t1 <$> genTree

instance Arbitrary a => Arbitrary (Tree a) where
    arbitrary = genTree

genLeaf :: Arbitrary a => Gen (Tree a)
genLeaf = Leaf <$> arbitrary

genNode :: Arbitrary a => Gen (Tree a)
genNode = sized $ \n -> do
    x <- choose (0, n)
    Node <$> resize x arbitrary <*> resize (n - x) arbitrary

-- Exercise 2

size :: Tree a -> Int
size (Leaf _) = 1
size (Node l r) = size l + size r

toList :: Tree a -> [a]
toList (Leaf x) = [x]
toList (Node l r) = toList l ++ toList r

-- Exercise 3

-- The length of the list produced by toList is the size of the given tree.
prop_lengthToList :: Tree Integer -> Bool
prop_lengthToList t = length (toList t) == size t

-- labelTree does not change the size of the tree.
prop_sizeLabelTree :: Tree Integer -> Bool
prop_sizeLabelTree t = size (labelTree t) == size t

-- For every tree t, toList (labelTree t) is the expected list.
-- Hint: [0..n] denotes the list of numbers from 0 to n, inclusively.
prop_labelTree :: Tree Integer -> Bool
prop_labelTree t = toList (labelTree t) == [0..(fromIntegral $ size t - 1)]

-- Applying labelTree to a list twice does yield the same list as applying it once.
prop_labelTreeIdempotent :: Tree Integer -> Bool
prop_labelTreeIdempotent t = labelTree (labelTree t) == labelTree t
