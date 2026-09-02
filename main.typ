#let accent = rgb("#2563eb")
#let dark = rgb("#1e293b")
#let gray = rgb("#64748b")
#let light-gray = rgb("#94a3b8")
#let sidebar-bg = rgb("#0f172a")
#let sidebar-fg = rgb("#e2e8f0")
#let sidebar-muted = rgb("#94a3b8")

#let sidebar-width = 6.5cm

#set page(
  paper: "a4",
  margin: 0cm,
)
#set text(font: "Inter", size: 9.8pt, fill: dark, lang: "no")

#let heading-main(title) = {
  block(above: 1.1em, below: 0.65em)[
    #text(fill: accent, weight: "bold", size: 12.5pt, tracking: 0.3pt)[#upper(title)]
    #v(-0.55em)
    #line(length: 100%, stroke: 0.8pt + accent.lighten(40%))
  ]
}

#let heading-side(title) = {
  block(above: 1.3em, below: 0.5em)[
    #text(fill: white, weight: "bold", size: 10.5pt, tracking: 1pt)[#upper(title)]
    #v(-0.5em)
    #line(length: 100%, stroke: 0.6pt + rgb("#334155"))
  ]
}

#let entry(period, org, role, details: none) = {
  block(above: 0.6em, below: 0.6em)[
    #grid(
      columns: (1fr,),
      row-gutter: 0.15em,
      [
        #text(weight: "bold", size: 10.5pt, fill: dark)[#role] \
        #text(size: 9.5pt, fill: gray)[#org]
        #h(1fr)
        #text(size: 8.5pt, fill: light-gray, style: "italic")[#period]
      ]
    )
    #if details != none [
      #v(0.15em)
      #text(size: 9pt, fill: gray)[#details]
    ]
  ]
}

#let level-bar(label, sublabel, fraction) = {
  block(above: 0.5em, below: 0.5em)[
    #text(size: 9pt, weight: "medium", fill: sidebar-fg)[#label]
    #if sublabel != none [
      #text(size: 8pt, fill: sidebar-muted)[ · #sublabel]
    ]
    #v(0.2em)
    #box(width: 100%, height: 3.2pt, fill: rgb("#334155"), radius: 2pt)[
      #box(width: fraction * 100%, height: 100%, fill: accent.lighten(10%), radius: 2pt)
    ]
  ]
}

#let project-card(name, description, tech) = {
  block(
    width: 100%,
    height: 3.6cm,
    inset: (x: 0.55em, y: 0.5em),
    radius: 4pt,
    fill: rgb("#f8fafc"),
    stroke: (top: 2.2pt + accent),
  )[
    #text(weight: "bold", size: 9.4pt, fill: dark)[#name]
    #v(0.16em)
    #text(size: 8pt, fill: gray)[#description]
    #v(1fr)
    #text(size: 7.3pt, fill: accent.darken(10%), weight: "medium")[#tech]
  ]
}

#let contact-line(label, content) = {
  block(above: 0.4em, below: 0.4em)[
    #text(size: 7.3pt, fill: accent.lighten(25%), weight: "bold", tracking: 0.5pt)[#upper(label)]
    #v(-0.35em)
    #text(size: 8.8pt, fill: sidebar-fg)[#content]
  ]
}

