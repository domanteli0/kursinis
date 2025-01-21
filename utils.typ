#let cite-with-title(bibitem) = {
  bibitem.element
  // let bib = bibtex.find(bibitem)
  // let title = bib.title
  // let shorthand = cite(bibitem)
  
  // "„" + title + "“ " + shorthand
}

#let c(bibitem) = cite-with-title(bibitem)