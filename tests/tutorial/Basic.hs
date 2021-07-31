import Test.HUnit

import Data.List

testBasicSum = TestCase $ assertEqual "test basicSum" (1 + 1) 2
testBasicStr = TestCase $ assertEqual "test basicStr" "leandro" "leandro"
testSortList = TestCase $ assertEqual "test sortList" (sort [42, 13, 22]) [13, 22, 42]

testSortListOfStr = TestCase $ assertEqual "test sortListOfStr" (sort "leandro") "adelnor"

tests = TestList [
          TestLabel "testBasicSum" testBasicSum,
          TestLabel "testBasicStr" testBasicStr,
          TestLabel "testSortList" testSortList,
          TestLabel "testSortListOfStr" testSortListOfStr
        ]
