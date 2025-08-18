#import "@preview/glossy:0.8.0": *
#import "@preview/titleize:0.1.1": titlecase
#import "/conf.typ"

#set heading(numbering: none)

#show: rest => {
  set text(
    font: conf.glossaire.font,
    size: conf.glossaire.size
  )
  rest
}

#let T1 = (
  section: (title, body) => {
    set text(size: 12pt)
    align(center)[
      #upper(title)
    ]
    v(1em)
    body
  },

  group: (name, index, total, body) => {
    if name != "" and total > 1 {
      // v(1em)
      // align(center, line(length: 80%))
      set text(size: 12pt)
      align(center, 
        text(size: 12pt, weight: "bold", fill: gray.darken(80%))[
          #upper[*Table des abbréviations*]
          #v(1em)
          #set text(style: "normal", weight: "light", size: 10pt)
          #upper(name)
        ]
      )
      // align(center, line(length: 40%, stroke: sepia.transparentize(80%)))
    }
    v(2em)
    set text(size: 1.1em)
    if name == "" {
      columns(1, body)
      pagebreak(weak: true)
    } else {
      body
      pagebreak(weak: true)
    }
  },

  entry: (entry, index, total) => {
    let capitalize(word) = {
      return upper(word.first()) + word.slice(1)
    }
    
    let short-display = text(weight: "extrabold", (entry.short))
    let long-display = if entry.long == none {
      []
    } else {
      [: #capitalize(entry.long)]  // Using em-dash for Chicago style
    }

    let description = if entry.description == none {
      []
    } else {
      text(style: "italic", [: #entry.description])
    }

    let refs = box(
      text(
        size: 0.9em,
        fill: gray.darken(20%),
         {
           show regex("󰖂\\s*"): t => []
           // show ",": none
           entry.pages
        }
      )
    )
    rect(
      fill: silver.transparentize(90%).lighten(50%),
      outset: .5em,
      block(
        below: 2em,
        text(
          size: 0.9em,
          {
            grid(
              columns: (auto, auto),
              gutter: 1em,
              [#short-display#entry.label#long-display#entry.label],
              // repeat("."),
              [#refs]
            )
          }
        )
      )
  )
  },
)

#glossary(
  title: [*Table des abbréviations*],
  theme: T1,
  show-all: false,
  groups: ("")
)