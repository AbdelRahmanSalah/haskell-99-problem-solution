-- Find the number of elements of a list.
myLength :: [a] -> Int
myLength [] = 0
myLength (y:ys) = 1 + myLength ys