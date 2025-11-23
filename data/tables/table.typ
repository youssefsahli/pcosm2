
#let add_table(
  caption,
  T,
  align:center,
  columns: auto,
) = context {
  figure(
    numbering: "I",
    caption: caption,
    table(
      columns: columns,
      align: align,
      T
    )
  )
}

#let csv_table(csv_path, caption) = {
  let data = csv(csv_path)
  let size = data.first().len() 
  add_table(
    caption,
    table(
      align: horizon,
      columns: size,
      ..data.flatten()
    )
  )
}
