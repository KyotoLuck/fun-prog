myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:t) = myReverse(t) ++ [x]
main = do
    print(myReverse [2,4,1,3])