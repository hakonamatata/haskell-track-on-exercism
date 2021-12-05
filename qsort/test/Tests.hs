{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-type-defaults #-}

import Data.Foldable (for_)
import Data.Function (on)
import QSort (qsort)
import Test.Hspec (Spec, describe, it, shouldBe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs = describe "qsort" $ for_ cases test
  where
    test Case {..} = it description $ qsort input `shouldBe` expected

data Case = Case
  { description :: String,
    input :: [Int],
    expected :: [Int]
  }

cases :: [Case]
cases =
  [ Case
      { description = "empty array",
        input = [],
        expected = []
      },
    Case
      { description = "sort two values",
        input = [2, 1],
        expected = [1, 2]
      },
    Case
      { description = "sort longer list",
        input = [2, 1, -3, 5, 6, -2, -4, 3, 1, 0],
        expected = [-4, -3, -2, 0, 1, 1, 2, 3, 5, 6]
      }
  ]
