#import "elements.typ": *

#let name = "Raaid Raiyan Tanveer"
#let email = "raaidraiyantanveer@gmail.com"
#let github = "raaidrt"
#let mobile = "(380) 218-8522"

#set document(author: name)
#set text(font: "Source Serif 4", lang: "en")
#set page(margin: (x: 2.75em, y: 2.75em))
#set par(spacing: 10pt)
#show list: set block(spacing: 10pt)

#title_bar(title_text: name, elements: (
    mobile,
    link("mailto:" + email)[#underline(email)],
    link("https://github.com/" + github)[#underline(
      "https://github.com/" + github,
    )], 
  ))

// compilers
// "Built the complete compiler pipeline from lexing, parsing, elaboration, SSA translation, IR optimizations (e.g. ADCE, SCCP, Loop Invariant Hoisting) and beat `gcc -O1`"

#section_header(header_text: "Education and Relevant Coursework")

#two_sided_text(left_text: [#text(fill: rgb("#003161"), [*Carnegie Mellon University*]), 3.97/4.0, High Honors], right_text: [August 2020 - May 2024])
BSc. in Computer Science, #emph([Concentration in Algorithms and Complexity, Minor in Economics]) \ 
#text(size: 0.8em, [
- *Compiler Design* (S24) with Prof. Jan Hoffman, we built a compiler for the #underline(link("https://c0.cs.cmu.edu/docs/c0-reference.pdf", [C0 language])) that was competitive with `gcc -O1`.
- *Generative AI* (S24) with Profs. Yuanzhi Li and Matt Gormley, we learnt about SOTA generative language and image models and implemented RoPE, GQA, LoRA, DDPMs, and more.
- *Randomness in Computation (Graduate Course)* (F22) with Prof. Pravesh Kothari, we learnt about the frontier in TCS research involving randomized algorithms and sampling techniques. 
- *Undergraduate Complexity Theory* (S23) by Prof. Klaus Sutner, investigated classical results in computability / complexity theory.
])

#line(length: 100%)

#section_header(header_text: "Work Experience") 

#two_sided_text(left_text: [#text(weight: 800, [Stripe]) #h(5pt) Software Engineer], right_text: [October 21, 2024 - Present])

