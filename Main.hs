module Main where

import Criptografia
import Descriptografia

main :: IO ()
main = do
    putStrLn "\n=== Cifra de César ==="
    menu

menu :: IO ()
menu = do 
    putStr "Digite a mensagem: "
    mensagem <- getLine
    
    putStr "Digite o valor de deslocamento: "
    deslocamento <- readLn :: IO Int
    
    putStrLn "\nEscolha uma opção:"
    putStrLn "1 - Criptografar"
    putStrLn "2 - Descriptografar"
    putStrLn "Para sair do sistema basta digitar o número 0"
    putStr "\nOpção: "
    opcao <- getLine
    
    case opcao of
        "0" -> do
            putStrLn "Saindo do sistema de Criptografia e Descriptografia..."

        "1" -> do
            let resultado = criptografar deslocamento mensagem
            putStrLn $ "\nMensagem Criptografada: " ++ resultado
            main
            
        "2" -> do
            let resultado = descriptografar deslocamento mensagem
            putStrLn $ "\nMensagem Descriptografada: " ++ resultado
            main
            
        _ -> do
            putStrLn "\nOpção inválida. Tente novamente."
            main