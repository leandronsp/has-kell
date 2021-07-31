import Test.HUnit

testBindVariable = TestCase $
  do
    let x = 4
    assertEqual "test x = 4" x 4

testExpressionAndBody = TestCase $
  do
    let result = let y = 4 in y * y
    assertEqual "test result = 16" result 16

tests = TestList [
          TestLabel "testBindVariable" testBindVariable,
          TestLabel "testExpressionAndBody" testExpressionAndBody
        ]
