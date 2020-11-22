{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( Player (..)
    , defPlayer
    , baseballMoney
    ) where

import Data.Text

data Player = Player {
  name         :: Text,
  age          :: Int,
  g            :: Int,
  obp          :: Float,
  ip           :: Float,
  era          :: Float,
  sv           :: Int,
  isForeigner  :: Bool,
  isFirstPlace :: Bool
} deriving (Show)

defPlayer :: Player
defPlayer = Player {
  name         = "",
  age          = 20,
  g            = 0,
  obp          = 0.0,
  ip           = 0.0,
  era          = 0.0,
  sv           = 0,
  isForeigner  = False,
  isFirstPlace = False
}

baseballMoney :: String -> Player -> Int
baseballMoney baseballType player = 
  case baseballType of
    "batter" -> age player * 415
      + g player * 85
      + round (obp player * 5218.0)
      + (if isForeigner player then 1 else 0) * 9753
      + (if isFirstPlace player then 1 else 0) * 1685
      - 13322
    "pitcher" -> age player * 858
      + round (ip player * 66)
      + round (era player * (-134))
      + (if isForeigner player then 1 else 0) * 6438
      + (if isFirstPlace player then 1 else 0) * 4007
      + sv player * 265
      - 21880
    _ -> 0
