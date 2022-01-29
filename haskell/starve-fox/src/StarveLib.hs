module StarveLib (someFunc) where

import           System.IO.Unsafe
import qualified System.Random         as Random
import qualified System.Random.Shuffle as Shuffle

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

shuffleDeck :: Deck -> Deck
shuffleDeck (Deck { cards = c}) =
  Deck $ unsafePerformIO $ Random.getStdRandom $ Shuffle.shuffle' c

-- $> Card Two Hearts

-- $> (Card Two Hearts) = (Card Two Hearts)

-- $> (Card Two Hearts) > (Card Two Hearts)

-- $> (Card Two Hearts) > (Card Two Hearts)

someFunc :: String
someFunc = "Starve Fox!"
