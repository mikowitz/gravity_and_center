nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c' {
  \clef bass
  r1 ~
  r8 f8 ~ f4 ~ f2
  \nad b,!1 ~
  \nad b!4 ~ \tuplet 3/2 { \nad b!4 g8 ~ } \tuplet 3/2 { g4 a8 ~ } a4 ~
  a2 ~ a4 ~ \tuplet 3/2 { a8 \nad g!4 ~ } ~
  \nad g!1 ~
  \nad g!1 ~
  \tuplet 3/2 { \nad g!8 c,4 ~ } c4 ~ c4 ~ \tuplet 3/2 { c4 cs8 ~ }
  cs2 \nad c!2 ~
  \nad c!1 ~
  \nad c!2
}
