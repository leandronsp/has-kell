import Test.HUnit

testPatternMatching = TestCase $
  do
    let result = let (a, b) = (5, 10) in a * 10
    assertEqual "with tuple resulting in 50" result 50
    let result = let(a:b:c:[]) = "xyz" in a
    assertEqual "with chars resulting in x" result 'x'
    let result = let (a:_:c:_) = "asdf" in [a,c]
    assertEqual "ignoring with underscores" result "ad"
    let result = let (_, x:_) = (10, "abc") in x
    assertEqual "result is 'a'" result 'a'

tests = TestList [TestLabel "testPatternMatching" testPatternMatching]
