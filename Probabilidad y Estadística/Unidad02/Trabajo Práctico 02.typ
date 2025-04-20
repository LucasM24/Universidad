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

#let points(offset: 0) = ((0, 0.5625), (1, 0.375), (2, 0.0625)).map(((x,y)) => { (x,y) })

  #cetz.canvas({
    // Your plot/chart code goes here
      plot.plot(
        size: (10,10),
        min: -4,
        max: 20,
        x-tick-step: 1, 
        y-tick-step: 0.2, 
        x-grid: false, 
        y-grid: true,
        stroke: "stroke",
        {
          plot.add(domain: (0, 3), t => (2 * t))
          // plot.add(((-1,0),(0,0.5625), (1,1), (2,.5), (4,3)))
          // plot.add(points(offset: 0), line: (type: "hvh"))
        }
     )
  })

  #cetz.draw.set-style(barchart: (bar-width: 1))

