import Functions
import Evaluate

main = do
    printtbl $ truthtable $ read "(a -> b) & (b -> a)"