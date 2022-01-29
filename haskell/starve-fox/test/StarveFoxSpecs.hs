module Main where

import           StarveFoxTest
import           Test.Tasty

testSuite :: TestTree
testSuite = testGroup "Test Suite" [unitTests  --, properties
                                   ]

unitTests = testGroup "Unit Tests" [deckTests]
-- properties = testGroup "QuickCheck" []

main = defaultMain testSuite
