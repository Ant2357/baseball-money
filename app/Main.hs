{-# LANGUAGE OverloadedStrings #-}

module Main where

import Lib

main :: IO ()
main = do
  let player = Player {
    name         = "坂口 智隆",
    age          = 36,
    g            = 114,
    obp          = 0.334,
    isForeigner  = False,
    isFirstPlace = False
  }

  let annualSalary = baseballMoney "batter" player
  putStrLn $ show (10000 * annualSalary) ++ "JPY" 
