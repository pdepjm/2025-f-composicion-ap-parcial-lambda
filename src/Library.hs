module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero


losDeMayorLongitud :: Number -> [String] -> [String]
losDeMayorLongitud longitud = filter (esDeMayorLongitud longitud)

esDeMayorLongitud :: Number -> String -> Bool
esDeMayorLongitud longitud palabra = length palabra > longitud

restar :: Number -> Number -> Number
restar = (-)

restar50 :: Number -> Number
restar50 = (+ (-50))

restar50' :: Number -> Number
restar50' = ((-) 50) 


doble' :: Number -> Number
doble' = (2 *)

agregarlePepitos :: [String] -> [String]
agregarlePepitos = (++ ["Pepito", "Pepita"])

agregarlePepitos' :: [String] -> [String]
agregarlePepitos' = (["Pepito", "Pepita"] ++)


losPrincipios :: [String] -> [String]
losPrincipios = map (take 3)

sumaTotal :: Number -> [Number -> Number] -> Number
sumaTotal n calculos = sum (map ($ n) calculos)



--losDeMenorLongitud :: Number -> [String] -> [String]
--losDeMenorLongitud longitud = filter (length > longitud)


dobleDeLaSuma :: Number -> Number
dobleDeLaSuma = (*2) . (+1)

dobleDelTamanio :: [a] -> Number
dobleDelTamanio = (2 *) . length

falopa :: [a] -> Bool
falopa = not . even . (+1) . (^ 2) . length


-- (.) :: (a -> b) -> (c -> a) -> (c -> b)
funcionLoca :: [Number] -> Number
funcionLoca = sum . map  ((+1) . (*2))


esImpar :: Number -> Bool
esImpar = not . even

--calculoCopado :: Number -> Number
--calculoCopado = (50 (-) ) . (* 2) . (+ 100)

calculoCopado' x = 50 - (x + 100) * 2

palabrasPares :: [String] -> [String]
palabrasPares palabras = filter (even . length) palabras

palabrasPares' :: [String] -> [String]
palabrasPares' = filter (even . length)

palabrasPares'' :: [String] -> [String]
palabrasPares'' palabras = filter esParLongitud palabras

esParLongitud :: String -> Bool
esParLongitud = even . length

losDeMayorLongitud'' :: Number -> [String] -> [String]
losDeMayorLongitud'' longitud palabras = filter (\x -> length x > longitud) palabras 

restar50 = (\x -> x - 50)

esImpar = (\x -> not (even x))

palabrasPares :: [String] -> [String]
palabrasPares palabras = filter (\x -> even (length x)) palabras

suma = (\x y -> x + y)

funcionNoMuyLoca :: Number -> Number
funcionNoMuyLoca x = x + numeroCopado
    where numeroCopado = 3