#let csv_table(csv_path, caption) = {
  let data = csv(csv_path)
  let size = data.first().len()
  figure(
    numbering: "I",
    caption: caption,
    table(
      align: left + horizon,
      columns: size,
      ..data.flatten()
    )
  )
}

#let add_table(
  caption,
  T,
  sources: "",
  align:auto,
  columns: auto,
) = context {
  figure(
    numbering: "I",
    caption: caption,
    table(
      align: align,
      columns: columns,
      T
    )
  )
}