#import "conf.typ"

#let style(rest) = {
  show heading: h => {
    h
    v(1em)
  }
  
  show table: set text(size: conf.table.size)
  show table.cell.where(y: 0): strong
  set table(
    stroke: (x, y) => if y == 0 {
      (bottom: 0.7pt + black)
    },
    align: (x, y) => (
      if x > 0 { center }
      else { left }
    )
  )
  show figure.caption: set text(size: conf.figure.caption.size)
  
  show <intro>: p => {
      rect(
        radius: 5pt,
        inset: 1em,
        fill: gray.transparentize(94%),
        stroke: gray.transparentize(90%),
        p
      )
    }
  
  show regex("%%"): m => {
      set text(size: 6pt)
      box(
        rect(
        fill: orange,
        "introduire citation"
        )
      )
    }

  show <plan>: p => {
    set text(
      size: 8pt,
      weight: "light",
      style: "normal"
    )
    rect(
      radius: 5pt,
      inset: 1em,
      fill: orange.transparentize(80%),
      stroke: orange.transparentize(40%),
      p
    )
  }
  rest
}

