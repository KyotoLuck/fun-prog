dupli  :: [a] -> [a]
dupli = foldr' (\ x xs -> x : x : xs) []

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f z []     = z
foldr' f z (x:xs) = f x (foldr' f z xs) 

main = do
    print . dupli $ "max"
    print . dupli $ [4, 3, 2, 1, 5, 47]
