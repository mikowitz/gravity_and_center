nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

fau = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
}

alto = \relative c' {
  g4 af'
  g,4 af'
  g,4 af'
  g,4 af'
  g,4 af'
  g,4 af'
  g,4 af'
  g,4 af'
  \time 5/4
  g,4 af'
  g,4
  \tuplet 3/2 { af' g, af' }
  \time 4/4
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  g,8 af'
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  g,16 af' g, af'
  g,16 af' g, af'
  g,16 af' g, af'
  g,16 af' g, af'
  \repeat tremolo 8 { g,32 af' }
  \bar "||"
  g,16[ af' g,]
  g[ af' d af g,]
  g[ af' g,]
  g[ af' d af g,]
  g[ af' g,]
  g[ af' d af g,]
  g[ af' g,]
  g[ af' d af g,]
  g[ af' g,]
  g[ af' d af g,]
  g[ af' g,]
  g[ af' d af g,]
  g[ af' d]\fermata ~ d8. ~
  d2 ~
  d1 ~
  \bar "||"
  d2
  \nad g,,!4 \fau af'
  \nad g,!4 \fau af'
  \nad g,!4 \fau af'
  \nad g,!4 \fau af'
  \nad g,!4 \fau af'
  \nad g,!4 \fau af'
  \tuplet 3/2 { \nad g,!4 \fau af' \nad g, }
  \tuplet 3/2 { \fau af' \nad g, \fau af' }
  \tuplet 3/2 { \nad g,!4 \fau af' \nad g, }
  \tuplet 3/2 { \fau af' \nad g, \fau af' }
  \tuplet 3/2 { \nad g,!4 \fau af'8 }
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \tuplet 3/2 { \nad g,!8 \fau af' \nad g,!8 }
  \tuplet 3/2 { \fau af' \nad g,!8 \fau af' }
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \nad g,!8 \fau af'
  \tuplet 3/2 { \nad g,!8 \fau af' \nad g,!8 }
  \tuplet 3/2 { \fau af' \nad g,!8 \fau af' }
  \tuplet 3/2 { \nad g,!8 \fau af' \nad g,!8 }
  \tuplet 3/2 { \fau af' \nad g,!8 \fau af' }
  \tuplet 3/2 { \nad g,!8 \fau af' \nad g,!8 }
  \tuplet 3/2 { \fau af' \nad g,!8 \fau af' }
  \tuplet 3/2 { \nad g,!8 \fau af' \nad g,!8 }
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \fau af'16 \nad g,!16 \fau af' \nad g,!16
  \repeat tremolo 8 { \fau af'32 \nad g,! ~ }
  \bar "||"
  \nad g16[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad g,]
  \nad g[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad g,]
  \nad g[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad g,]
  \nad g[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad g,]
  \nad g[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad g,]
  \nad g[ \fau af' \nad d \fau af \nad g,]
  \nad g[ \fau af' \nad d]\fermata
}
