module Main where

import qualified StarveLib (someFunc)

main :: IO ()
main = do
  putStrLn StarveLib.someFunc

