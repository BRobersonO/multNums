module MultNums where

import              Data.Char

isAllDigits :: String -> Bool 
isAllDigits "" = False
isAllDigits val = all (== True) $ map isDigit val

strAddInts :: String -> String -> Either String Int
strAddInts a b
  | isAllDigits a && isAllDigits b       = Right (read a * read b)
  | not (isAllDigits a || isAllDigits b) = Left "Both args are wrong"
  | not (isAllDigits a)                  = Left "First arg is wrong"
  | otherwise                            = Left "Second arg is wrong"