import Test.HUnit

testBasicSum = TestCase $ assertEqual "test basicSum" (1 + 1) 2
testBasicStr = TestCase $ assertEqual "test basicStr" "leandro" "leandro"
testDivisionReturnsInteger = TestCase $ assertEqual "test divisionReturnsInteger" (10 / 2) 5
testDivisionReturnsFractional = TestCase $ assertEqual "test divisionReturnsFractional" (10 / 2) 5.0

tests = TestList [
          TestLabel "testBasicSum" testBasicSum,
          TestLabel "testBasicStr" testBasicStr,
          TestLabel "testDivisionReturnsInteger" testDivisionReturnsInteger,
          TestLabel "testDivisionReturnsFractional" testDivisionReturnsFractional
        ]
