module Homework.Week01.Assignment where

-- #1a
toDigits :: Integer -> [Integer]
toDigits n | n < 1 = []
toDigits n | n < 10 = [n]
toDigits n = toDigits (n `div` 10) ++ [n `mod` 10]

-- #1b
toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits

-- #2
-- it takes the second argument and the last item of the list and applies the function, then it takes the penultimate item from the end and the result, and so on. See scanr for intermediate results.

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = snd $ foldr (\item (bit, acc) -> if not bit then (True, item * 2 : acc) else (False, item:acc)) (True, []) xs

-- #3
sumDigits :: [Integer] -> Integer
sumDigits = undefined

-- #4
validate :: Integer -> Bool
validate = undefined

-- #5
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi = undefined

hanoi4 :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoi4 = undefined
