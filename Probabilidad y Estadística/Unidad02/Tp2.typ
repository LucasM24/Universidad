#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1": plot, chart
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

+ Suponga que se sabe que hay 3 lámparas defectuosas en un pack de 12. Si se selecciona al azar, con
  reposición, una muestra de 2 lámparas (n=2):

    #v(30pt)
    #align(center)[
      #diagram(
        debug: 0,
        node((0,1), $Omega$, name: <A>),
        node((1,0), $D$, name: <B>),
        node((1,1), $not "D"$, name: <C>),
        node((2, -0.25), "D", name: <D>),
        node((2, 0.25), $not "D"$, name: <E>),
        node((2, 0.75), "D", name: <F>),
        node((2, 1.25), $not "D"$, name: <G>),
        edge(<A>, <B>, "->", label: $3/12$),
        edge(<A>, <C>, "->", label: $9/12$, label-sep: -15pt),
        edge(<B>, <D>, "->", label: $9/12$, label-sep: -30pt),
        edge(<B>, <E>, "->", label: $3/12$, label-anchor: "south"),
        edge(<C>, <F>, "->", label: $9/12$, label-anchor: "north", label-sep: -5pt),
        edge(<C>, <G>, "->", label: $3/12$, label-anchor: "south"),
      )
    ]
    #v(30pt)

  #set enum(numbering: "a.")
  + Defina la variable aleatoria que le permita obtener (en una tabla) la distribución de
    probabilidad y la función de distribución acumulada de la cantidad de lámparas defectuosas,
    indicando tipo y recorrido.

      - X es una variable aleatoria de tipo cuantitativa discreta la cual indica la cantidad de
        lámparas defectousas.
      
      - $X =$ Cantidad de lámparas defectuosas.

      - $R_x = {0, 1, 2}$

      - $P(not"D") = P(not"D") dot.op P(not"D") = 9/12 dot.op 9/12 = 3/4 dot.op 3/4 = 9/16$ 

      - $P("D") = P("D") dot.op  P(not"D") + P(not"D") dot.op P("D") = 3/12 dot.op 9/12 + 9/12 dot.op
        3/12 = 1/4 dot.op 3/4 + 3/4 dot.op 1/4 = 3/16 + 3/16 = 6/16$

      - $P("DD") = 3/12 dot.op 3/12 = 1/4 dot.op 1/4 = 1/16$
      
      #align(center)[
        #table(
          columns: 2,
          [*X*],[*P(X)*],
          [0],[$9/16$],
          [1],[$6/16$],
          [2],[$1/16$],
        )
      ]

  + Grafique la función de cuantía y la función de distribución acumulada calculadas en a).

  // Falta graficar


+ Considere el experimento de lanzar 2 dados y observar sus caras.
  
  #set enum(numbering: "a.")
  + Construir la variable aleatoria X: Suma de los resultados de cada dado, halle la función de cuantía y la
    función de distribución de probabilidad acumulada.
    
    - $X$ es una variable aleatoria discreta cuantitativa.

    - $X =$ Suma del resultado de los dos dados.
    
    - $R_x = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}$

    - $P(2) = P((1, 1)) = 1/36$

    - $P(3) = P((1, 2)) + P((2, 1)) = 1/36 + 1/36 = 2/36$

    - $P(4) = P((2, 2)) + P((1, 3)) + P((3, 1)) = 1/36 + 1/36 + 1/36 = 3/36$

    - $P(5) = P((2, 3)) + P((3, 2)) + P((4, 1)) + P((1, 4)) = 1/36 + 1/36 + 1/36 + 1/36 = 4/36$

    - $P(6) = P((3, 3)) + P((1, 5)) + P((5, 1)) + P((2, 4)) + P((4, 2)) = 1/36 + 1/36 + 1/36 + 1/36

      + 1/36 = 5/36$

    - $P(7) = P((1, 6)) + P((6, 1)) + P((2, 5)) + P((5, 2)) + P((3, 4)) + P((4, 3))= 1/36 + 1/36 +

      1/36 + 1/36 + 1/36 + 1/36 = 6/36$

    - $P(8) = P((2, 6)) + P((6, 2)) + P((3, 5)) + P((5, 3)) + P((3, 5)) + P((4, 4)) = 1/36 + 1/36 +
      1/36 + 1/36 + 1/36 + 1/36 = 6/36$

    - $P(9) = P((3, 6)) + P((6, 3)) + P((4, 5)) + P((5, 4)) = 1/36 + 1/36 + 1/36 + 1/36 = 4/36$

    - $P(10) = P((4, 6)) + P((6, 4)) + P((5, 5)) = 1/36 + 1/36 + 1/36 = 3/36$

    - $P(11) = P((5, 6)) + P((6, 5)) = 1/36 + 1/36 = 2/36$

    - $P(12) = P((6, 6)) = 1/36$

    #align(center)[
      #table(
        columns: 3,
        [*X*],[*P(X)*], [*F(X)*],
        [2],[$1/36$], [$1/36$],
        [3],[$2/36$], [$3/36$],
        [4],[$3/36$], [$6/36$],
        [5],[$4/36$], [$10/36$],
        [6],[$5/36$], [$15/36$],
        [7],[$6/36$], [$21/36$],
        [8],[$6/36$], [$27/36$],
        [9],[$4/36$], [$31/36$],
        [10],[$3/36$], [$33/36$],
        [11],[$2/36$], [$35/36$],
        [12],[$1/36$], [$36/36$],
      )
    ]

  + Grafique ambas funciones.

