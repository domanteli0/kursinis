#import "style.typ": style
#import "indent.typ": turn-on-first-line-indentation

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

#show: turn-on-first-line-indentation

= Įvadas

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

- TLA in Isabelle: @Merz1999AnEO, @Grov2011ADE

== TLAMP

paaiškinti kas yra ir kaip veikia TLAPM / TLAPS.

== Isabelle

= Faktų paieška

- Let AI/LLMs do it @TLAPS_LLM [outside the scope]
  Galimai naudinga:
    - "We present a novel approach to automated proof generation for the TLA+ Proof System (TLAPS) using Large Language Models (LLMs). Our method combines two key components: a sub-proof obligation generation phase that breaks down complex proof obligations into simpler sub-obligations, <...>"
- Coq `Search` komanda
- @TacTok
- Coq search by type inhibition @CoqSearchByTypeInhabition [probably irrelevant]
  - Kinda useless, bet _gal_ geri reference'ai:
    - 

- Hammer for Coq: Automation for dependent type theory @Hammer
- Isabelle/HOL `find_theorems`, `find_consts` komandos

LSP stuff:
- Rocq/Coq auto-completion @CoqAutoCompletion
  - "For every file, at every location where the tactics `apply` and `rewrite` are used, request for a list of completion items."
  - Realiai čia aprašo kaip geriausia sort'inti rezultatus, naudinga, bet čia pirma reikia turėti, ką sort'inti: "The only difference in how the algorithms are implemented is the sorting step."

Jeigu kalbėsiu apie Rocq (dar žinomą kaip Coq) @IntroToCoq

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

= Notes

- *The E Theorem Prover (https://github.com/eprover/eprover/blob/master/DOC/E-3.1.html)*

  Kaip suprantu gan paprasta first-order logic theorem prover implementacija.
  
  1.2 versija turi \~157k C kodo eilučiu, tai tikriausiai ne tokia ir paprasta implementacija.

  Tikriausiai irrelevant

  - The CADE ATP System Competition (https://tptp.org/CASC/)
  - "E -- a brainiac theorem prover" @EProver

#pagebreak()
#bibliography(title: [Šaltiniai], "refs.bib")
