 #let inlineFrac(a, b) = { return $#super(a) #h(-1pt) slash #h(-1pt) #sub(b)$ } 

+ Dar un espacio muestral $(Omega)$ adecuado para los siguientes experimentos:
  - Ex1: "Lanzar una moneda una vez"

    $Omega = {C, X}$

  - Ex2: "Lanzar una moneda dos veces"

    $Omega$ = {CC, CX, XX}

  - Ex3: "Lanzar una moneda 4 veces"

    $Omega$ = {CCCC, CCCX, CCXX, CXXX, XXXX}

  - Ex4: "Extraer 2 cartas de un mazo de 40 y observar el palo"

    $Omega$ = { (x, y)/ x = Trebol, Diamante, Pica, Corazón, y = Trebol,
    Pica, Diamante, Corazón }

  - Ex5: "Extraer al azar una bolilla de una caja que contiene bolillas
    rojas, blancas y azules"

    $Omega$ = { Blanca, Roja, Azul }

+ Considere el experimento aleatorio de arrojar un dado y registrar el número que sale:
  
  + Represente el espacio muestra

    $Omega$ = { 1, 2 ,3 ,4 , 5, 6 }

  + Indique todos los sucesos elementales de $Omega$
    - $omega$ = { 1 }
    - $omega$ = { 2 }
    - $omega$ = { 3 }
    - $omega$ = { 4 }
    - $omega$ = { 5 }
    - $omega$ = { 6 }

  + Indique si el espacio muestra es o no equiprobable

    Como el instrumento utilizado (dado) es perfecto y el juego se
    realiza correctamente, los sucesos elementales tienen la misma
    probabilidad de ocurrir por lo tanto la probabilidad de cada
    suceso elemental es de $1/(\#Omega)$, siendo $#Omega = 6$
    tenemos que cada suceso tiene una probabilidad de 1/6 de ocurrir.

  + Calcule las siguientes probabilidades:

    Sea un suceso $A$, $A subset.eq Omega$ entonces la probabilidad
    de ocurrencia de $A$ es: $ P(A) = (\#A)/(\#Omega) $

      + Obtener un 4

        Sea $A = { 4 } arrow.r.double P(A) = 1/6$

      + Obtener un número menor o igual a 6

        Sea $A = {1, 2, 3, 4, 5, 6} arrow.r.double P(A) = 6/6 = 1$

      + Obtener un número impar

        Sea $A = {1, 3, 5} arrow.r.double P(A) = 3/6$
