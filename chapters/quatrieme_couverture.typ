#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
)

#set text(
  font: "New Computer Modern",
  size: 12pt,
  lang: "fr"
)

// Titre de la thèse
#align(center + horizon)[
  #text(size: 16pt, weight: "bold")[
    Place et conseil des actifs végétaux en dermo-cosmétique officinale
  ]
]

#v(2cm)

// --- Premier Rectangle : Résumé ---
#block(
  width: 100%,
  inset: 2em,
  stroke: 0.5pt + black,
  radius: 0pt,
  [
    #align(center)[*RÉSUMÉ*]
    #v(1em)
    #par(justify: true, first-line-indent: 1em)[
      La présence de produits dermo-cosmétiques formulés à partir d'ingrédients végétaux est en constante augmentation à l'officine. Si ces gammes répondent à une demande des patients, l'origine naturelle d'un composé n'est pas synonyme d'absence de risque. Le pharmacien doit donc sécuriser cet acte de conseil en s'appuyant sur des données pharmacologiques précises.
    ]
    #par(justify: true, first-line-indent: 1em)[
      Ce travail propose une analyse scientifique de cinq actifs représentatifs (_Centella asiatica_, Bakuchiol, _Aloe vera_, _Nigella sativa_, α-Bisabolol) en confrontant leurs propriétés biologiques aux données de la littérature. Dans un second temps, cette thèse développe une adaptation de la méthode de dispensation ACROPOLE au domaine cosmétique. Elle fournit ainsi une structure d’entretien permettant au pharmacien d'assurer une prise en charge dermatologique méthodologique et sécurisée.
    ]
  ]
)

#v(0.5cm)

// --- Second Rectangle : Grille de Mots-clés ---
#block(
  width: 100%,
  inset: 2em,
  stroke: 0.5pt + black,
  radius: 0pt,
  [
    *Mots-clés :*
    #v(0.8em)
    
    #grid(
      columns: (1fr, 1fr, 1fr), 
      row-gutter: 0.8em,        
      column-gutter: 0.5em,     
      
      [• Dermo-cosmétique],
      [• Phytothérapie],
      [• Conseil officinal],
      [• ACROPOLE],
      [• Actifs végétaux],
      [• Tolérance cutanée],
      [• Dermatologie],
      [• Pharmacologie],
      [• Sécurité d'emploi],
      [• _Centella asiatica_],
      [• Bakuchiol],
      [• _Aloe vera_],
      [• _Nigella sativa_],
      [• α-Bisabolol],
      [• Formulation]
    )
  ]
)

#v(1fr)