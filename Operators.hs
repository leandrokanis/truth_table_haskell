module Operators where
import Functions
import Truthtable

instance Read LogicExpr where
   readsPrec prec r
      =  readInfix 1 Impl "then" prec r
      ++ readInfix 2 Disj "or" prec r
      ++ readInfix 3 Conj "and" prec r
      ++ readParen (prec > 4)
         (\r -> [(Neg e, t) |
                 ("not",s) <- lex r,
                 (e,t)   <- readsPrec 4 s]) r
      ++ readParen (prec > 5)
         (\r -> [(Var v, s) |
                 ([v], s) <- lex r]) r