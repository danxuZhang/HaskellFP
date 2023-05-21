module Hanoi where

type Peg = String
type Move = (Peg, Peg)

-- The tower of Hanoi
-- Moves n discs from a to b using c as temporary storage
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi n a b c
 | n <= 0       = []
 | n == 1       = [(a, b)]
 | otherwise    = hanoi (n-1) a c b ++ hanoi 1 a b c ++ hanoi (n-1) c b a 

