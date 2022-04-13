module Homework.Week07.Scrabble where

newtype Score = Score Int
  deriving (Show, Eq)

instance Semigroup Score where
  Score m1 <> Score m2 = undefined

instance Monoid Score where
  mempty = undefined

score :: Char -> Score
score = undefined

scoreString :: String -> Score
scoreString = undefined
