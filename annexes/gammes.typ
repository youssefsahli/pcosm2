#import "/data/tables/table.typ": *

#set page(
  header: [*Annexe III: Spécialités cosmétiques d'intérêt*],
  margin: (
    y: 2.5cm,
  )
)

#let spe(
  title,
  brand,
  conc,
  ingr
) = {
  
}

#csv_table(
  "/data/tables/GammesCosmétiques.csv",
  []
)