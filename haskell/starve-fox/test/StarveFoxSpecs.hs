module Main where

import           StarveFoxTest
import           Test.Tasty

testSuite :: TestTree
testSuite = testGroup "Test Suite" [unitTests  --, properties
                                   ]

unitTests = testGroup "Hunit" [helloWorldTest]
-- properties = testGroup "QuickCheck" []

main = defaultMain testSuite
