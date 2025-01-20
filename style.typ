#let style(
  university: "Vilniaus universitetas",
  faculty: "Matematikos ir informatikos fakultetas",
  department: "Programų sistemų studijų programa",
  papertype: "Kursinis darbas",
  title: none,
  titleineng: none,
  author: none,
  status: none,
  supervisor: none,
  date: none,
  body
) = {
  set text(lang: "LT", font: "Palemonas", size: 14pt)
  set cite(style: "alphanumeric")

  // Set document properties
  set document(
    title: title,
    author: author
  )

  // Configure page
  set page(
    paper: "a4",
    margin: (
      left: 3cm,
      right: 1.5cm,
      y: 2cm,
    ),
    numbering: "1",
    number-align: right,
  )

  // Title page
  page(
    align(center)[
      #text(size: 14pt, upper(university)) \
      // #v(0.5em)
      #text(size: 14pt, upper(faculty)) \
      // #v(0.5em)
      #text(size: 14pt, upper(department))
      
      #v(3cm)
      
      #text(size: 16pt, weight: "bold")[#title]
      #v(0.1cm)
      #text(size: 14pt, weight: "bold")[#titleineng]
      #v(0.5cm)
      #text(size: 14pt)[#papertype]
      
      #v(3cm)

      // #align(right)[
      //   #text(size: 12pt)[
      //     Atliko: #status \
      //     #author #h(2.4cm)
          
      //     Darbo vadovas: #supervisor #h(2.5cm)
      //   ]
      // ]

      // #align(left)[
      //   #grid(
      //     columns: (0.5fr, 1fr),
      //     gutter: 1em,
      //     "Atliko:", text(size: 12pt)[#status],
      //     "", text(size: 12pt)[#author #h(2.5cm)],
      //     [#v(0.5em) Darbo vadovas:], text(size: 12pt)[#v(0.5em) #supervisor #h(2.5cm)],
      //   )
      // ]

      #align(right)[
        #block(width: 60%)[  // Control width for right alignment
          #grid(
            columns: (0.5fr, 1fr),
            gutter: 1em,
            align: left,
            [Atliko:], [#status],
            [], [#author #align(right)[]], 
            [Darbo vadovas:], [#supervisor]
          )
        ]
      ]
      
      #v(1fr)
      
      #text(size: 12pt)[#date]
    ]
  )

  pagebreak()
  counter(page).update(2)

  // Table of contents
  outline(
    title: "Turinys",
    indent: 1.5em,
  )
  pagebreak()

  set text(size: 12pt)
  // Main content
  body
}
