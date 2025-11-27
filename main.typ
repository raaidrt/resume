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


#section_header(header_text: "Work Experience")

#text(fill: rgb("#003161"), [*Stripe*])
#job_subheading(
  title: [Software Engineer II, Service Infrastructure > Production Engineering],
  date: "November 2024 - Present",
)
#text(
  size: 0.8em,
  [
      - Optimized bapling migration script to minimize code diffs per migration from #text(fill: rgb("#08872B"), [+29,635]), #text(fill: red, [-28,329]) $arrow$ #text(fill: rgb("#08872B"), [+1,689]), #text(fill: red, [-381])
      - Migrated and traffic shifted 3 customer facing endpoints from legacy Sinatra framework to new API Methods framework
  ],
)


#job_subheading(
  title: [Software Engineer I $arrow$ II, Revenue Foundations > User Billing],
  date: "August 2024 - October 2024",
)
#text(
  size: 0.8em,
  [
      - #text(weight: 600, [\$7.6M ARR unlocked]) by allowing merchants' subscriptions to Stripe products to be backdated, in addition to improving system flexibility to contract onboarding errors and delays
      - #text(weight: 600, [\$199k/year saved]) through migrating Airflow tasks from Concord to Strawberry Hadoop clusters and packing periodic job cycles in the same cluster to improve utilization
    - Managed Stripe's largest Mongo replsets, and the largest offline workloads at Stripe during incidents and when shipping features
    - Monetized Issuer Processor, Multi-Currency Settlements, Issuing Postfunding Automation, Spread Based Treasury Admin products.
    - Integrated Stripe Billing, Tax, Revenue Recognition and Data Studio products into subscriptions usage-based billing structures.
  ],
)

#job_subheading(
  title: [Software Engineer Intern, Service Infrastructure > Workflow Engine],
  date: "August 2024 - October 2024",
)
#text(
  size: 0.8em,
  [
    - Built SDK and management plane UI for attaching and querying custom search attributes on durable workflows (built on top of Temporal workflows).
    - Allowed teams using durable workflows at Stripe to quickly search for workflows that meet a certain criteria during incidents, or for general observability and monitoring.
    - Feature used by all teams at Stripe managing Java services - my new grad team (User Billing) was a power-user of this feature.
  ],
)

#line(length: 100%)
#section_header(header_text: "Education and Relevant Coursework")

#two_sided_text(
  left_text: [#text(fill: rgb("#003161"), [*Carnegie Mellon University*])#text(
      size: 0.9em,
      [, 3.97/4.0, High Honors],
    )],
  right_text: date_format(body: "August 2020 - May 2024"),
)
#text(
  size: 0.9em,
  fill: rgb("#232b47"),
  weight: 700,
  [BSc. in Computer Science, #emph([Concentration in Algorithms and Complexity, Minor in Economics])],
) \
#text(size: 0.8em, [
  - *Compiler Design* (S24) with Prof. Jan Hoffman, we built a compiler for the #underline(link("https://c0.cs.cmu.edu/docs/c0-reference.pdf", [C0 language])) that was competitive with `gcc -O1`.
  - *Generative AI* (S24) with Profs. Yuanzhi Li and Matt Gormley, we learnt about SOTA generative language and image models and implemented RoPE, GQA, LoRA, DDPMs, and more.
  - *Randomness in Computation (Graduate Course)* (F22) with Prof. Pravesh Kothari, we learnt about the frontier in TCS research involving randomized algorithms and sampling techniques.
  - *Undergraduate Complexity Theory* (S23) by Prof. Klaus Sutner, investigated classical results in computability / complexity theory.
])



#line(length: 100%)
#section_header(
  header_text: "Teaching Assistant",
)

#text(
  size: 0.9em,
  fill: rgb("#232b47"),
  weight: 700,
  [Courses:],
)
#text(size: 0.8em, [
  - 15-451 Algorithm Design and Analysis with Professors Daniel Anderson and Daniel Sleator during Fall 2023
  - 15-259 Probability and Computing with Professor Weina Wang, and Mor Harchol-Balter (in a limited capacity) during Spring 2023
  - 15-251 Great Ideas in Theoretical Computer Science with Professor Anil Ada during Spring and Fall 2022
])

#text(
  size: 0.9em,
  fill: rgb("#232b47"),
  weight: 700,
  [Achievements and Contributions:],
)
#text(
  size: 0.8em,
  [
    - Found teaching very rewarding - received mostly 5 star ratings during final 2 semesters of teaching. Much of what I enjoyed in teaching helped me spin-up new co-workers later in my career
    - Contributed to pool of review session questions and teaching notes during recitations to make topics more approachable
  ],
)

#line(length: 100%)
#section_header(header_text: "Projects")
#two_sided_text(
  left_text: [#text(
    size: 0.9em,
    weight: 700,
    fill: rgb("#003161"),
    [C0 Compiler],
  )],
  right_text: date_format(body: "Spring 2024"),
)
#text(
  size: 0.8em,
  [
    - Built the full compiler pipeline with a partner, compiling C0 source language to x86-64 Assembly
    - Implemented Register Allocation using Chordal Graph Coloring in 3 days by myself, which our team had to extend 3 months later
    - Added optimizations such as ADCE, CCP, Function Inlining with recursion unrolling, Tail recursion optimization, Loop header alignment, Loop Invariant Hoisting. Final compiler competitive with `gcc -O1`
  ],
)
#two_sided_text(
  left_text: [#text(
    size: 0.9em,
    weight: 700,
    fill: rgb("#003161"),
    [$sqrt(2)$ is Irrational],
  )],
  right_text: date_format(body: "Summer 2025"),
)
#text(
  size: 0.8em,
  [
    - Wrote the classical proof that there don't exist $a, b in bb(Z), b eq.not 0$ such that $sqrt(2) = a/b$ in the Lean 4 Theorem Prover / Programming Language
    - Github repository with proof: #link("https://github.com/raaidrt/irrational-sqrt-2")[#underline([https://github.com/raaidrt/irrational-sqrt-2])]
  ],
)
#line(length: 100%)
#text(
  size: 0.9em,
  [#text(fill: rgb("#003161"), [*Languages (In order of decreasing familiarity)*]): Python, OCaml, Java, C, Rust, C++, Typescript / Javascript \
    #text(fill: rgb("#003161"), [*Current Interests*]): Distributed Systems, Latency Sensistive Optimizations, Compilers, Programming Languages],
)


