module Unduplicate where
import Data.List (nub)
import Functions
import GetVariables

-- get variables in an expression without duplicates
vars :: LogicExpr -> [Variable]
vars = nub . varsp