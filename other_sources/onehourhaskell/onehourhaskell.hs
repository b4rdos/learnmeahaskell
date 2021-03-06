-- Single hile comment
{-
    Multiline comment
-}

import Data.List
import System.IO

-- Types
-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer unbounded
-- Float
-- Double 11 points precision
-- Bool
-- Char '
-- Tuple ()

-- Haskell can infer types but one can define the data, ie
always5 :: Int
always5 = 5

-- Arithmetic Operations
addEx = 5 + 4
subEx = 3 - 2
multEx = 5 * 3
divEx = 3 / 4

sumOfNums = sum [1..100]
prodOfNums = product [1..10]

-- prefix operators that can be infix
modEx =  mod 13 2
modEx2 = 13 `mod` 2 -- same as modEx; using infix version
intDivEx = 3 `div` 2 -- 2

-- adding a negative number
negNumEx = 5 + (-1)

-- Converting Float to Int for use in functions
-- ex `sqrt` expects a float
num9 = 9 :: Int
root9 = sqrt (fromIntegral num9)


-- Built In math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
int3Pow4 = 3^4
float3Pow4 = 3**4
sqrtOf3 = 3**0.5
truncVal = truncate 9.999 -- 9
roundVal = round 9.999 -- 10
ceilingVal = ceiling 9.999 -- 10
floorVal = floor 9.999 -- 9
negFloorVal = floor -9.999 -- -10

-- Others include
-- sin, cos, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh

-- Boolean operations
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)


-- Lists
primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]

-- Using the cons operator to construct a list
favNums = 2: 7 : 21 : 66 : []

-- List of lists
listOfLists = [[1,2,3], [1,2]]

-- Extend list
morePrimes2 = 2: morePrimes

-- Gen number of elements in the list
lenPrime = length morePrimes2

-- Reverse the list
revPrime = reverse morePrimes2

-- Get the item in the index
secondPrime = morePrimes2 !! 1

-- Get the first value
firstValue = head morePrimes2

-- Get the last value
lastValue = last morePrimes2

-- Get all apart from the first value
tailList = tail morePrimes2

-- Get all bar the last value
initList = init morePrimes2

-- Get specified number of elements frokm the front of the list
first3Primes = take 3 moreprimes2

-- Drop first x items and return the rest
drop3Primes = drop 3 moreprimes2

-- Check if value is in the list
inList = 4 `elem` morePrimes2

-- Get max value
maxPrime = maximum morePrimes2

-- Get minimum value
minPrime = minimum morePrimes2

-- Generate List
rangeList = [1..10]
skipList = [1,3..13]
rangeString = ['a'..'d']
skipString = ['b','d'..'z']

-- Infinite List
infList = [10,20..]

-- repeat a number
--
