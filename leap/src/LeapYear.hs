module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
-- isLeapYear year = year `mod` 4 == 0 && year `mod` 100 /= 0 || year `mod` 400 == 0
isLeapYear year = mod year 4 == 0 && mod year 100 /= 0 || mod year 400 == 0
