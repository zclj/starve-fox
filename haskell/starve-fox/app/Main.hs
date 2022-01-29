module Main where

import qualified StarveLib (makeDeck)

main :: IO ()
main = do
  putStrLn $ show $ StarveLib.makeDeck

