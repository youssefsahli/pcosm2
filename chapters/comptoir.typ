= Cas Comptoirs

#[
  // Présentation de différents cas d'officine, où le conseil pharmaceutique va jouer un rôle dans la caractérisation de la pathologie, et les soins conseillés. On explorera différents tableaux symptomatologiques de la peau, ainsi que des moyens disponibles afin d'améliorer leur prise en charge, ainsi que des signes alertant le pharmacien d'une nécessaire orientation vers un spécialiste.
] <intro>

== La Démarche ACROPOLE

La démarche ACROPOLE fait partie des bonnes pratiques de dispensation en officine. Elle permet une amélioration du conseil au comptoir, en systématisant et en guidant la prise en charge du patient, de l'accueil à la délivrance.

Créée dans un contexte de raréfaction des médecins en France, la démarche ACROPOLE est une aide à l'accueil du patient se présentant sans ordonnance, avec des symptômes nécessitant un avis voire une assistance médicale selon la gravité apparente des signes décris ou observés. L'objectif de celle-ci étant de soigner les maux légers sans obstruer le parcours de soin si la nécessité d'un diagnostic plus poussé ne se fait pas sentir. Ce plan qui s'étend de l'accueil à la sortie du patient, accompagne le pharmacien dans chaque étape de son dialogue avec ce dernier, dans le but de systématiser la prise en charge, afin d'assurer une qualité constante dans le soin apporté.

[ J'aimerais l'adapter à la cosmétique ]
Pour un conseils securisé, j'ai adapté un diagramme...
#image("../img/acropole2.png")
Une fiche patient à été créée que l'on pourrait scanner dans le logiciel métier...
[ Mettre cespharm schema]
// On commencera par l'*Accueil* (A), qui consiste à bien recevoir le patient, et préparer le futur entretien sur un ton professionnel et bienveillant. On recherchera à poser les bases d'un dialogue sain et respectueux, ainsi qu'à situer grossièrement l'état psychologique et physiologique du patient, ce qui aidera par la suite à adapter la communication aux différentes personnalités. La *Collecte* (C) d'information s'ensuit, où l'on prioritisera les questions ouvertes et le temps de parole du patient ; l'écoute doit être attentive et sans jugement, tout en faisant preuve d'empathie. On *Recherche* (R) ensuite les informations complémentaires, afin de compléter l'anamnèse, et orienter son attention sur les éléments importants, avant d'*Ordonner* (O) les informations afin de s'assurer que les déclarations sont complètes, que rien n'a été omis et que la demande est bien comprise, ce qui est validé par une reformulation concise soumise à l'approbation de l'interlocuteur.
// La démarche se poursuit ensuite pour *Préconiser* (P) une solution, après analyse des informations, qui détermine si la conduite à tenir est une prise en charge à l'officine ou une orientation extérieure. Il s'agit alors d'*Optimiser* (O) la décision prise en expliquant ses raisons pour favoriser l'adhésion au traitement et en y associant des conseils hygiéno-diététiques. Puis de *Libeller* (L) un plan de prise, en précisant -- par écrit si le temps le permet -- les modalités d'administration, comme la posologie et les mises en garde, et les recommandations apportées. Enfin, on doit *Entériner* (E) la démarche en s'assurant de la bonne compréhension du patient, en l'invitant à poser d'autres questions et en prenant congé de manière à laisser la possibilité d'un suivi.

#{
  let prefix = "/chapters/cas_comptoirs/"
  let cas = (
    "anti_age",
    "dermatite_infantile",
    "epilation",
    "peau_seche",
    "rasage",
  )

  for c in cas {
    pagebreak()
    include prefix + c + ".typ"
  } 
}