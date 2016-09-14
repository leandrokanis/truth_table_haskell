module Truthtable where
import Functions
import Evaluate
import Combinations
import Unduplicate

-- picks an expression and sets variable assignments for avaluation
truthtable :: LogicExpr -> [([(Variable, Bool)], Bool)]
truthtable e = [(bs, evaluate e bs) | bs <- booltable (vars e)]

-- used for reading infix for a right associative
readInfix opprec constr repr prec r
   = readParen (prec > opprec)
     (\r -> [(constr e1 e2, u) |
             (e1,s) <- readsPrec (opprec+1) r,
             (op,t) <- lex s,
             op == repr,
             (e2,u) <- readsPrec (opprec) t]) r