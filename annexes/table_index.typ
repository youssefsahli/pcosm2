#{

  let table_sources = (
    (
      cite(<amin_black_2016>),
      cite(<cheikh-rouhou_nigella_2007>)
    )
  )

  show outline.entry: e => context {
    [#e <box>]
    // v(.1em)
    h(1em)
    
    if e.element.kind == table {
      let n = e.element.counter.at(here())
      [Source:] 
    }
    
    v(1.5em)
  }
  {  
    show heading.where(level: 1): h => {
      set text(size: 12pt)
      set align(center)
      upper(h)
    }
  
    set heading(numbering: none)
  
    [= Liste des tableaux et figures]
  }
  show heading: set align(center)
  outline(
    title: {
      set text(size: 11pt, weight: "light", style: "normal")
      
      upper[Tableaux]
    },
    target: figure.where(kind: table)
  )

  outline(
    title: 
    {
      set text(size: 11pt, weight: "light", style: "normal")
      upper[Figures]
    },
    target: figure.where(kind: image)
  )
}