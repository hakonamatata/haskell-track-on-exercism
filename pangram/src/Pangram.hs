module Pangram (isPangram) where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = length [x | x <- ['a' .. 'z'], x `elem` toLowerCase text] == 26

toLowerCase :: String -> String
toLowerCase = map toLower