#{

  show outline.entry: e => {
    [#e <box>]
    // v(.1em)
    h(1em)
    text(
      style: "italic", 
      size: .9em, 
      fill: gray.darken(70%)
    )[Source: Auteur]
    
    v(1.5em)
  }
  
  outline(
    title: [Index des Tables],
    target: figure.where(kind: table)
  )
}