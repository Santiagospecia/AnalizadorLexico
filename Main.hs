module Main where
import System.IO

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
