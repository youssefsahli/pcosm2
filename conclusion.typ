#set heading(numbering: none)
= Conclusion

#show grid.cell: c => {
  [
    #c
  ]
}

#let conclusion_text = [
  Un intérêt de plus en plus important pour les actifs végétaux dans les produits cosmétiques est ressenti au comptoir, avec des gammes aux principes actifs parfois peu connus du pharmacien d'officine. Ces produits utilisés de manière croissante par la patientèle sont donc un élément à prendre en compte dans l'anamnèse d'un individu se présentant avec une pathologie dermatologique, mais font aussi partie d'un panel de solutions pour des corrections cosmétiques, voire pour des pathologies bénignes ne nécessitant pas de soins plus agressifs, mais une routine de soins adaptée à sa situation.
  Le choix et l'analyse de ces cinq plantes permet de croiser les réalités du marché cosmétique et de la pratique officinale, qui doit être garante d'une prise en charge optimale du patient.
  
  Ainsi, malgré les allégations marketing, il est nécessaire pour le pharmacien de connaître les mécanismes d'actions des phytocomposants afin de sécuriser leur utilisation dermatologique et de veiller aux contraintes écologiques qui peuvent se présenter.

  // Le soin cosmétique de demain reposera sur la validation scientifique des actifs, la responsabilité écologique et humaine des filières de production, et un accompagnement expert du professionnel de santé.
  #v(2em)
  // #align(center, line(length: 80%))
]

#grid(
  columns: (auto, auto),
  rows: (5fr, 1fr),
  column-gutter: 10%,
  align: (row, col) => {
    if row > 0 {
      return center
    } else {
      return left
    }
  },
  grid.cell(colspan: 2)[
    #conclusion_text
  ],
  box(width: 100%)[ 
    Le Doyen de l’UFR de Pharmacie, #linebreak(justify: false)
    Mme Christiane FORESTIER
  ],
  box[ Le Président du Jury,]
)