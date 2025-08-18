#let body = (
  size: 12pt,
  font: "Liberation Sans",
  tracking: .05em
)

#let title = (
  size: 11pt,
  font: "Liberation Sans"
)

#let glossaire = (
  size: 14pt,
  font: "Liberation Sans"
)

#let numbering = (
  heading: (..nums) => {
    let pos = nums.pos()
    let s = pos.len()
    let sep = "."
    if s > 1 { sep = " " }
    pos
      .enumerate(start:1)
      .map(
        (i) => {
          let (id, num) = i
          if id < 4 {
            return str(num)
          }
        }
      )
      .join(".") + sep
      
    },
  table: "I",
  figure: "A",
  page: "1",
)

#let table = (
  size: 7pt,
)

#let figure = (
  caption: (
    size: 9pt,
    fill: gray.darken(70%),
  )
)

#let par = (
  leading: .8em,
  first-line-indent: 0em,
)

#let header = (
  size: 10pt, 
  style: "normal",
  weight: "light"
)

#let date_de_passage = "..."

#let start-pages = (
  "title",
  "blank",
  "title",
  "personnel_uca",
  "remerciements",
  "sommaire",
  "/annexes/table_index",
  "/data/glossaire",
)

#let chapter-prefix = "/chapters"

#let chapters = (
  "histoire",
  "tegumentaire",
  "aging_cutane",
  "exposomes",
  "phytocomposant",
  "composés",
  "specialites",
  "conseil",
  "comptoir",
  "ecologie",
  "orgs",
)

#let annexes = (
  "conclusion",
  "bibliographie",
  "/annexes/fiche",
  "/annexes/acropole",
)

#let bib = (
  style: "vancouver"
)