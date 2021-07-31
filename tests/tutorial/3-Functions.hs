import Test.HUnit

testMapFunction = TestCase $ assertEqual "test mapFunction" (map (+1) [1..5]) [2, 3, 4, 5, 6]
testFilterFunction = TestCase $ assertEqual "test filterFunction" (filter (>5) [3, 10, 7, 5, 6, 1]) [10, 7, 6]

tests = TestList [
          TestLabel "testMapFunction" testMapFunction,
          TestLabel "testFilterFunction" testFilterFunction
        ]
