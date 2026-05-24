module Descriptografia where

descriptografar :: String -> Int -> String
descriptografar msg deslocamento = map (deslocaChar deslocamento) msg
-- --> Alternativa mais simples e eficiente:
-- descriptografar msg deslocamento = criptografar msg (-deslocamento)

deslocaChar :: Int -> Char -> Char
deslocaChar i c
    | c >= 'A' && c <= 'Z' = toEnum (((fromEnum c - fromEnum 'A' - i) `mod` 26) + fromEnum 'A') 
    | c >= 'a' && c <= 'z' = toEnum (((fromEnum c - fromEnum 'a' - i) `mod` 26) + fromEnum 'a') 
    | otherwise = c