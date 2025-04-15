#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

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
+ En un grupo de 100 personas, 50 escuchan las noticias por radio, 70 ven las noticias por TV y 30 escuchan la radio y ven la TV. Calcula las probabilidades de los siguientes sucesos:      

  #table(
    columns: 4,
    [],[*R*], [*NoR*],[*Total*],
    [*Tv*],[30], [40],[70],
    [*NoTv*],[20], [10],[30],
    [*Total*],[50], [50],[100],
  )

  #set enum(numbering: "a.")
  + No escucha la radio y no ve la TV.

    $P("NoR" sect "NoTv") = 10/100 = 0,1$

  + Escucha la radio, pero no ve la TV.

    $P("R" sect "NoTv") = 20/100 = 0,2$

  + Escucha la radio o ve la TV.

    $P("R" union "Tv") = 50/100 + 70/100 - 30/100= 0,5 + 0,7 - 0,3 = 0,9$

+ Tres urnas contienen: A: una bolilla blanca y dos negras B: tres blancas y
  una negra C: dos blancas y tres negras. Se extrae una bolilla al azar de cada urna.

  // Falta representar el espacio muestra
   - ¿Cuál es la probabilidad de que entre las tres bolillas haya dos blancas y una negra?

        $P(B_1B_2N_3) + P(B_1N_2B_3) + P(N_1B_2B_3) = 1/3 dot.op 3/4 dot.op 3/5 + 1/3
        dot.op 1/4 dot.op 2/5 + 2/3 dot.op 3/4 dot.op 2/5 = 0,15 + 0,033 + 0,2 =
        0,383$

  // Entonces la probabilidad de que al sacar tres bolillas al azar de cada urna haya dos blancas y una negra es es $38,3%$

+ Se tienen dos bolilleros (S y T): el primero tiene 3 bolillas azules y 5
  blancas, el segundo tiene 4 azules y 4 blancas. Se extrae una bolilla de “S”
  y se coloca sin verla en “T”.

  #v(40pt)
  #align(center)[

  #diagram(
    debug: 0,
    node((0,1), $Omega$, name: <S>),
    node((1,0.25), $A$, name: <A>),
    node((1,1.75), $B$, name: <B>),
    node((2,-0.15), $A$, name: <E>),
    node((2, 0.75), $B$, name: <F>),
    node((2,2), $B$, name: <C>),
    node((2,1), $A$, name: <D>),
    edge(<S>, <A>, "->", label: $3/5$),
    edge(<S>, <B>, "->", label: $2/5$, label-sep: -20pt),
    edge(<A>, <E>, "->", label: $5/9$,),
    edge(<A>, <F>, "->", label: $4/9$, label-sep: -20pt),
    edge(<B>, <D>, "->", label: $4/9$, label-sep: 0pt),
    edge(<B>, <C>, "->", label: $5/9$, label-sep: -20pt),
  )]

  #set enum(numbering: "a.")
  + ¿Cuál es la probabilidad de que al extraer una bolilla de “T” resulte blanca?

    $P(B_1B_2) = 3/5 dot.op 5/9 + 2/5 dot.op 5/9 = 0,4888 = 48,88%$ 

  + Si se saca una bolilla de “T” y resulta ser blanca. ¿Cuál es la
    probabilidad de que la bolilla pasada de “S” a “T” fuese blanca?

    $P(B/B) = 2/5 dot.op 5/9 = 0,3472 = 34,72%$

+ Ejercicio 8

  D1: Diseño 1, D2: Diseño 2

  $P("D1") = 0,6 dot.op 0,6 + 0,6 dot.op 0,6 = 0,72 = 72%$

  $P("D2") = 0,6 dot.op 0,6 dot.op 0,6 = 0,216 = 21,6%$

  Luego podemos ver que en el diseño 1 la corriente tiene un 72% de
  probabilidad de circular entre el punto a y el punto b frente al 32,6% que
  ofrece el diseño 2. Por lo tanto el ingeniero debe escoger el diseño 1.

