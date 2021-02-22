# AnalizadorLexico
Programacion Declarativa - UNIVERSIDAD BLAS PASCAL

5/02/2021
 - IBAZETA, Jimena 
 - SPECIA, Santiago
 

Creacion de un Analizador Lexico para un programa de Java, desarrollado con Haskell!

  En el siguiente proyecto se desarrollará un analizador léxico que es la primera fase de un compilador, 
consistente en un programa que recibe como entrada el código fuente de otro programa (secuencia de caracteres)
y produce una salida compuesta de tokens (componentes léxicos) o símbolos. 
Estos tokens sirven para una posterior etapa del proceso de traducción, siendo la entrada para el analizador sintáctico (en inglés parser).

COMO LO PROBAMOS !  (windows): 
  1 - Abrir cmd
  2- Situarse en la carpeta Analizador (cd Analizador)
  3- cabal configure (Requiere tener instalado previamente cabal)
  4- cabal build 
  5- Copie la ruta dist\build\Analizador\Analizador.exe y pegue 
  6- Ya esta ejecutando el programa, ahora solo debe ingresar el archivo a ser analizado (java.txt)
