#import "@preview/mitex:0.2.5": *
#import "conf.typ"

#show bibliography: it => {
        set page(
          header: [],
          columns: 2,
        )

        show regex(".+"): t => {
          mitext(t)
        }
        
        show link: L => {
          let cs = (
            "/doi/*[.org]": olive,
            "ncbi": teal,
            "sciencedirect": orange
          )
          let pc = gray
          let T = L.body.text
          for (r, cc) in cs {
            if T.find(regex(r)) != none {
              pc = cc
              break
            }
          }
          let c = pc.lighten(80%).transparentize(85%)
          rect(
            fill: c,
            radius: 5pt,
            L
          ) 
        }
        show heading: t => {
          set text(size: 14pt)
          t
          v(4pt)
        }
        set text(0.6em)
        it
      } 

#bibliography("zotero.bib", full: false, style: conf.bib.style)