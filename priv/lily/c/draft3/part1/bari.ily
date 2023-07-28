nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c {
  \clef bass
  r4 \tuplet 3/2 { r4 a8 ~ } a4 ~ \tuplet 3/2 { a4 r8 }
  r4 r8 b8 ~ b4 ~ \tuplet 3/2 { b8 cs,4 ~ }
  cs8 \nad a'!8 ~ \nad a!4 ~ \nad a!8 r8 \tuplet 3/2 { r8 e'4 ~ }
  e4 ~ \tuplet 3/2 { e8 r4 } r2
  r2 bf'2
  r4 \tuplet 3/2 { r4 f'8 ~ } f4 ~ \tuplet 3/2 { f4 r8 }
  r1
  r2
}
