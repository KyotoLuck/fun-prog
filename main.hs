data Root = Two Double Double | One Double | NoRoot deriving Show


solveEq :: Double -> Double -> Double -> Root 
solveEq a b c | d > 0.0 = (Two (((-b) + (sqrt d))/(2.0*a)) (((-b) - (sqrt d))/(2.0*a)))
               | (d < 0.0 || a == 0) = NoRoot
               | otherwise = (One ((-b) / (2.0*a)))
                 where d =b*b-4.0*a*c
    
main = do
    a <- getLine
    b <- getLine
    c <- getLine
    print $ solveEq (read a :: Double) (read b :: Double) (read c :: Double)
    
