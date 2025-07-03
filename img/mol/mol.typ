#let mol(name, caption, ext: "svg") = {
  let path = "/img/mol/" + name + "." + ext
  figure(
    numbering: "A",
    kind: "Mol",
    supplement: [Mol.],
    caption: caption,
    image(
      path,
      height: 90pt,
    )
  )
}