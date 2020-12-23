import MultNums
import Data.Char
import Test.QuickCheck

prop_isAllDigit :: String -> Bool 
prop_isAllDigit val = if isAllDigits val || val == ""
    then onlyDigit == length val
    else onlyDigit /= length val
    where onlyDigit = length $ filter isDigit val


main :: IO ()
main = do
    quickCheckWith stdArgs { maxSuccess = 1000 } prop_isAllDigit
    putStrLn "Done"
    -- putStrLn ""
    -- putStrLn $ if isAllDigits "123" then "OK" else "FAIL!"
    -- putStrLn $ if not $ isAllDigits "4st" then "OK" else "FAIL!"
    -- putStrLn $ if not $ isAllDigits "123_4" then "OK" else "FAIL!"
    -- return()