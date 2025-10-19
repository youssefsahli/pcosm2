#import "conf.typ"
#import "@preview/glossy:0.8.0": *
#show: init-glossary.with(yaml("/data/glossary.yaml"))

#import "style.typ": style

#show: style

#{
  set page(
    paper: "a4",
  )
  set text(
    lang: "fr",
    font: conf.body.font,
    size: conf.body.size,
    tracking: conf.body.tracking
  )

  set par(
    leading: conf.par.leading,
    first-line-indent: conf.par.first-line-indent,
    justify: true,
  )

  set heading(numbering: conf.numbering.heading)
  show heading.where(level: 4).or(heading.where(level: 5)): set heading(numbering: none)

  set pagebreak(weak: true)

  for startpage in conf.start-pages {
    include(startpage + ".typ")
    pagebreak()
  }

  counter(page).update(1)
  counter(heading).update(0)
  set page(
    footer: context {
      let page-number = counter(page).display(conf.numbering.page)
      if calc.odd(here().page()) {
          align(right, page-number)
   
      } else {
          align(left, page-number)
      }
    },

    header: auto
  )

  for chapter in conf.chapters {
    let prefix = conf.chapter-prefix
    let c = prefix.last()
    if c != "/" { prefix = prefix + "/" }
    include(prefix + chapter + ".typ")
    pagebreak()
  }

  set page(
    header: none,
    footer: none,
  )

  for annexe in conf.annexes {
    include(annexe + ".typ")
    pagebreak()
  }
  
}
