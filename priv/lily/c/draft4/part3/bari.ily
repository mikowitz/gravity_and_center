nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c, {
  \clef bass
  d4 ~
  d4 ~
  d4 ~
  d4
  cs''4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs4
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4 ~
  ef4
  f4 ~
  f8 <a,, a' f' bf d>8 ~
  4 ~
  4 ~
  4 ~
  \tuplet 3/2 { 8 af'4 ~ }
  af4 ~
  af4 ~
  af4
  a4
  b4
  cs4
  d4 ~
  d4 ~
  d4 ~
  d4
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  \tuplet 3/2 { e4 f8 ~ }
  f4 ~
  f4 ~
  f4
  \nad a,!4 ~
  \nad a!4 ~
  \nad a!4 ~
  \nad a!4
  f'4
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  g4
  a,!4
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4
  cs4 ~
  cs4
  <a,! a' f' bf d>4 ~
  <a! a' f' bf d>4 ~
  <a! a' f' bf d>4 ~
  <a! a' f' bf d>4 ~
  <a! a' f' bf d>4 ~
  <a! a' f' bf d>4
}
