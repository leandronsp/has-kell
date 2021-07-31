module TypesTest where

import Test.HUnit

type Point = (Int, Int)

origin :: Point
origin = (0, 0)

moveRight :: Point -> Int -> Point
moveRight (x, y) distance = (x + distance, y)

moveUp :: Point -> Int -> Point
moveUp (x, y) distance = (x, y + distance)

testTypes = TestCase $
  do
    assertEqual "moveRight" (TypesTest.moveRight (0, 1) 1) (1, 1)
    assertEqual "moveUp" (TypesTest.moveUp (0, 1) 1) (0, 2)

tests = TestList [TestLabel "testTypes" testTypes]
