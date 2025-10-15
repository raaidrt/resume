// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!

#import "elements.typ": *

#let course_view(name: "", semester: "", liked: "") = {
  grid(
    columns: (7em, 1fr),
    rows: auto,
    gutter: 10pt,
    box()[#name (#semester)], liked,
  )
}

#let education_view(
  university: "",
  major: "",
  concentration: "",
  minor: "",
  time: "",
  interesting_courses: (),
) = {
  grid.cell(
    [ #subsection_header(
        main_text: university,
        subtext: [#emph(major), #emph([Minor in #minor, Concentration in #concentration])],
        right_aligned_text: time,
      )
      #grid(
        columns: 1fr,
        rows: auto,
        align: (left),
        ..interesting_courses.map(course => course_view(..course))
      ) ],
  )
}

#let resume(
  name: "",
  mobile: "",
  email: "",
  linkedin: "",
  github: str,
  education: array,
  experience: array,
) = {
  // set the document's basic properties.
  set document(author: name)
  set text(font: "Source Serif 4", lang: "en")
  set page(margin: (x: 2.75em, y: 2.75em))

  // Title row.
  title_bar(title_text: name, elements: (
    mobile,
    link("mailto:" + email)[#underline(email)],
    link("https://github.com/" + github)[#underline(
      "https://github.com/" + github,
    )],
  ))

  grid(
    columns: 1fr,
    rows: auto,
    gutter: 10pt,
    align: left,
    grid.cell(section_header(header_text: "Education")),
    grid(
      columns: 1fr,
      rows: auto,
      gutter: 1.5em,
      align: (left),
      ..education.map(school => education_view(..school))
    )
  )
}

