nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

sad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
}

alto = \relative c'' {
  fqs4 ~
  fqs4 ~
  fqs4 ~
  fqs4 ~
  fqs4 ~
  \tuplet 3/2 { fqs8 f,,4 ~ }
  f4
  g''4 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  \tuplet 3/2 { g8 a,4 ~ }
  \tuplet 3/2 { a4 c8 ~ }
  \tuplet 3/2 { c4 cs8 ~ }
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  \sad cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs8 cs8 ~
  cs4 ~
  cs4 ~
  cs8 ef8 ~
  ef4 ~
  ef4
  f4 ~
  \tuplet 3/2 { f8 af,4 ~ }
  af4 ~
  af4 ~
  af4 ~
  af4 ~
  \tuplet 3/2 { af4 <f fqs' cs'>8 ~ }
  4 ~
  4 ~
  4 ~
  4 ~
  8 a!8 ~
  a4
  \nad f!4 ~
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  f4 ~
  \tuplet 3/2 { f4 a8 ~ }
  a4 ~
  \tuplet 3/2 { a8 b4 ~ }
  b4 ~
  b4 ~
  b4 ~
  b4 ~
  b4 ~
  b4 ~
  b4 ~
  \tuplet 3/2 { b4 cs8 ~ }
  cs4 ~
  \tuplet 3/2 { cs8 e,4 ~ }
  e4 ~
  \tuplet 3/2 { e4 f8 ~ }
  f4 ~
  f4
  <f fqs' cs'>4 ~
  <f fqs' cs'>4 ~
  <f fqs' cs'>4



}
