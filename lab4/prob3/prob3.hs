reverse' :: [a] -> [a]
reverse'=  foldl (flip (:)) []

main = do
    print $ reverse' [11,22,33,44]