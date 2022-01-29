module StarveFoxTest where

import           StarveLib        as SUT
import           Test.Tasty
import           Test.Tasty.HUnit as HU

deckTests = testGroup "Deck" [sameDeckIsEqual]

sameDeckIsEqual =
  HU.testCase "A deck of cards can be compared for equality" $
    let d = makeDeck
    in assertEqual "Deck equality"
       d d

