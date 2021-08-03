-- The following commands are actually run in the interactive tool `ghci`
-- Suggestion run `:set prompt "ghci> " because imported packages are added to the "Prelude>"

-- Operations between numbers as per most languages +, -, *, /; ie:
let a = 4 + 5

-- Comparissons using `==` and `/=` for equal and not equal
let eq = 4 == 4
let noeq = 5 /= 6

-- Logical operations
let l_and = True && False
let l_or = True || False
let l_not = not True

-- To call a function with parameters, seperate the function name from the parameters with space
let res = succ 6 -- `succ` returns the successor of the items passed.

-- Other functions:
let mres = max 5 6 -- 6
let same = (min 3 7) == (3 `min` 7) -- if a fuction take two parameters it can be written as infix

-- The following are defined in `baby.hs` and imported using `:l baby` in `ghci`
doubleMe 3 -- returns 6
doubleUs 4 5 -- reuturns 18
doubleSmallNumber 5 -- returns 10
doubleSmallNumber 200 -- returns 200; 200 is big enough


-- function names can contain `'` ie:
seanO'Connell

-- Lists
let lostNumbers = [4, 8, 15, 16, 23, 42]
-- Strings are just a list of characters
let hello = ['h', 'e', 'l', 'l', 'o']  -- ghci> hello -> "hello"
-- Use `++` to combine lists
let a = [1, 2, 3]
let b = [4, 5, 6]
let ab = a ++ b -- [1, 2, 3, 4, 5, 6]
-- Use `:` to prepend an item to a list
let a1 = 1:[2, 3] -- [1, 2, 3]
-- in a way a list is just 1:2:3:[] == [1,2,3]
let b1 = 'a':" weird coincidence" -- "a weird coincidence"
-- Access a list with `!!`
a !! 0 -- 1
-- Lists can be compared using `>`, `>=`, `<`, `<=`, `==`, `/=`
a > b -- False
[1,2,3] > [1,2,2] -- True

-- head, tail, init, last
head ab -- 1
tail ab -- [2, 3, 4, 5, 6]
init ab -- [1, 2, 3, 4, 5]
last ab -- 6

-- length, null, reverse
length ab -- 6
null ab -- False
null [] -- True
reverse ab -- [6,5,4,3,2,1]

-- take, drop
take 1 [1,2,3] -- [1]
drop 2 [1,2,3] -- [3]

-- maximum, minumum, sum, product, elem
maximum ab -- 6
minimum ab -- 1
sum ab -- 21
product ab -- 720
2 `elem` ab -- True
14 `elem` ab -- False


-- Texas Ranges
[1..5] == [1,2,3,4,5]
[1,3..5] == [1,3,5]
['a'..'e'] == "abcde"
['a','c'..'g'] == "aceg" -- skip one letter
-- to get a reverse
[10,9..1] == [10,9,8,7,6,5,4,3,2,1]
-- Infinite lists, example get the first 24 multiples of 13
take 24 [13,26..] -- because haskell is lazy only the required first 24 will be calculated

-- cycle, repeat, replicate
take 5 (cycle [1,2]) -- [1,2,1,2,1]
take 2 (repeat 4) -- [4,4]
replicate 3 10 -- [10,10,10]
let word = "What "
(take (((length word)*2)-1) (cycle word)) ++ "!" -- "What What!"

-- list comprehension 
-- [<calculation> | <assignment from list|range>] ie:
[doubleMe x | x <- a] -- [2,4,6]
-- [<calculation> | <assignment>, condition]
[doubleMe x | x <- [1..100], (x `mod` 7) == 3]

boomBang [1..10] -- ["boom", "bang", "boom"]
-- Multiple predicates
[x | x <- [1..40], (x `mod` 3) > 0, (x `mod` 5) > 0, (x `mod` 2) > 0]

-- Combinations
let prodTable = [[x * y | x <- [1..10]]| y <- [1..10]] -- [[1,2..10], [2,4..20]..[10,20..100]]
let prodList = [x * y | x <- [1..10], y <- [1..10]] -- [1,2..10,2,4..20..10,20..100]

-- Other items, get length of list (custom)
length' xs = sum [1| _ <- xs] -- _ is a thowaway variable


-- Tuples, unlike lists tuples can be collections of non homogenous items.
-- Each tuple defines its own type so ie (2, 2) is a tuple of two integers.
[[1, 2], [1, 2, 3], [1, 2, 3, 4]] -- valid as it's a list of lists
-- [(1, 2), (1, 2, 3), (1, 2, 3, 4)] -- not valid as list must contain the same type of data

-- fst, snd, zip
let at = (1, 2, 3)
let bt = (4, 5, 6)
fst at -- 1
snd bt -- 5
zip a b -- [(1, 4), (2, 4), (3, 6)]

-- Problem: get list of right triangles with perimeter equal to 24 and side length < 10
let triangles = [(a, b, c) | a<-[1..10], b<-[1..10], c<-[1..10]]
let righttriangle = [(a, b, c)| c<-[1..10], b<-[1..c], a<-[1..b], a+b+c == 24, a^2 + b^2 == c^2]


