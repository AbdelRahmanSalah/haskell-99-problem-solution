-- Find the last but one element of a list.

-- function composition 
-- head . tail . reverse = head(tail(reverse(xs)))
-- myButLast [1,2,3,4] should return 3

-- myButLast using built in methods  
myButLast :: [a] -> Maybe a
myButLast xs 
  | (length xs) == 0 = Nothing
  | otherwise        = Just $ comFun xs
                         where comFun = head . tail . reverse 

-- myButLastRec using recursion, pattern matching and if..then..else expression 
myButLastRec :: [a] -> Maybe a
myButLastRec [] = Nothing
myButLastRec (x:xs) = if (length xs) == 1
                        then Just x
                        else myButLastRec xs


-- myButLastRec using recursion and case..of expression 
myButLastRecC :: [a] -> Maybe a
myButLastRecC xs = 
  case xs of
    []     -> Nothing 
    (y:ys) -> case length ys of
                1 -> Just y
                _ ->  myButLastRecC ys

