import Test.HUnit

import Data.List
import Data.Tuple

testBasicSum = TestCase $ assertEqual "test basicSum" (1 + 1) 2
testBasicStr = TestCase $ assertEqual "test basicStr" "leandro" "leandro"

testListSize         = TestCase $ assertEqual "test listSize" (length [42, 13, 22]) 3
testSortList         = TestCase $ assertEqual "test sortList" (sort [42, 13, 22]) [13, 22, 42]
testSortListOfStr    = TestCase $ assertEqual "test sortListOfStr" (sort "leandro") "adelnor"
testHeadOfLinkedList = TestCase $ assertEqual "test headOfLinkedList" (head [1, 2, 3]) 1
testTailOfLinkedList = TestCase $ assertEqual "test tailOfLinkedList" (tail [1, 2, 3]) [2, 3]
testFirstOfTuple     = TestCase $ assertEqual "test firstOfTuple" (fst (42, "leandro")) 42

testBindVariable = TestCase $
  do
    let x = 4
    assertEqual "test x = 4" x 4

testExpressionAndBody = TestCase $
  do
    let result = let y = 4 in y * y
    assertEqual "test result = 16" result 16

tests = TestList [
          TestLabel "testBasicSum" testBasicSum,
          TestLabel "testBasicStr" testBasicStr,
          TestLabel "testListSize" testListSize,
          TestLabel "testSortList" testSortList,
          TestLabel "testSortListOfStr" testSortListOfStr,
          TestLabel "testHeadOfLinkedList" testHeadOfLinkedList,
          TestLabel "testTailOfLinkedList" testTailOfLinkedList,
          TestLabel "testFirstOfTuple" testFirstOfTuple,
          TestLabel "testBindVariable" testBindVariable,
          TestLabel "testExpressionAndBody" testExpressionAndBody
        ]