+ Una compañía especializada en la instalación de sistemas de calefacción central, estimó que la
  demanda de instalación de equipos en período preinvernal tiene la siguiente función de cuantía.

      #align(center)[
        #table(
          columns: 7,
          [*N*$degree$ *Equipos*],[$0$],[$1$],[$2$],[$3$],[$4$],[$5$],
          [*Probabilidad*],[$0.10$],[$0.14$],[$0.26$],[$0.28$],[$0.15$],[$0.07$],
        )
      ]

  #set enum(numbering: "a.")
  + Defina la variable aleatoria e indique Rx

    $X$: Cantidad de instalaciones en período invernal.

    $R_x = {0, 1, 2, 3, 4, 5}$

      #align(center)[
        #table(
          columns: 3,
          [$X$],[$P(X)$], [$F(X)$],
          [$0$],[$0.1$],[$0.1$],
          [$1$],[$0.14$],[$0.24$],
          [$2$],[$0.26$],[$0.50$],
          [$3$],[$0.28$],[$0.78$],
          [$4$],[$0.15$],[$0.93$],
          [$5$],[$0.07$],[$1$]
        )
      ]

  + Grafique la función de cuantía y de probabilidad acumulada.

    #cetz.canvas({
      // Your plot/chart code goes here
        cetz.draw.set-style(columnchart: (bar-width: 0.1))
        chart.columnchart(
          y-tick-step: none,
          y-ticks: ((.1), (.14), (.26), (.28), (.15), (.07)),
          x-label: $X$,
          y-label: $P(X)$,
          size: (10, 10),
          ((0, .10), (1, .14), (2, .26), (3, .28), (4, .15), (5, .07)),
       )
    })

    #cetz.canvas({
      // Your plot/chart code goes here
        cetz.draw.set-style(columnchart: (bar-width: 1))
        chart.columnchart(
          y-tick-step: none,
          y-ticks: ((.1), (.24), (.5), (.78), (.93), (1)),
          x-label: $X$,
          y-label: $F(X)$,
          size: (10, 10),
          ((0, .10), (1, .24), (2, .50), (3, .78), (4, .93), (5, 1)),
       )
    })

  + Calcule la probabilidad de que durante ese período se requiera la instalación de:

    #set enum(numbering: "i.")
    + Exactamente 3 equipos

      - $P(X=3) = 0.28$
      
      La probabilidad de que durante el período invernal se requiera instalar exactamente 3 equipos
      es del 28% 

    + Como máximo 3 equipos

      - $P(X<=3) = 0.78$

      La probabilidad de que durante el período invernal se requiera instalar como máximo 3 equipos
      es del 78% 

    + Al menos 3 equipos

      - $P(X<3) = 0.50$

      La probabilidad de que durante el período invernal se requiera instalar al menos 3 equipos
      es del 50% 

  + Calcule e interprete $E(X)$. Calcule $σ(X)$

    - $E(X) = 0 dot.op 0.10 + 1 dot.op 0.14 + 2 dot.op 0.26 + 3 dot.op 0.28 +4 dot.op 0.15 + 5 dot.op
    0.07 = 2.45$

      Se espera que en promedio se instalen 2.45 equipos en el período invernal.

    - $E(X^2) = 0^2 dot.op 0.10 + 1^2 dot.op 0.14 + 2^2 dot.op 0.26 + 3^2 dot.op 0.28 + 4^2
    dot.op 0.15 + 5^2 dot.op 0.07 = 0 + 0.14 + 1.04 + 2.52 + 2.4 + 1.75 = 7,85$

    - $E(X)^2 = (2.45)^2 = 6.0025$

    - $σ^2(X) = E(X^2) - E(X)^2 = 7.85 - 6.0025 = 1.8475$

    - $sqrt(σ^2(X)) = sqrt(1.8475) = 1.359$

