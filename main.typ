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
  )

  set par(
    leading: conf.par.leading,
    first-line-indent: conf.par.first-line-indent,
    justify: true,
  )

  set heading(numbering: conf.numbering.heading)

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

    header: context {
      let last-heading = query(
        selector(heading.where(outlined: true))
        .before(here())
      )
      if last-heading.len() > 0 { 
        last-heading = last-heading.last() 
      } else {
        return 
      }
      let current-level = last-heading.level
      let heading-on-page = query(
        selector(heading)
        .after(here()))
        .filter(h => here().page() == h.location().page())

        let display = last-heading.body

      if heading-on-page.len() > 0 {
        let next-h = heading-on-page.first()
        let L = next-h.level
        if L < current-level or current-level == 1 and L == 1 { 
          display = ""
        }
      }
        
      align(
        if calc.odd(here().page()) { right } else { left }, 
        text(
          size: conf.header.size, 
          style: conf.header.style,
          weight: conf.header.weight
        )[_ #display _]
      )
    }
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
