module Homework.Week02.Assignment (
  build,
  inOrder,
  insert,
  parse,
  parseMessage,
  whatWentWrong,
  LogMessage(..),
  MessageTree(..),
  MessageType(..),
  TimeStamp
) where

import Homework.Week02.Log

-- #1a
parseMessage :: String -> LogMessage
parseMessage s = case words s of
  ("W":n:xs)     -> LogMessage Warning (read n) (unwords xs)
  ("I":n:xs)     -> LogMessage Info (read n) (unwords xs)
  ("E":n1:n2:xs) -> LogMessage (Error (read n1)) (read n2) (unwords xs)
  _              -> Unknown s

-- #1b
parse :: String -> [LogMessage]
parse s = map parseMessage $ lines s

-- #2
insert :: LogMessage -> MessageTree -> MessageTree
insert (Unknown _) t = t
insert m Leaf = Node Leaf m Leaf
insert m1@(LogMessage _ ts1 _) (Node lt m2@(LogMessage _ ts2 _) rt) =
  let i = insert m1
      z = flip Node m2
  in if ts1 < ts2 then z (i lt) rt
                  else z lt (i rt)

-- #3
build :: [LogMessage] -> MessageTree
build x = foldl (\acc item -> insert item acc) Leaf x

-- #4
inOrder :: MessageTree -> [LogMessage]
inOrder Leaf = []
inOrder (Node lt m rt) = inOrder lt ++ [m] ++ inOrder rt

-- #5
whatWentWrong :: [LogMessage] -> [String]
whatWentWrong = foldr f [] . inOrder . build 
  where f (LogMessage (Error n) _ s) acc = if n > 49 then s:acc else acc
        f _ acc = acc

readTheLogAndReport :: FilePath -> IO [String]
readTheLogAndReport = fmap (whatWentWrong . parse) . readFile