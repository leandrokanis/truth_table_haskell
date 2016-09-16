module PrintTable where
import Functions

showcell :: (Variable, Bool) -> String
showcell (v,b) = v : "=" ++ show b

showrow :: [(Variable, Bool)] -> Bool -> String
showrow []     b = show b
showrow [a]    b = showcell a ++ " => " ++ show b
showrow (a:as) b = showcell a ++ " && " ++ showrow as b

printrow :: ([(Variable, Bool)], Bool) -> IO ()
printrow = putStrLn . uncurry showrow

printtbl :: [([(Variable, Bool)], Bool)] -> IO ()
printtbl = mapM_ printrow