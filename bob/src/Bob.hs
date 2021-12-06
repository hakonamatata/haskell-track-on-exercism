module Bob (responseFor) where

import Data.Char (isAlpha, isUpper)

responseFor :: String -> String
responseFor xs
  | xs == "Bob" = "Fine. Be that way!"
  | isQuestion xs && isYelling xs = "Calm down, I know what I'm doing!"
  | isYelling xs = "Whoa, chill out!"
  | isQuestion xs = "Sure."
  | otherwise = "Whatever."

isQuestion :: String -> Bool
isQuestion xs = last xs == '?'

-- BUG: isUpper returns false when checks agains ! or ?
isYelling :: String -> Bool
isYelling xs = all isUpper xs