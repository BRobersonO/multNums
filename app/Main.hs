module Main where

import           MultNums

main :: IO ()
main = do
  putStrLn "Enter first argument"
  a <- getLine
  putStrLn "Enter second argument"
  b <- getLine

  let result = strAddInts a b

  putStrLn (displayResult result)

displayResult :: Either String Int -> String
displayResult (Left  addError) = "error: " ++ show addError
displayResult (Right res     ) = "answer: " ++ show res

