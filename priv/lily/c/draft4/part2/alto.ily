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
  g4 ~ \tuplet 3/2 { g4 r8 } r2
  r4 a4 ~ a4  r4
  r2 \tuplet 3/2 { r4 c8 ~ } c4 ~
  \tuplet 3/2 { c4 r8 } \tuplet 3/2 { r4 \sad cs8 ~ } \sad cs4 ~ \tuplet 3/2 { \sad cs8 cs4 ~ }
  cs4 ~ \tuplet 3/2 { cs8 r4 } r2
  r2 \nad f!2
  r1
  r1
  r8 fqs8 ~ fqs4
}
