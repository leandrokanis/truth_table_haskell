module Combinations where
import Functions

-- all possible combinations of variable assignments
booltable :: [Variable] -> [[(Variable, Bool)]]
booltable [] = [[]]
booltable (a:as) = [(a,b) : r | b <- bools, r <- booltable as]
