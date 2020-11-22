{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib

main :: IO ()
main = do
  let batterPlayer = defPlayer {
    name         = "坂口 智隆",
    age          = 36,
    g            = 114,
    obp          = 0.334,
    isForeigner  = False,
    isFirstPlace = False
  }

  let pitcherPlayer = defPlayer {
    name         = "石山 泰稚",
    age          = 32,
    ip           = 44.2,
    era          = 2.01,
    sv           = 20,
    isForeigner  = False,
    isFirstPlace = False
  }


  -- 打者年俸
  let batterSalary = baseballMoney "batter" batterPlayer
  putStrLn $ show (10000 * batterSalary) ++ "JPY"

  -- 投手年俸
  let pitcherSalary = baseballMoney "pitcher" pitcherPlayer
  putStrLn $ show (10000 * pitcherSalary) ++ "JPY"
