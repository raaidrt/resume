#import "elements.typ": *
#set underline(offset: 2pt)

#let name = "Raaid Tanveer"
#let email = "raaidraiyantanveer@gmail.com"
#let github = "raaidrt"
#let mobile = "(380) 218-8522"

#set document(author: name)
#set text(font: "Source Serif 4", lang: "en")
#set page(margin: (x: 2.75em, y: 2.75em))
#set par(spacing: 10pt)
#show list: set block(spacing: 10pt)

#title_bar(title_text: name, elements: (
  link("tel:1" + mobile)[#underline(mobile)],
  link("mailto:" + email)[#underline(email)],
  link("https://github.com/" + github)[#underline(
    "https://github.com/" + github,
  )],
))

// compilers
// "Built the complete compiler pipeline from lexing, parsing, elaboration, SSA translation, IR optimizations (e.g. ADCE, SCCP, Loop Invariant Hoisting) and beat `gcc -O1`"

#section_header(header_text: "Education and Relevant Coursework")

#two_sided_text(
  left_text: [#text(fill: rgb("#003161"), [*Carnegie Mellon University*]), 3.97/4.0, High Honors],
  right_text: date_format(body: "August 2020 - May 2024"),
)
BSc. in Computer Science, #emph([Concentration in Algorithms and Complexity, Minor in Economics]) \
#text(size: 0.8em, [
  - *Compiler Design* (S24) with Prof. Jan Hoffman, we built a compiler for the #underline(link("https://c0.cs.cmu.edu/docs/c0-reference.pdf", [C0 language])) that was competitive with `gcc -O1`.
  - *Generative AI* (S24) with Profs. Yuanzhi Li and Matt Gormley, we learnt about SOTA generative language and image models and implemented RoPE, GQA, LoRA, DDPMs, and more.
  - *Randomness in Computation (Graduate Course)* (F22) with Prof. Pravesh Kothari, we learnt about the frontier in TCS research involving randomized algorithms and sampling techniques.
  - *Undergraduate Complexity Theory* (S23) by Prof. Klaus Sutner, investigated classical results in computability / complexity theory.
])

#line(length: 100%)

#section_header(header_text: "Work Experience")

#text(weight: 800, [Stripe])
#two_sided_text(
  left_text: [Software Engineer II, Service Infrastructure > Production Engineering],
  right_text: date_format(body: "November 2024 - Present"),
)
#text(
  size: 0.8em,
  [
    - Joined Service Infrastructure team due to lack of interesting projects in User Billing - seeking challenging opportunities and learnings
  ],
)


#two_sided_text(
  left_text: [Software Engineer, Revenue Foundations > User Billing],
  right_text: date_format(body: "August 2024 - October 2024"),
)
#text(
  size: 0.8em,
  [
    - \$7.6M ARR unlocked by allowing merchants' subscriptions to Stripe products to be backdated, in addition to improving system flexibility to contract onboarding errors and delays
    - \$199k/year saved through migrating airflow tasks from concord to strawberry Hadoop clusters and packing periodic job cycles in the same cluster to improve utilization
    - Monetized Issuer Processor, Multi-Currency Settlements, Issuing Postfunding Automation, Spread Based Treasury Admin products.
    - Integrated Stripe Billing, Tax, Revenue Recognition and Data Studio products into subscriptions usage-based billing structures.
    - Promoted to L2 Software Engineer in 9 months due to impact in backdating subscriptions and judicious incident management.
  ],
)

#two_sided_text(
  left_text: [Software Engineer Intern, Service Infrastructure > Workflow Engine],
  right_text: date_format(body: "August 2024 - October 2024"),
)
#text(
  size: 0.8em,
  [
    - W
  ],
)
