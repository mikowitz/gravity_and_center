nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  \clef bass
  \nad c!4 ~
  c
  \clef treble
  cs'4 ~
  cs4 ~
  cs4 ~
  cs4
  ef,4 ~
  \tuplet 3/2 { ef4 f8 ~ }
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  f4
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  af8 a8 ~
  a4 ~
  a4 ~
  a4 ~
  \tuplet 3/2 { a8 \nad b!4 ~ }
  b4
  <b c' g'> ~
  <b c' g'> ~
  <b c' g'> ~
  <b c' g'>
  \nad g'!4 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  g4
  a4
  b4
  cs4
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  f4
  g4 ~
  g4 ~
  g4
  a,4 ~
  a4 ~
  a4 ~
  a4 ~
  a4
  c4 ~
  c4
  cs4
  <b, c' g'>4 ~
  <b c' g'>4 ~
  <b c' g'>4 ~
  <b c' g'>4
}
