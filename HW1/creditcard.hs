module CreditCard where

-- Converts positive Integers to a list of digits.
-- toDigits 1234 == [1, 2, 3, 4]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigits :: Integer -> [Integer]
toDigits x
 | x <= 0       = []
 | otherwise    = toDigits (x `div` 10) ++ [x `mod` 10]


-- Converts positive Integers to a list of digits in reverse order.
-- toDigits 1234 = [4, 3, 2, 1]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigitsRev :: Integer -> [Integer]
toDigitsRev x
 | x <= 0       = []
 | otherwise    = (x `mod` 10) : toDigitsRev(x `div` 10)


-- Double every other number beginning from the right
-- doubleEveryOther [8, 7, 6, 5] == [16, 7, 12, 5]
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = reverse . zipWith (*) (cycle [1, 2]) . reverse


-- Sum digits in a list of digits
sumDigits :: [Integer] -> Integer
sumDigits = sum . map (sum . toDigits)


-- validate a credit card number
validate :: Integer -> Bool
validate x 
 | x > 0        = (sumDigits $ doubleEveryOther $ toDigits x) `mod` 10 == 0
 | otherwise    = False

