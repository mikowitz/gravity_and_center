nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  \clef bass
  r2 r4 r8 a8 ~
  a4 ~ a8 r8 r4 b4
  \nad c!2 r2
  R1
  r4 ~ \tuplet 3/2 { r4 cs8 ~ } cs8 \nad b'!8 ~ b4 ~
  b8 r8 r4 e4 ~ \tuplet 3/2 { e4 f8 ~ }
  f4 ~ \tuplet 3/2 { f4 r8 } r2
  r2
}
