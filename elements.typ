#let section_header(header_text: "") = {
  text(fill: rgb("#000B58"), size: 1.35em, weight: 600, header_text)
}

#let title_bar(title_text: "", elements: array) = {
  grid(
    columns: (1fr, auto),
    rows: 3em,
    align: (left, right),
    stroke: (_, _) => {
      (
        bottom: (
          paint: black,
          thickness: 1.5pt,
        ),
      )
    },
    [ #text(weight: 700, 3.0em, title_text) ],
    [ #text(0.75em, [
        #elements.join(linebreak())
      ])
    ],
  )
}

#let two_sided_text(left_text: "", right_text: "") = {
  grid(
    columns: (1fr, auto), 
    align: (left, right),
    left_text, 
    right_text
  )
}

#let subsection_header(main_text: "", subtext: "", right_aligned_text: "") = {
  text([*#main_text* \ #subtext])
}

#let dashedline() = {v(-3pt); line(length: 100%, stroke: (dash: "dashed", thickness: 0.1mm)); v(-5pt)}

#let chiline() = { line(length: 100%) }

#let date_format(body: "") = {
  text(size: 0.85em, emph(body))
}

