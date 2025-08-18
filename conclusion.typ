= Conclusion

#show grid.cell: c => {
  [
    #c <box>
  ]
}

#grid(
  columns: (auto, auto),
  rows: (3fr, 1fr),
  column-gutter: 10%,
  align: (row, col) => {
    if row > 0 {
      return center
    } else {
      return left
    }
  },
  grid.cell(colspan: 2)[
    #lorem(100)
  ],
  box(width: 100%)[ 
    Le Doyen de l’UFR de Pharmacie, #linebreak(justify: false)
    Mme Christiane FORESTIER
  ],
  box[ Le Président du Jury,]
)