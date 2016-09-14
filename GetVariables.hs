module GetVariables where
import Functions

-- get variables in an expression
varsp :: LogicExpr -> [Variable]
varsp (Var v)      = [v]
varsp (Neg e)      = varsp e
varsp (Conj e1 e2) = varsp e1 ++ varsp e2
varsp (Disj e1 e2) = varsp e1 ++ varsp e2
varsp (Impl e1 e2) = varsp e1 ++ varsp e2