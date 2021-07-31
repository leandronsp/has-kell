import Test.HUnit

import Data.List
import Data.Tuple

testListSize         = TestCase $ assertEqual "test listSize" (length [42, 13, 22]) 3
testSortList         = TestCase $ assertEqual "test sortList" (sort [42, 13, 22]) [13, 22, 42]
testSortListOfStr    = TestCase $ assertEqual "test sortListOfStr" (sort "leandro") "adelnor"
testHeadOfLinkedList = TestCase $ assertEqual "test headOfLinkedList" (head [1, 2, 3]) 1
testTailOfLinkedList = TestCase $ assertEqual "test tailOfLinkedList" (tail [1, 2, 3]) [2, 3]
testConsSugar        = TestCase $ assertEqual "test consSugar" ("a" : "b" : []) ["a", "b"]
testCharsList        = TestCase $ assertEqual "test charsList" ('a' : 'b' : []) "ab"
testFirstOfTuple     = TestCase $ assertEqual "test firstOfTuple" (fst (42, "leandro")) 42

tests = TestList [
          TestLabel "testListSize" testListSize,
          TestLabel "testSortList" testSortList,
          TestLabel "testSortListOfStr" testSortListOfStr,
          TestLabel "testHeadOfLinkedList" testHeadOfLinkedList,
          TestLabel "testTailOfLinkedList" testTailOfLinkedList,
          TestLabel "testConsSugar" testConsSugar,
          TestLabel "testCharsList" testCharsList,
          TestLabel "testFirstOfTuple" testFirstOfTuple
        ]
