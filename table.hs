import Functions
import Evaluate
import GetVariables
import Unduplicate


main = do
    printtbl $ truthtable $ read "(a -> b) & (b -> a)"