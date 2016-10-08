-- problem 1 last element in the list

-- Last element by compose preload builtin function with guards 
myLast :: [a] -> Maybe a
myLast xs 
  | (length xs) == 0 = Nothing
  | otherwise        = Just $ last xs


-- Last element pattern matching style
myLastRecP :: [a] -> Maybe a 
myLastRecP []     = Nothing
myLastRecP (y:ys) = if (length ys) == 0
		     then Just y
		     else myLastRecP ys


-- Last element by case of style 
myLastRecC :: [a] -> Maybe a
myLastRecC xs = 
  case xs of
     []     -> Nothing
     (y:ys) -> case length ys of
		 0 -> Just y
	         _ -> myLastRecC ys

 
