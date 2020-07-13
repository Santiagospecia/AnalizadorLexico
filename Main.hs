module Main where
import System.IO



--Definimos un nuevo tipo de dato, estos van a ser nuestros tokens :

data Tokens = EOF   | --Tiene éxito si estamos al final de la entrada
              ID    String | -- nombre
              TIPO  String | --tipo de dato
              OPERADOR Char| -- Rerencia a los operadores aritmeticos + - * /
              LOGICOS String | -- Referencia a los operadores logicos > < == etc.
              DIGITO String  | -- Números
              CADENA String  |  -- Palabras
              CONDICIONALES String | --Operadores condicionales for, while, if, else, etc. 
              DECLARACIONES String |
              PROTOTIPOS String 
              deriving (Show)  


analizer :: String ->[Tokens]


tipoToken :: String -> Tokens
tipoToken "void" = TIPO "void"
tipoToken "int" = TIPO "int"
tipoToken "string" = TIPO "string"
tipoToken "float" = TIPO "float"
tipoToken "double" = TIPO "double"
tipoToken "char" = TIPO "char"
tipoToken "long" = TIPO "long"
tipoToken "boolean" = TIPO "boolean"
tipoToken "short" = TIPO "short"
tipoToken "byte" = TIPO "byte"
tipoToken "if" = CONDICIONALES "if"
tipoToken "else" = CONDICIONALES "else"
tipoToken "while" = CONDICIONALES "while"
tipoToken "do" = CONDICIONALES "do"
tipoToken "for" = CONDICIONALES "for"


espacio simb = simb <= ' ' 




main :: IO ()
main =  do
    putStrLn "-----------------------------------"
    putStrLn "      Welcome to our analyzer!     "
    putStrLn "-----------------------------------"
    putStrLn "Enter the file name: " 
    fileName <- getLine    --Lee una linea de texto y se la asigna a la variable fileName (aqui ingresamos el nombre del fichero)
    handle <- openFile fileName ReadMode --tomamos la ruta del fichero y devuelve una accion de E/S
    contents <- hGetContents handle     -- lee el contenido
    putStr contents
    hClose handle --Cerramos el fichero!
