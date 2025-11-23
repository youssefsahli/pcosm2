#import "conf.typ" 

#set text(lang: "fr")


#let icon = image("icons/uca.png", width: 60%)
#let date_de_passage = conf.date_de_passage

#set page(
  header: move(dx: -5em)[#icon],
  header-ascent: -1em,
)

#{
  v(4em)
  align(center)[
    UNIVERSITÉ CLERMONT AUVERGNE #linebreak()
    UFR DE PHARMACIE
  ]

  v(1em)

  stack(
    dir: ltr,
    spacing: 80%,
    [Année: 2025],
    [N°]
  )

  v(1em)

  align(center)[
    THÈSE D’EXERCICE #linebreak()
    pour le #linebreak()
    DIPLÔME D’ÉTAT DE DOCTEUR EN PHARMACIE
  ]

  v(1em)

  align(center)[
    Présentée et soutenue publiquement #linebreak()
    le #date_de_passage #linebreak()
    par #linebreak()
    *Youssef SAHLI*
  ]
}

#{
  set text(
    font: conf.title.font,
    size: conf.title.size
  )
  show text: t => {
    upper(t)
  }

  v(3em)
  align(center)[  
  Intérêt de certains principes actifs végétaux en dermo-cosmétologie:
  _focus sur le gel d'aloé vera, le bisabolol, le bakuchiol, Centella asiatica, et Nigella sativa _
  ]  
  v(2em)
}
#set text(size: 11pt)
#grid(
  columns: 3,
  column-gutter: 1em,
  row-gutter: 2em,
  
[Directeur de thèse:],
[*Mme Bénedicte PERETON*],
[],
[*Jury:*], [], [],
[Président:], [*Mme Bénedicte PERETON*],[Maître de conférence associé, #linebreak() UFR Pharmacie de Clermont-Ferrand],
[Membres:], 
[*Mme Marie Ange CIVIALE*],
[Maître de conférence, #linebreak() UFR Pharmacie de Clermont-Ferrand],
[], [*Mme Floriane WARTEL*],
[Pharmacien d'officine, #linebreak() Pharmacie Plaidy, Vichy],
)
  
#pagebreak()