module Evaluate where
import Functions
import Data.Maybe (fromJust)

-- evaluates an expression
evaluate :: LogicExpr -> [(Variable, Bool)] -> Bool
evaluate (Var v) bs      = fromJust (lookup v bs)
evaluate (Neg e) bs      = not (evaluate e bs)
evaluate (Conj e1 e2) bs = evaluate e1 bs && evaluate e2 bs
evaluate (Disj e1 e2) bs = evaluate e1 bs || evaluate e2 bs
evaluate (Impl e1 e2) bs = not (evaluate e1 bs) || evaluate e2 bs