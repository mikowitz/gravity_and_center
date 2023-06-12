nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c {
  \clef bass
  r4 \tuplet 3/2 { r4 a8 ~ } a2 ~
  a4 ~ a8 b8 ~ b4 ~ \tuplet 3/2 { b8 cs,4 ~ }
  cs8 \nad a'!8 ~ \nad a!4 ~ \nad a!4 ~ \tuplet 3/2 { \nad a!8 e'4 ~ }
  e1 ~
  e2 bf'2 ~
  bf4 ~ \tuplet 3/2 { bf4 f'8 ~ } f2 ~
  f1 ~
  f2
}
