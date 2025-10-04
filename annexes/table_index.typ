#{

  let table_sources = (
    [@amin_black_2016 @cheikh-rouhou_nigella_2007],
    [
      @west_evaluation_2003 
      @razia_effects_2021
      @park_pharmacological_2021
    ],
    [
      
    ]
  )

  show outline.entry: e => context {
    [#e <box>]
    // v(.1em)
    h(1em)
    
    if e.element.kind == table {
      let n = e.element.counter.at(e.element.location()).first()
      let source_array = table_sources.at(n, default: "")
      if n > 0 and n <= table_sources.len() {
        let source = table_sources.at(n - 1)
        h(1em)
        [Sources: #source]
      }
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