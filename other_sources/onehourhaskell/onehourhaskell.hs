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


-- Operations
sumOfNums = sum [1..100]
prodOfNums = product [1..10]
addEx = 5 + 4
subEx = 3 - 2
multEx = 5 * 3
divEx = 3 / 4

-- prefix operators that can be infix
modEx = mod 5 4
modEx2 = 5 `mod` 4

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
