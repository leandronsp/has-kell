import Test.HUnit

testFunctions = TestCase $
  do
    assertEqual "mapFunction" (map (+1) [1..5]) [2, 3, 4, 5, 6]
    assertEqual "filterFunction" (filter (>5) [3, 10, 7, 5, 6, 1]) [10, 7, 6]

tests = TestList [TestLabel "testFunctions" testFunctions]
