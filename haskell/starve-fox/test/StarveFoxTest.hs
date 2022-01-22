module StarveFoxTest where

import           StarveLib        as SUT
import           Test.Tasty.HUnit as HU

helloWorldTest = HU.testCase "Unit test example" $
    assertEqual "for (someFunc)"
                "Starve Fox!" (SUT.someFunc)

