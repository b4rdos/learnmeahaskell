-- Single line comment
{-
 - Multiline comments
-}

import Data.List
import System.IO

-- Data Types
-- Haskell is statically typed and tries to guess the type if it's not explicitly defined

-- Int -2^63 2^63
minInt = minBound :: Int
maxInt = maxBound :: Int

-- Integer (unbounded; limitted by memory)

-- Float
-- Double ( 11 decimals precision without loss of info)
bigFloat = 3.99999999999 + 0.00000000005 -- 4.00000000004
bigFloat2 = 3.999999999999 + 0.000000000005 -- 4.0000000000039995

-- Bool True False
-- Char '
-- Tuple () -- Usually two items

-- Permanent value of variable
always5 :: Int
always5 = 5

-- Arithmetic Operations
sumOp = 5 + 4
negNumOp = 5 + (-13) -- needs the parenthesis
subOp = 8 - 13
mulOp = 5 * 3
divOp = 6 / 3 -- 2.0

modOp =  mod 13 2
modOp2 = 13 `mod` 2 -- same as modOp; using infix version
intDivOp = 3 `div` 2 -- 2

powOp = 3 ^ 3 -- 81
powOp2 = 3 ** 3 -- 81.0
powOp3 = 9 ** 0.5 -- 3.0

sqrtOp = sqrt 9 -- 3.0


-- Arithmetic functions
sumOfNums = sum [1..1000]
prodOfNums = product [1..10]
