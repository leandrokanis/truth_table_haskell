module Functions where

type Variable = Char
data LogicExpr
   = Var Variable
   | Neg LogicExpr
   | Conj LogicExpr LogicExpr
   | Disj LogicExpr LogicExpr
   | Impl LogicExpr LogicExpr
   deriving (Eq, Ord)