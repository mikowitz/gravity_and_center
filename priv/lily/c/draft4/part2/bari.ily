nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c' {
  \clef bass
  f2. ~ f8 \nad a,!8 ~
  \nad a!4 ~ \nad a!8 r8 r2
  r1
  \tuplet 3/2 { r8 g4 ~ } g4 f2
  r2 a,2
  r2 \tuplet 3/2 { r8 c4 ~ } c4 ~
  \tuplet 3/2 { c8 r4 } ~ r8 bf8 ~ bf4 ~ bf8 r8
  r1
  r4 ~ \tuplet 3/2 { r8 \nad a!4 ~ } \nad a!4 cs,4 ~
  \tuplet 3/2 { cs4 d8 ~ } d4 ~ \tuplet 3/2 { d4 r8 } r4
  r2
}
