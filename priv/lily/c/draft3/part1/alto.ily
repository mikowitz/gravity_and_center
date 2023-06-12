nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

alto = \relative c'' {
  r2 \tuplet 3/2 { r4 a8 ~ } a4 ~
  a1 ~
  \tuplet 3/2 { a8 b4 ~ } b4 ~ b8 fs8 ~ fs4 ~
  fs4 ~ \tuplet 3/2 { fs4 cs8 } ~ cs2 ~
  \tuplet 3/2 { cs8 e4 ~ } e2 \nad f!4 ~
  \nad f!1 ~
  \nad f!8 f!8 ~ f4 ~ f2 ~
  f2
}
