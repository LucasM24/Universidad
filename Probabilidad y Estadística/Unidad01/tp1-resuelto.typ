+ Dar un espacio muestral $(Omega)$ adecuado para los siguientes experimentos:
  #set enum(numbering: "Ex1:")
  + "Lanzar una moneda una vez"

    $Omega = {C, X}$

  + "Lanzar una moneda dos veces"

    $Omega$ = {CC, CX, XX}

  + "Lanzar una moneda 4 veces"

    $Omega$ = {CCCC, CCCX, CCXX, CXXX, XXXX}

  + "Extraer 2 cartas de un mazo de 40 y observar el palo"

    $Omega$ = { (x, y)/ x = Trebol, Diamante, Pica, Corazón, y = Trebol,
    Pica, Diamante, Corazón }

  + "Extraer al azar una bolilla de una caja que contiene bolillas
    rojas, blancas y azules"

    $Omega$ = { Blanca, Roja, Azul }

+ Considere el experimento aleatorio de arrojar un dado y registrar el número que sale:
  #set enum(numbering: "a.")

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
    suceso elemental es de $1/(\#Omega)$, siendo $\#Omega = 6$
    tenemos que cada suceso tiene una probabilidad de 1/6 de ocurrir.

  + Calcule las siguientes probabilidades:
    #set enum(numbering: "i.")

    Sea un suceso $A$, $A subset.eq Omega$ entonces la probabilidad
    de ocurrencia de $A$ es: $ P(A) = (\#A)/(\#Omega) $

    + Obtener un 4

        Sea $A = { 4 } arrow.r.double P(A) = 1/6$

    + Obtener un número menor o igual a 6

        Sea $A = {1, 2, 3, 4, 5, 6} arrow.r.double P(A) = 6/6 = 1$

    + Obtener un número impar

        Sea $A = {1, 3, 5} arrow.r.double P(A) = 3/6$

+ Considere el experimento aleatorio de arrojar dos dados

  #set enum(numbering: "a.")
  + Defina y represente el espacio muestra $Omega$ y verifique que
    su cardinal es 36

      $Omega = {(x, y) \/ x = 1, 2, 3, 4, 5, 6, y = 1, 2, 3, 4, 5,
      6}$

  + Indique todos los sucesos elementales del $Omega$

  + Indique si el espacio muestra es o no equiprobable

  + Calcule las probabilidades de los siguientes sucesos:

    #set enum(numbering: "i.")
    + A: Obtener una suma igual a 8
      
      Sea el suceso $A = {(x, y) in Omega \/ x + y = 8}$ 

      $P(A) = {(4, 4), (2, 6), (6, 2)}$

      $P(A) = 3/36 = 1/12$

    + B: Obtener una suma mayor o igual a 10

      Sea el suceso $B = {(x, y) in Omega \/ x + y > 10}$

      $P(B) = {(6, 5), (5, 6), (6, 6)}$

      $P(B) = 3/36 = 1/12$

    + C: El producto de ambos dados es igual a 6

      Sea el suceso $C = {(x, y) in Omega \/ x dot.op y > 10}$

      $P(C) = { (6, 5), (5, 6), (6, 6) }$

      $P(C) = 3/36 = 1/12$

    + D: Que ambos números sean distintos entre sí.

      Sea el suceso $D = {(x, y) in Omega \/ x eq.not y > 10}$

      Sea $A = {(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6,6)}$

      $P(D) = 1 - P(A)$

      $P(D) = 1 - 1/6 = 5/6$

+ Según la declaración de un importador de automóviles, en el último embarque había 9 autos blancos,
  8 rojos y 3 negros.
    // Falta definir el espacio muestra y  centrar lo que está debajo
  B: El auto es blanco; R: El auto es rojo; N: El auto es negro;

  $P(B) = 9/20 P(R) = 8/20 P(N) = 3/20$

  #set enum(numbering: "a.")
  + Calcule la probabilidad de que, al seleccionar un auto al azar, sea de color blanco o rojo. 

      $P(B union R) = 9/20 dot.op 8/20 = 17/20$

  + Si se seleccionan tres autos con reposición, ¿cuál es la probabilidad de que todos sean rojos?

      $P(R_1 sect R_2 sect R_3) = 8/20 dot.op 8/20 dot.op 8/20 = 0.064$

  + Ídem a b. pero sin reposición.

      $P(R_1 sect (R_2\/R_1) sect (R_3 \/ R_2)) = 8/20 dot.op 7/19 dot.op 6/18 = 0.064$

  + Si se seleccionan tres autos sin reposición, ¿cuál es la probabilidad de que dos sean rojos y uno blanco?

      // $P((B sect R)) = 8/20 dot.op 7/19 dot.op 6/18 = 0.064$
      $P(B_1 R_2 R_3) + P(R_1 R_2 B_3) + P(R_1 B_2 R_3) = 9/20 dot.op 8/19 dot.op 7/18 + 8/20 dot.op
      7/19 dot.op 9/18 + 8/20 dot.op 9/19 dot.op 7/18 = 0,221$
      
