import Test.HUnit

testBasicSum = TestCase $ assertEqual "test basicSum" (1 + 1) 2
testBasicStr = TestCase $ assertEqual "test basicStr" "leandro" "leandro"

tests = TestList [
          TestLabel "testBasicSum" testBasicSum,
          TestLabel "testBasicStr" testBasicStr
        ]
