import Functions
import Evaluate
import GetVariables
import Unduplicate
import Combinations
import Truthtable
import Operators
import PrintTable

main = do
    printtbl $ truthtable $ read "not ((A or B) and (A or C) and (B or C))"