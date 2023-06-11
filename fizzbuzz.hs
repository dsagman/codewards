main::IO()
main = print $ fizzbuzz [] 0 100

fizzbuzz :: [String] -> Int -> Int -> [String]
fizzbuzz _ i n = map fizzbuzz' [i .. n]
    where fizzbuzz' n
            | n `mod` 15 == 0 = "fizzbuzz"
            | n `mod` 3 == 0 = "fizz"
            | n `mod` 5 == 0 = "buzz"
            | otherwise = show n

-- we don't need the empty accumulator
-- could be fizzbuzz :: Int -> Int -> [String]

-- fizzbuzz :: [String] -> Int -> Int -> [String]
-- fizzbuzz acc i n
--   | n < i = acc
--   | otherwise = fizzbuzz (s : acc) i (n - 1)
--   where
--     s = case (mod n 3, mod n 5) of
--       (0, 0) -> "fizzbuzz"
--       (0, _) -> "fizz"
--       (_, 0) -> "buzz"
--       _ -> show n

-- fizzbuzz :: [String] -> Int -> Int -> [String]
-- fizzbuzz _ i n = map fizzbuzz' [i .. n]  
--   where
--     fizzbuzz' n = case (mod n 3, mod n 5) of
--         (0, 0) -> "fizzbuzz"
--         (0, _) -> "fizz"
--         (_, 0) -> "buzz"
--         _ -> show n

>>> fizzbuzz [] 1 40
["1","2","fizz","4","buzz","fizz","7","8","fizz","buzz","11","fizz","13","14","fizzbuzz","16","17","fizz","19","buzz","fizz","22","23","fizz","buzz","26","fizz","28","29","fizzbuzz","31","32","fizz","34","buzz","fizz","37","38","fizz","buzz"]  
  

