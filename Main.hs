module Main where

import Criptografia
import Descriptografia

main :: IO ()
main = do
  putStrLn "\n=== Cifra de César ==="
  menu

menu :: IO ()
menu = do
  putStrLn "1 - Digitar Mensagem"
  putStrLn "2 - Rodar Testes Pré-Definidos"
  putStrLn "0 - Sair do Programa"
  putStr "Opção: "
  escolha <- getLine

  case escolha of
    "1" -> do
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
    "2" -> do
      testes
      main
    "0" -> do
      putStrLn "Saindo do sistema..."

-- Função auto-executável de testes para mostrar o poder do código
testes :: IO ()
testes = do
  putStrLn "\n--- Exemplos de Testes Automáticos Pré-Definidos ---"

  let msg1 = "CASA"
  let c1 = criptografar 3 msg1
  putStrLn $ "Teste 1: " ++ msg1 ++ " = " ++ c1 

  let msg2 = "ZEBRA"
  let c2 = criptografar 10 msg2
  putStrLn $ "Teste 2: " ++ msg2 ++ " = " ++ c2 

  let msg3 = "OLA, MUNDO!"
  let c3 = criptografar 5 msg3
  putStrLn $ "Teste 3: " ++ msg3 ++ " = " ++ c3  

  let msg4 = "FDVD"
  let c4 = descriptografar 3 msg4
  putStrLn $ "Teste 4: " ++ msg4 ++ " = " ++ c4 

  let msg5 = "TQF, RZSIJ!"
  let c5 = descriptografar 5 msg5
  putStrLn $ "Teste 5: " ++ msg5 ++ " = " ++ c5 

  putStrLn "----------------------------------------------------\n"