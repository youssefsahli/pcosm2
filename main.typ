#import "conf.typ"

#{
  set page(
    paper: "a4",
    footer: context {
      let page-number = counter(page).display("1")
      let last-heading = query(selector(heading).before(here()))
      if last-heading.len() > 0 { last-heading = last-heading.last() } else {
        return 
      }
      let exclude = (
        [Bibliographie],
      )
      let can-show = true
      if last-heading.body in exclude { can-show = false }
      if here().page() <= 1 { can-show = false }
      if can-show {
          if calc.odd(here().page()) {
              align(right, page-number)
       
          } else {
              align(left, page-number)
          }
      }
    }
  )
  set text(
    lang: "fr",
    font: conf.body.font,
    size: conf.body.size
  )

  set heading(numbering: conf.numbering.heading)

  set pagebreak(weak: true)

  for chapter in conf.chapters {
    let c = chapter + ".typ"
    include(c)
    pagebreak()
  }
  
  outline()
  pagebreak()
  bibliography("zotero.bib", full: true, style: "springer-vancouver")
}
