nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c' {
  \clef bass
  R1 ~
  r8 f8 ~ f4 ~ f2
  \nad b,!2 r2
  r4 ~ \tuplet 3/2 { r4 g8 ~ } \tuplet 3/2 { g4 a8 ~ } a4 ~
  \tuplet 3/2 { a4 r8 } r4 a4 \tuplet 3/2 { r8 \nad g!4 ~ } ~
  \nad g!4 ~ \tuplet 3/2 { \nad g!8 r4 } r2
  R1
  \tuplet 3/2 { r8 c,4 ~ } c4 ~ \tuplet 3/2 { c8 r4 } \tuplet 3/2 { r4 cs8 ~ }
  cs4 ~ \tuplet 3/2 { cs4 r8 } \nad c!2
  r1
  r2
}
