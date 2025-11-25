#import "conf.typ"

#let style(rest) = {
  show heading: h => {
    h
    v(1em)
  }
  
  show table: set text(
      size: conf.table.size,
      weight: "regular"
    )
  set table(
    stroke: (x, y) => if y == 0 {
      (bottom: 0.7pt + black)
    },
    align: (x, y) => (
      if x > 0 { center }
      else { left }
    )
  )

  set figure.caption(
    separator: ": "
  )

  show figure: f => {
    v(1em)
    let F = rect(
      fill: none,
      stroke: none,
      radius: 5pt,
      inset: 1em,
      f.body
    )

    grid(
      columns: (1fr),
      row-gutter: .5em,
      F, 
      f.caption,
      // spacing: .1em,
    )
    
  }
  
  show figure.caption: c => {
    set text(
      size: conf.figure.caption.size,
      fill: conf.figure.caption.fill,
    )
    rect(
      fill: gray.transparentize(90%).lighten(90%),
      stroke: gray.lighten(98%),
      radius: 5pt,
      inset: 1em,
      c
    )
  }
  
  // show <intro>: p => {
  //     rect(
  //       radius: 5pt,
  //       inset: 1em,
  //       fill: white,
  //       stroke: gray.transparentize(90%),
  //       p
  //     )
  //   }
  
  // show regex("%%"): m => {
  //     set text(size: 6pt)
  //     box(
  //       rect(
  //       fill: orange,
  //       "introduire citation"
  //       )
  //     )
  //   }

  show <plan>: p => {
    // set text(
    //   size: 8pt,
    //   weight: "light",
    //   style: "normal"
    // )
    // rect(
    //   radius: 5pt,
    //   inset: 1em,
    //   fill: orange.transparentize(80%),
    //   stroke: orange.transparentize(40%),
    //   p
    // )
  }

  show <box>: b => {
    // rect(
    //     radius: 5pt,
    //     inset: 1em,
    //     fill: gray.transparentize(94%).lighten(50%),
    //     stroke: gray.transparentize(90%).lighten(60%),
    //     b
    //   )
    b
  }

  show <remove>: r => none
  
  // we hide footnotes
  
  set footnote.entry(
    separator: none
  )

  show footnote.entry: f => {
    
  }

  
  rest
}

  

  

