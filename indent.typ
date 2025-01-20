#let indent = 1cm
#let styled = [#set text(red)].func()
#let space = [ ].func()
#let sequence = [].func()

#let turn-on-first-line-indentation(
  doc,
  last-is-heading: false, // space and parbreak are ignored
  indent-already-added: false,
) = {
  for (i, elem) in doc.children.enumerate() {
    let element = elem.func()
    if element == text {
      let previous-elem = doc.children.at(i - 1)
      if i == 0 or last-is-heading or previous-elem.func() == parbreak {
        if not indent-already-added {
          indent-already-added = true
          h(indent)
        }
      }
      elem
    } else if element == heading {
      indent-already-added = false
      last-is-heading = true
      elem
    } else if element == space {
      elem
    } else if element == parbreak {
      indent-already-added = false
      elem
    } else if element == sequence {
      turn-on-first-line-indentation(
        elem,
        last-is-heading: last-is-heading,
        indent-already-added: indent-already-added,
      )
    } else if element == styled {
      styled(turn-on-first-line-indentation(
        elem.child,
        last-is-heading: last-is-heading,
        indent-already-added: indent-already-added,
      ), elem.styles)
    } else {
      indent-already-added = false
      last-is-heading = false
      elem
    }
  }
}

// https://github.com/typst/typst/issues/311#issuecomment-2564502920