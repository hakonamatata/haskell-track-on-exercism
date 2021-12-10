module Bob (responseFor) where

import Data.Char (isAlpha, isDigit, isUpper)

responseFor :: String -> String
responseFor xs
  | xs == "Bob" || filterOutTheRelevantBits xs == "" = "Fine. Be that way!"
  | isQuestion xs && isYelling (filterOutEverythingExceptLetters xs) = "Calm down, I know what I'm doing!"
  | isYelling (filterOutEverythingExceptLetters xs) = "Whoa, chill out!"
  | isQuestion xs = "Sure."
  | otherwise = "Whatever."

isQuestion :: String -> Bool
isQuestion xs = last (filterOutTheRelevantBits xs) == '?'

isYelling :: String -> Bool
isYelling xs = all isUpper xs && filterOutEverythingExceptLetters xs /= ""

filterOutTheRelevantBits :: String -> String
filterOutTheRelevantBits = filter (\x -> isAlpha x || isDigit x || x == '!' || x == '?')

filterOutEverythingExceptLetters :: String -> String
filterOutEverythingExceptLetters = filter isAlpha