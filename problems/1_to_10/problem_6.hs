-- Find out whether a list is a palindrome. A palindrome can be read forward or backward

-- to complex solution
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome (x:xs) = if x == (last xs)
                        then if (length xs) == 2
                            then True
                            else if  (length xs) == 3
                                then (head xs) == head(tail(reverse(xs)))
                            else isPalindrome xs
                        else False

-- isPalindrome more simple solution
isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = False
isPalindrome' xs = xs == (reverse xs)
             