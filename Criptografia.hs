module Criptografia where    

deslocaChar :: Int -> Char -> Char
deslocaChar i c
    | c >= 'A' && c <= 'Z' = toEnum (((fromEnum c - fromEnum 'A' + i) `mod` 26) + fromEnum 'A') 
    | c >= 'a' && c <= 'z' = toEnum (((fromEnum c - fromEnum 'a' + i) `mod` 26) + fromEnum 'a') 
    | otherwise = c
    