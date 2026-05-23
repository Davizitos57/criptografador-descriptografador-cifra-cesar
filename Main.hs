module Main where

import Criptografia
import Descriptografia

main :: IO ()
main = do
    putStrLn "Digite a mensagem:"
    mensagem <- getLine 
    putStrLn "Resultado:"
    putStrLn mensagem