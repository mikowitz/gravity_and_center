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
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  g,8 af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  g,16 af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  g, af'
  \bar "||"
  g,[ af' g,]
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
  d1
  \bar "||"
  R1
  r8
  \nad
  g,,!4
  \fau
  af'!4
  \nad
  g,!4
  \fau
  af'!4
  \nad
  g,!4
  \fau
  af'!4
  \tuplet 3/2 { \nad g, \fau af' \nad g, }
  \tuplet 3/2 { \fau af' \nad g, \fau af'}
  \nad
  g,!8
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \tuplet 3/2 { \nad g, \fau af' \nad g, }
  \tuplet 3/2 { \fau af' \nad g, \fau af'}
  \nad
  g,!16
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!
  \nad
  g,!
  \fau
  af'!

  \bar "||"
  \nad g,[ \fau af' \nad d \fau af \nad g,]
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
