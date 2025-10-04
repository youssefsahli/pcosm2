#set page(
  header: [*Annexe IV: Publications par année, pour chaque composants étudié*],
  margin: (
    y: 2.5cm
  )
)

#grid(
  {
    for mol in (
    "bakuchiol",
    "centella asiatica",
    "chamazulene",
    "glabridin",
    "ellagic acid",
    "bisabolol",
    "epigallocatechin",
    "ferulic acid",
    "resveratrol",
    "nigella sativa"
    ) {[
       #{ 
          strong(
            (
              upper(mol.first()),
              mol.slice(1)
            ).join()
          )
        }
      #image(
        "/img/graphs/" + mol+"_pmids.png"
      ) #label(mol+"-graph")
      ]
    }
  }
  ) 