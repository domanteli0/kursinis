#import "style.typ": style
#import "indent.typ": turn-on-first-line-indentation
#import "utils.typ": c

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

= Terminai

// ```Coq
// (* Defining a tactic *)
// Ltac mega_destruct :=
//   match goal with
//     | [H: _ /\ _ |- _] => destruct H
//     | [H: _ \/ _ |- _] => destruct H
//     | [H: exists _ : _, _ |- _] => destruct H end.

// (* Implemeting the rev function *)
// Fixpoint rev {A:Type} (l:list A) : list A := match l with
//   | nil => nil
//   | cons h t => app (rev t) (cons h nil) end.

// (* Specifying theorem statement for rev_rev *)
// Theorem rev_rev :
//     forall A (l l' : list A),
//   l = rev l' ->
//   l' = rev l.

// (* Constructing proof for rev_rev *)
// Proof.
//   intros A l l' H. symmetry.
//   rewrite H.
//   apply rev_involutive.
// Qed.
// ```

- ATP (Automated theorem proving) - TODO
- Proof construction - įrodymo rašymas (ranka), i.e.: dalis nuo `Proof` iki `Qed`.
- Proof search - ta dalis, kur ATP atlieka automatiškai.
- Proof synthesis - ???
- Proof script - viskas nuo `Theorem` iki `Qed`.

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

_Gal_ tinkami raktažodžiai: metaheuristic search, proof script synthesis, automated proof script synthesis

== RocQ (Coq)

// #show ref: it => {
//   let el = it.element
//   it.citation
// }

- "Expanding Coq With Type Aware Code Completion" @CoqAutoCompletion
  - Kaip suprantu veikia tik su `rewrite` ir `apply` taktikomis: "For every file, at every location where the tactics apply and rewrite are used, request for a list of completion items."
  - "Discovery is handled through the internal function that is also used by the Search command in Coq"
  - "For every file, at every location where the tactics `apply` and `rewrite` are used, request for a list of completion items."
  - Realiai čia aprašo kaip geriausia sort'inti rezultatus, naudinga, bet čia pirma reikia turėti, ką sort'inti: "The only difference in how the algorithms are implemented is the sorting step."

- TacTok: semantics-aware proof synthesis @TacTok
  - Gal turi gerų reference'ų: "Recent research has shown that the proof state can help predict the next step."
  - "In this paper, we present TacTok, the first technique that attempts to fully automate proof script synthesis by modeling proof scripts using both the partial proof script written thus far and the semantics of the proof state"
  - Cited:
    - CoqHammer
    - ASTactic
- Coq search by type inhibition @CoqSearchByTypeInhabition [probably irrelevant]
  - Kinda useless, bet _gal_ geri reference'ai:
    - 
- PRoofster: Automated Formal Verification @Proofster
- Coq `Search` komanda

- Hammer for Coq: Automation for dependent type theory @Hammer

Jeigu kalbėsiu apie Rocq (dar žinomą kaip Coq) @IntroToCoq

== Others

- Let AI/LLMs do it @TLAPS_LLM [outside the scope]
  Galimai naudinga:
    - "We present a novel approach to automated proof generation for the TLA+ Proof System (TLAPS) using Large Language Models (LLMs). Our method combines two key components: a sub-proof obligation generation phase that breaks down complex proof obligations into simpler sub-obligations, <...>"
- Isabelle/HOL `find_theorems`, `find_consts` komandos

LSP stuff:

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
