nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

alto = \relative c'' {
  r2 \tuplet 3/2 { r4 a8 ~ } a4 ~
  \tuplet 3/2 { a4 r8 } r4 r2
  \tuplet 3/2 { r8 b4 ~ } b4 ~ b8 fs8 ~ fs4 ~
  fs8 r8 \tuplet 3/2 { r4 cs8 } ~ cs4 ~ \tuplet 3/2 { cs4 r8 }
  \tuplet 3/2 { r8 e4 ~ } e4 ~ \tuplet 3/2 { e8 r4 } \nad f!4 ~
  \nad f!4 r4 r2
  r8 f!8 ~ f4 ~ f8 r8 r4
  r2
}