#grid(
  columns: (sidebar-width, 1fr),
  rows: (100%,),

  block(
    width: 100%,
    height: 100%,
    fill: sidebar-bg,
    inset: (x: 1.3cm, y: 1.5cm),
  )[
    #align(center)[
      #box(
        width: 3.4cm,
        height: 3.4cm,
        radius: 100%,
        clip: true,
        stroke: 2pt + accent,
      )[
        #image("portrait.jpg", width: 100%, height: 100%, fit: "cover")
      ]

      #v(0.7em)
      #text(fill: white, weight: "bold", size: 14pt)[Jonas Hazeland] \
      #text(fill: white, weight: "bold", size: 14pt)[Baugerud]
      #v(0.15em)
      #text(fill: accent.lighten(20%), size: 9.5pt, weight: "medium")[Dataingeniørstudent]
    ]

    #heading-side[Kontakt]
    #contact-line("E-post", [jonas.baugerud\@gmail.com])
    #contact-line("Telefon", [+47 983 22 914])
    #contact-line("Adresse", [Skogveien 24B, 1433 Ås])
    #contact-line("Født", [03.07.2004])
    #contact-line("GitHub", [#link("https://github.com/MrProgrammerMan")[MrProgrammerMan]])

    #heading-side[Språk]
    #level-bar("Norsk (bokmål)", "morsmål", 1.0)
    #level-bar("Engelsk", "flytende", 0.95)
    #level-bar("Rust", "raskt + trygt", 0.80)
    #level-bar("Haskell", "funksjonelt", 0.55)
    #level-bar("Nix", "infra", 0.65)

    #heading-side[Teknologi]
    #block(above: 0.4em)[
      #text(size: 8pt, fill: accent.lighten(25%), weight: "bold", tracking: 0.5pt)[GOD KJENNSKAP] \
      #text(size: 8.6pt, fill: sidebar-fg)[
        Rust · Nix · Bash · PostgreSQL · Python · Java · HTML/CSS · JavaScript
      ]
    ]
    #v(0.6em)
    #block[
      #text(size: 8pt, fill: accent.lighten(25%), weight: "bold", tracking: 0.5pt)[LÆRER FOR TIDEN] \
      #text(size: 8.6pt, fill: sidebar-fg)[
        Haskell · Scheme (Lisp) · WASM · async Rust · Vim · Event modeling · Event sourcing
      ]
    ]
    #v(0.6em)
    #block[
      #text(size: 8pt, fill: accent.lighten(25%), weight: "bold", tracking: 0.5pt)[VERKTØY] \
      #text(size: 8.6pt, fill: sidebar-fg)[
        Docker · Figma · GitHub Actions · NixOS · Nginx · Redis · Caddy
      ]
    ]

    #heading-side[Sertifikater]
    #block(above: 0.4em)[
      #text(size: 9pt, weight: "medium", fill: sidebar-fg)[Førerkort klasse B] \
      #text(size: 8pt, fill: sidebar-muted)[Kode 78 · automatgir]
    ]
  ],

  block(
    width: 100%,
    height: 100%,
    inset: (x: 1.4cm, y: 1.5cm),
  )[

    == #heading-main[Om meg]
    #v(-0.3em)
    #text(size: 9.6pt, fill: dark)[
      Jeg er dataingeniørstudent ved OsloMet med stor interesse for programmering, problemløsning og læring. \ #v(1pt)
      Personlig foretrekker jeg å jobbe med språk med gode typesystemer, ytelse og garantier om hvordan koden vil oppføre seg. Som all-around-språk bruker jeg mest Rust. Jeg lærer også Haskell, et av de eldre og mest robuste funksjonelle programmeringsspråkene. \ #v(1pt)
      Arkitekturmessig er jeg veldig fascinert av event sourcing og event modeling. \ #v(1pt)
      I tillegg til språkene jeg bruker til utvikling, bruker jeg Nix og NixOS til å konfigurere alle prosjektene og maskinene mine. Dette inkluderer utviklermiljøer og servere.
    ]
    #v(1em)

    #heading-main[Utvalgte prosjekter]
    #v(-0.3em)
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 0.6em,
      project-card(
        "Metronomicon",
        "Infoside for studenter ved OsloMet med crowdsourcing.",
        "Rust · React · Docker · Nix · Event sourcing",
      ),
      project-card(
        "Porteføljeside",
        "Personlig porteføljeside skrevet fullstack i Rust.",
        "Rust · Nix · OAuth2 · JWT",
      ),
      project-card(
        "NixOS Deployment Template",
        "Eget deployment-verktøy basert på nixos-anywhere, integrert med GitHub Actions.",
        "Nix · SSH · GitHub Actions",
      ),
    )
    #v(1em)

    #heading-main[Verv]

    #entry(
      "Pågående",
      "Ditio — linjeforening for IT-studenter, OsloMet",
      "Bedriftskontakt og arrangementsansvarlig",
    )
    #v(1em)

    #heading-main[Jobberfaring]

    #entry(
      "Aug 2026 - Des 2026",
      "OsloMet",
      "Studentassistent — DATS2300 Algoritmer og Datastrukturer",
    )
    #entry(
      "Jan 2026 - Jul 2026",
      "OsloMet",
      "Studentassistent — DATA1700 Webprogrammering",
    )
    #entry(
      "Nov 2024 - Jul 2025",
      "Holdbart AS",
      "Butikkmedarbeider",
    )
    #entry(
      "Jun 2024 - Aug 2024",
      "Moen sykehjem",
      "Pleieassistent",
    )
    #entry(
      "Jul 2023 - Aug 2024",
      "Ryslingmoen sykehjem",
      "Pleieassistent",
    )
    #entry(
      "Sep 2022 - Jul 2023",
      "Uloba",
      "Brukerstyrt personlig assistent"
    )
    #entry(
      "Jul 2020 - Jul 2021",
      "Coop Obs Elverum",
      "Butikkmedarbeider, deltid",
    )
    #v(1em)

    #heading-main[Utdanning]

    #entry(
      "Aug 2024 - nå",
      "OsloMet — Storbyuniversitetet",
      "Bachelor i dataingeniør",
    )
    #entry(
      "Pågående",
      "Universitetet i Oslo",
      "Enkeltemne(UiO) - IN2040 Funksjonell programmering",
    )
    #entry(
      "Aug 2023 - Jun 2024",
      "NTNU",
      "Bachelor i systemutvikling, dataingeniør",
    )
  ]
)