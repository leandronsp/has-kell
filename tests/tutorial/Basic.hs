import Test.HUnit

testBasicSum = TestCase $ assertEqual "test basicSum" (1 + 1) 2

tests = TestList [
          TestLabel "testBasicSum" testBasicSum
        ]
