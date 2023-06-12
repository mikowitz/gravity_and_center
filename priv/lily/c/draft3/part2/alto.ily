nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

sad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
}

alto = \relative c' {
  r4 r8 f8 ~ f2 ~
  f2 ~ f4 ~ \tuplet 3/2 { f4 g8 ~ }
  g1 ~
  g4 a4 ~ a2 ~
  a2 ~ \tuplet 3/2 { a4 c8 ~ } c4 ~
  c4 ~ \tuplet 3/2 { c4 \sad cs8 ~ } \sad cs4 ~ \tuplet 3/2 { \sad cs8 cs4 ~ }
  cs1 ~
  cs2 \nad f!2 ~
  \nad f!1 ~
  \nad f!1 ~
  \nad f!8 fqs8 ~ fqs4
}
