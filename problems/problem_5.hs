-- Reverse a list
myReverse :: [a] -> [a] 
myReverse [] = []
myReverse (y:ys) = myReverse ys ++ [y]