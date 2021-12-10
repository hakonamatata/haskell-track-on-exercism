module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

elapsedTimeInMinutes :: Int -> Int -> Int
elapsedTimeInMinutes layers minInOven = preparationTimeInMinutes layers + minInOven

expectedMinutesInOven :: Int
expectedMinutesInOven = 40

preparationTimeInMinutes :: Int -> Int
preparationTimeInMinutes layers = layers * 2
