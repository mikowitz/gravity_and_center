nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  \clef bass
  r2 r4 r8 a8 ~
  a2. b4
  \nad c!1 ~
  \nad c!1 ~
  \nad c!4 ~ \tuplet 3/2 { \nad c!4 cs8 ~ } cs8 \nad b'!8 ~ b4 ~
  b2 e4 ~ \tuplet 3/2 { e4 f8 ~ }
  f1 ~
  f2
}
