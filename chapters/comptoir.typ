= Application Pratique: Cas Comptoirs

// #[
// Différents cas de comptoir en pharmacie ont été rédigés afin de mettre en valeur la création d'une fiche conseil, où les pathologies dermo-cosmétiques jouent un rôle central. On y verra différents tableaux symptomatologiques de la peau, les moyens disponibles pour améliorer leur prise en charge, ainsi que les signes devant alerter le pharmacien et motiver une orientation vers un spécialiste.
// ] <intro>

== Une Adaptation de la Démarche ACROPOLE au Conseil Dermo-Cosmétique

La démarche ACROPOLE, un outil validé des bonnes pratiques de dispensation, a été initialement conçue pour systématiser la prise en charge pharmaceutique. Bien que son origine soit liée à une demande d'auto-médication, ses principes peuvent être transposés et adaptés pour structurer le conseil en dermo-cosmétique.

L'objectif de cette transposition n'est pas d'effectuer un diagnostic, mais de formaliser une anamnèse cosmétique rigoureuse. Il s'agit d'établir un cadre d'échange qui permet de qualifier la demande, d'évaluer l'état cutané, d'identifier les facteurs d'influence et de déterminer si la situation relève d'une routine de soin ou d'une consultation médicale.

Pour sécuriser et standardiser ce conseil, la démarche a été schématisée.

#figure(
image("../img/acropole2.png"),
caption: [Diagramme de la démarche ACROPOLE adaptée au conseil dermo-cosmétique.]
)

En complément, une fiche de suivi a été développée. Cet outil, potentiellement intégrable aux logiciels métier, permettrait de formaliser les recommandations et d'assurer une traçabilité du conseil prodigué.
#figure(
  caption: [Proposition de fiche de conseil dermo-cosmétique pour le suivi],
  image("../img/FICHE.drawio.png")
)

#{
  let prefix = "/chapters/cas_comptoirs/"
  let cas = (
    "anti_age",
    "epilation",
    "peau_seche",
    "rasage",
    "acné"
  )

  for c in cas {
    pagebreak()
    include prefix + c + ".typ"
  } 
}