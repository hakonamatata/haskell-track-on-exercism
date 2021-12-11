module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0

collatz' :: Integer -> Integer -> Maybe Integer
collatz' 1 acc = Just acc
collatz' n acc
  | even n = collatz' (div n 2) (acc + 1)
  | otherwise = collatz' (3 * n + 1) (acc + 1)

