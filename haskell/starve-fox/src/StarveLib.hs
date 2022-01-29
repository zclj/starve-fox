module StarveLib (someFunc) where

data CardValue = One | Two | Three | Four | Five | Six | Seven | Eight
               | Nine | Ten | Jack | Queen | King | Ace
               deriving (Show)

data CardSuite = Spades | Hearts | Diamonds | Clubs
               deriving (Show)

data Card = Card { value :: CardValue
                 , suite :: CardSuite }
          deriving (Show)

data Deck = Deck { cards :: [Card] }

-- $> Card One Hearts

someFunc :: String
someFunc = "Starve Fox!"
