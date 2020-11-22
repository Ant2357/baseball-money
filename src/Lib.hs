module Lib
    ( Player (..)
    , baseballMoney
    ) where

import Data.Text

data Player = Player {
  name         :: Text,
  age          :: Int,
  g            :: Int,
  obp          :: Float,
  isForeigner  :: Bool,
  isFirstPlace :: Bool
} deriving (Show)

baseballMoney :: String -> Player -> Int
baseballMoney baseballType player = 
  case baseballType of
    "batter" -> age player * 415
      + g player * 85
      + round (obp player * 5218.0)
      + (if isForeigner player then 1 else 0) * 9753
      + (if isFirstPlace player then 1 else 0) * 1685
      - 13322
    _ -> 0
