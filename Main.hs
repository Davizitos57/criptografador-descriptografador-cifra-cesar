module Main where

import Criptografia
import Descriptografia

main :: IO ()
main = do
    putStrLn "=== Cifra de César ==="
    
    -- Recebe a entrada como String
    putStr "Digite a mensagem: "
    mensagem <- getLine
    
    putStr "Digite o valor de deslocamento: "
    -- Lê a linha e converte para Int
    deslocamento <- readLn :: IO Int
    
    putStrLn "\nEscolha uma opção:"
    putStrLn "1 - Criptografar"
    putStrLn "2 - Descriptografar"
    putStr "Opção: "
    opcao <- getLine
    
    case opcao of
        "1" -> do
            let resultado = criptografar deslocamento mensagem
            putStrLn $ "\nMensagem Criptografada: " ++ resultado
            
        "2" -> do
            let resultado = descriptografar deslocamento mensagem
            putStrLn $ "\nMensagem Descriptografada: " ++ resultado
            
        _ -> putStrLn "\nOpção inválida. Tente novamente."