import Functions
import Evaluate
import GetVariables
import Unduplicate
import Combinations
import Truthtable


main = do
    printtbl $ truthtable $ read "(a -> b) & (b -> a)"