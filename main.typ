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


Traciškai programų sistemų modeliai aprašomi tekstu ir vizualinėmis diagramomis - sunkiai patikrinami automatiniai įrankiais, t.t. *[TODO]*.

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


= TLA+

Čia trumpai apie TLA+

TLA in Isabelle:
- @Merz1999AnEO, @Grov2011ADE

== TLAMP

Something something, čia paaiškinti kas yra ir kaip veikia TLAPM / TLAPS.

= Faktų paieška

Theorem search:
- Isabelle/HOL `find_theorems`, `find_consts` komandos
- Coq `Search` komanda

LSP stuff:
- Coq auto-completion @CoqAutoCompletion [probably very relevant]
- Coq search by type inhibition @CoqSearchByTypeInhabition [probably irrelevant]

== Previous art/work

Dalykai, ant kurių galiu pagrįsti savo darbą.

Isabelle `find_theorems` ir `find_consts` komandos, kaip veikia Coq `Search` komanda. Kas ir kokie metodai iš kiekvieno buvo pasirinkti, paaiškinti kodėl pasirinkti.

== Implementacija / kaip susijuniga su lsp ir TLAMP

Planas xuliganas: 

  vscode-lsp \<-> tlamp_lsp \<-> Isabelle

Galutinis rezultatas, kaip veikia, kaip naudotis, kaip pritaikyti.

== Pavyzdys

TLA+ pavyzdys, kuriame matosi kaip veikia faktų paieška.

= Trūkumai

= Rezultatai

= Išvados

#pagebreak()
#bibliography(title: [Šaltiniai], "refs.bib")
