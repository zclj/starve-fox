module StarveLib (someFunc) where

data CardValue = Two | Three | Four | Five | Six | Seven | Eight
               | Nine | Ten | Jack | Queen | King | Ace
               deriving (Show, Eq, Ord, Enum)

data CardSuite = Spades | Hearts | Diamonds | Clubs
               deriving (Show, Eq, Ord, Enum)

data Card = Card { value :: CardValue
                 , suite :: CardSuite }
          deriving (Show, Eq, Ord)

data Deck = Deck { cards :: [Card] }

makeDeck :: Deck
makeDeck = Deck { cards = [ Card v s | v <- [Two .. Ace],
                                       s <- [Spades .. Clubs]]}

-- $> Card Two Hearts

-- $> (Card Two Hearts) = (Card Two Hearts)

-- $> (Card Two Hearts) > (Card Two Hearts)

-- $> (Card Two Hearts) > (Card Two Hearts)

someFunc :: String
someFunc = "Starve Fox!"
