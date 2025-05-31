module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

lasDeMayorLongitud :: Number -> [String] -> [String]
lasDeMayorLongitud nro palabras = filter (mayorLongitud nro) palabras  

mayorLongitud :: Number -> String -> Bool
mayorLongitud nro palabra = length palabra > nro

lasDeMayorLongitud2 :: Number -> [String] -> [String]
lasDeMayorLongitud2 nro = filter ((>nro).length)  

lasDeMayorLongitud3 :: Number -> [String] -> [String]
lasDeMayorLongitud3 nro = filter (\palabra -> length palabra > nro) 
 
-- EJERCICIOS :)

-- ----------- Parte 1

-- Ejercicio 1

-- Opcion 1
restarCant :: Number -> Number -> Number
restarCant nro delta = nro - delta

restar50 :: Number -> Number
restar50 = restarCant 50 

-- Opcion 2
restarle50:: Number -> Number
restarle50 = (-) 50 


-- Ejercicio 2

agregarlePepitos :: [String] -> [String]
agregarlePepitos = (++) ["pepito" , "pepita"]

-- Ejercicio 3

elFinal :: String -> String
elFinal palabra = drop (letrasMenos 2 palabra) palabra

letrasMenos :: Number -> String -> Number
letrasMenos nro palabra = length palabra - nro

-- Ejercicio 4

losPrincipios :: [String] -> [String]
losPrincipios = map (take 3)

{-

Implementar la función lasDeMenorLongitud :: Number -> [String] -> [String], sin delegar en nuevas funciones.


COMPOSICIÓN: construimos funciones nuevas a partir de la aplicación sucesiva de funciones existentes. 

Restricción: imagen de la 1ra debe coincidir con el dominio de la 2da. 

Ventaja: construir funciones sin tener que definirlas. 

g (f x) = (g.f) x

EJEMPLO: 

cuadruple = doble . doble


-}

cuadruple = doble . doble



-- ----------- Parte 2

esImpar :: Number->Bool
esImpar   =  not.even 


calculoCopado ::Number->Number
calculoCopado  =  restarle50.doble.sumar100

sumar100 = (+100)


palabrasPares:: [String] ->[String]
palabrasPares = filter (even.length)

--cuantosCopadosMenoresA :: Number->[Number]->Number
cuantosCopadosMenoresA  limite  = length.filter (menorAlLimite limite) 

calculoReCopado :: Number->Number
calculoReCopado  = (10 - ).calculoCopado

calculoReCopadoAhoraDeVerdad :: Number->Number
calculoReCopadoAhoraDeVerdad = (\n -> n - 10 ).calculoCopado

{-
EXPRESIONES LAMBDA
(\n -> (<limite).(10 - ).calculoCopado n )

Definen funciones anonimas que se usan en un contexto limitado
son utiles cuando queremos trabajar con funciones de orden superior y no hay necesidad de usar la expresion en otro 
contexto
-}
menorAlLimite:: Number->Number->Bool
menorAlLimite limite  = (<limite).calculoReCopado  
