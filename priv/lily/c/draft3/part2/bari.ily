nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c' {
  \clef bass
  f2. ~ f8 \nad a,!8 ~
  \nad a!1 ~
  \nad a!1 ~
  \tuplet 3/2 { \nad a!8 g4 ~ } g4 f2 ~
  f2 a,2 ~
  a2 ~ \tuplet 3/2 { a8 c4 ~ } c4 ~
  c4 ~ c8 bf8 ~ bf2 ~
  bf1 ~
  bf4 ~ \tuplet 3/2 { bf8 \nad a!4 ~ } \nad a!4 cs,4 ~
  \tuplet 3/2 { cs4 d8 ~ } d4 ~ d2 ~
  d2
}
