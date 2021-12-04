module SpaceAge (Planet (..), ageOn) where

data Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = case planet of
  Mercury -> seconds / secondsInAYearOnGivenPlanet planet
  Venus -> seconds / secondsInAYearOnGivenPlanet planet
  Earth -> seconds / secondsInAYearOnGivenPlanet planet
  Mars -> seconds / secondsInAYearOnGivenPlanet planet
  Jupiter -> seconds / secondsInAYearOnGivenPlanet planet
  Saturn -> seconds / secondsInAYearOnGivenPlanet planet
  Uranus -> seconds / secondsInAYearOnGivenPlanet planet
  Neptune -> seconds / secondsInAYearOnGivenPlanet planet

secondsInAYearOnEarth :: Float
secondsInAYearOnEarth = 31557600

secondsInAYearOnGivenPlanet :: Planet -> Float
secondsInAYearOnGivenPlanet planet = case planet of
  Mercury -> 0.2408467 * secondsInAYearOnEarth
  Venus -> 0.61519726 * secondsInAYearOnEarth
  Earth -> 1 * secondsInAYearOnEarth
  Mars -> 1.8808158 * secondsInAYearOnEarth
  Jupiter -> 11.862615 * secondsInAYearOnEarth
  Saturn -> 29.447498 * secondsInAYearOnEarth
  Uranus -> 84.016846 * secondsInAYearOnEarth
  Neptune -> 164.79132 * secondsInAYearOnEarth
