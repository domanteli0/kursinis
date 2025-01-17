#import "style.typ": style

#show: style.with(
  university: "Vilniaus universitetas",
  faculty: "Matematikos ir informatikos fakultetas", 
  department: "Programų sistemų studijų programa",
  papertype: "Kursinis darbas",
  title: "Faktų paieška pagal šabloną TLA+ įrodymų sistemoje",
  titleineng: "Fact search by pattern in the TLA+ proof system",
  author: "Domantas Keturakis",
  status: "4 kurso 1 grupės studentas",
  supervisor: "Doc., Dr. Karolis Petrauskas",
  date: "Vilnius - 2024",
)

#set text(size: 12pt)

= Įvadas

#par[.]

Traciškai programų sistemų modeliai aprašomi tekstu ir vizualinėmis diagramomis (UML) - šie yra sunkiai patikrinami automatiniai įrankiais. *[TODO]*.

Formalūs metodai (angl. _formal methods_) yra programinės įrangos kūrimo metodai, kurie naudoja matematine logika pagrįstus modelius, tam kad būtų galima analizuoti ir įrodyti programinės įrangos modelio savybes.

TLA#super[+] yra formaliais metodais pagrįsta modeliavimo sistema, kuria galima patikrinti sistemų modelių savybęs, siekiant užtikrinti jų teisingumą.

Sėkmingi atvejai:
- (AWS) ... @Amazon
- Safety-crictical systems:
  - TAS @TAS
  - A train status alert system @Train
  - Avation systems @Aviation


_Čia nežinau, gal per mažai faktiška:_ IDEs padidina prieinanumą ir gali padidini TLA+ naudojamumą. (Todėl verta/relevant tobulinti TLA+ LSP)
 
#pagebreak()

Search engines [probably irrelevant]:
- Isabelle @FindFacts,
- Loogle for theorems in Lean

= Background

Basically, šitai:
"In this section, we describe the fundamental technologies for this paper. We describe the proof assistant Coq, giving an overview of how it works, as well as describe Visual Studio Code (VS Code), the Language Server Protocol (LSP), and the concept of code completion." bet skirtą šitam darbui.

== TLA+

Čia trumpai apie TLA+

TLA in Isabelle:
- @Merz1999AnEO, @Grov2011ADE

== TLAMP

paaiškinti kas yra ir kaip veikia TLAPM / TLAPS.

== Isabelle

= Faktų paieška

Theorem search:
- Isabelle/HOL `find_theorems`, `find_consts` komandos
- Coq `Search` komanda

LSP stuff:
- Coq auto-completion @CoqAutoCompletion [probably very relevant]
  - "For every file, at every location where the tactics `apply` and `rewrite` are used, request for a list of completion items."
- Coq search by type inhibition @CoqSearchByTypeInhabition [probably irrelevant]

== Previous art/work

Dalykai, ant kurių galiu pagrįsti savo darbą.

Isabelle `find_theorems` ir `find_consts` komandos, kaip veikia Coq `Search` komanda. Kas ir kokie metodai iš kiekvieno buvo pasirinkti, paaiškinti kodėl pasirinkti.

== Implementacija / kaip susijuniga su lsp ir TLAMP

Planas xuliganas:

  vscode-lsp \<-> tlamp_lsp \<-> tlamp \<-> Isabelle

Galutinis rezultatas, kaip veikia, kaip naudotis, kaip pritaikyti.

== Pavyzdys

TLA+ pavyzdys, kuriame matosi kaip veikia faktų paieška.

= Trūkumai

= Rezultatai

= Išvados

#pagebreak()
#bibliography(title: [Šaltiniai], "refs.bib")
