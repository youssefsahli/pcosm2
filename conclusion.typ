= Conclusion

#show grid.cell: c => {
  [
    #c <box>
  ]
}

#let conclusion_text = [
  Un intérêt de plus en plus important pour les actifs végétaux dans les produits cosmétiques est ressenti au comptoir, avec des gammes aux principes actifs parfois peu connus du pharmacien d'officine. Ces produits utilisés de manière croissante par la patientèle sont donc un élément à prendre en compte dans l'anamnèse d'un individu se présentant avec une pathologie dermatologique, mais font aussi partie d'un panel de solutions pour des corrections cosmétiques, voire pour des pathologies bénignes ne nécessitant pas de soins plus aggressifs, mais une routine de soins adaptée à sa situation.
  Le choix et l'analyse de ses cinq plantes, ou de leur molécules, permet de croiser les réalités du marché cosmétique en faveur de soins naturels -- mais potentiellement irritants --, et la pratique officinale, qui doit prendre en compte les affections de la peau dans la prise en charge du patient. Ainsi, malgré les allégations marketing poussant à l'utilisation de crèmes naturelles sous de nombreuses indications, il est nécessaire de comprendre les mécanismes d'actions qui peuvent contre-indiquer, ou faire empirer une pathologie ou du moins une affection dermatologique particulière. L'exercice et d'autant plus difficile en voulant allier la naturalité du soin à la préservation d'un écosystème mis à mal par une demande de plus en plus forte face à une production déjà délétère sur la biodiversité naturelle du pays d'exportation.

  Il est nécessaire alors à la pratique officinale de savoir distinguer les bonnes certifications (Bio, éthique, écologie), mais aussi de pousser la frontière entre parapharmacie et soins cosmétiques. Les perspectives d'avenir sont de plus particulièrement prometteuses, de part les techniques d'extraction et de purification de plus en plus efficaces, parfois plus durables, mais aussi de part l'innovation sur les effets physiopathologiques de principes actifs extraits de plantes.

  Le soin cosmétique de demain reposera sur la validation scientifique des actifs, la responsabilité écologique et humaine des filières de production, et un accompagnement expert du professionnel de santé.

  #align(center, line(length: 80%))
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