+ La probabilidad de que aumenten las ventas de automóviles para el próximo mes (A) es
  estimada en 0.4. La probabilidad de que aumente la venta de repuestos (R) se calcula en 0.5. La
  probabilidad de que ambas industrias experimenten un aumento en las ventas se calcula en 0.1.

  // Siendo $Omega$:
  // #align(center)[
  //   #table(
  //     columns: 4,
  //     [],[*A*], [*NoA*],[*Total*],
  //     [*R*],[0,1], [0,4],[0,5],
  //     [*NoR*],[0,3], [0,2],[0,5],
  //     [*Total*],[0,4], [0,6],[1],
  //   )
  // ]

  #set enum(numbering: "a.")
  + Calcular la probabilidad de que:
    #set enum(numbering: "i.")
    + Aumente las ventas de automóviles, dado que ha aumentado las ventas de repuestos.

      $P(A\/R) =  P(A sect R ) \/ P(A) = 0,1 \/ 0,4 = 0,25$

      La probabilidad de que aumente la venta de automóviles dado que aumento
      la venta de repuestos es de 25%

    + Aumente la venta de repuestos si la venta de automóviles se ha incrementado durante el mes.

      $P(R\/A) =  P(A sect R ) \/ P(R) = 0,1 \/ 0,5 = 0,2$

      La probabilidad de que aumente la venta de repuestos dado que aumentó la
      venta de automóviles es de 20%

    + Determinar si los eventos son excluyentes

      A y R son excluyentes sí: $A sect R eq emptyset$

      Como $P(A sect R) = 0,1$ entonces los sucesos no son excluyentes.

  + Determinar si los eventos son o no independientes

    Sí A y R son independientes entonces $P(A sect R) = P(A) dot.op P(R)$

    $P(A) = 0,4$

    $P(R) = 0,5$

    $P(A sect R) = 0,1$

    Como $P(A sect R) eq.not P(A) dot.op P(R)$ entonces A y R no son indenpendientes.

+ Tres máquinas producen respectivamente el 50%, el 30% y el 20% de la
  producción total de la fábrica. El porcentaje de producción defectuosa de
  estas máquinas es respectivamente: el 3%, 4% y 5%. Se selecciona un artículo
  al azar:

    #v(6pt)
    #align(center)[
      #diagram(
        debug: 0,
        node((0,1), $Omega$, name: <A>),
        node((1,0), $M_1$, name: <B>),
        node((1,1), $M_2$, name: <C>),
        node((1,2), $M_3$, name: <D>),
        node((2, -0.25), "D", name: <E>),
        node((2, 0.25), "ND", name: <F>),
        node((2, 0.75), "D", name: <G>),
        node((2, 1.25), "ND", name: <H>),
        node((2, 1.75), "D", name: <I>),
        node((2, 2.25), "ND", name: <J>),
        edge(<A>, <B>, "->", label: $0,5$),
        edge(<A>, <C>, "->", label: $0,3$, label-sep: -15pt),
        edge(<A>, <D>, "->", label: $0,2$, label-sep: -30pt),
        edge(<B>, <E>, "->", label: $0,03$, label-anchor: "south"),
        edge(<B>, <F>, "->", label: $0,97$, label-anchor: "north", label-sep: -5pt),
        edge(<C>, <G>, "->", label: $0,04$, label-anchor: "south"),
        edge(<C>, <H>, "->", label: $0,96$, label-anchor: "north", label-sep: -4pt),
        edge(<D>, <I>, "->", label: $0,05$, label-sep: 0pt),
        edge(<D>, <J>, "->", label: $0,95$, label-anchor: "north", label-sep: -4pt),
      )
    ]

  #set enum(numbering: "a.")
  + ¿Cuál es la probabilidad de que resulte defectuoso?
    
    $P(D) = P(M_1 sect D) + P(M_2 sect D) + P(M_3 sect D) =$

    #h(30pt) $= 0,5 dot.op 0,03 + 0,3 dot.op 0,04 + 0,2 dot.op 0,05 =$

    #h(30pt) $= 0,015 + 0,012 + 0,01 = 0,037%$

    La probabilidad de seleccionar un articulo al azar y que dicho articulo sea
    defectuoso es del 3,7%

  + Si el artículo resultó ser defectuoso, ¿cuál es la probabilidad de que lo
    haya producido la Máquina 1?

    $P(D\/M_1) = P(D sect M_1) / P(D) = (0,5 dot.op 0,03) / (0,037) = (0,015) / (0,037) = 0,4054$

    Si seleccionamos un articulo al azar y es defectuoso hay una probabilidad
    del 40,54% que ese articulo haya sido producido por la máquina 1.
