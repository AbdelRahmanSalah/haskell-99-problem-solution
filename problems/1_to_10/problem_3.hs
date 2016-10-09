-- Find the K'th element of a list. The first element in the list is number 1

elementAt :: [a] -> Int -> Maybe a
elementAt xs index 
  | index < 1  = Nothing
  | index == 1 = Just $ head xs
  | otherwise = case xs of 
                  []     -> Nothing
                  (y:ys) -> elementAt ys (index -1)