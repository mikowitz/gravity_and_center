fau = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
}

sop = \relative c'' {
  r4 * 8
  g4 af'
  g, af'
  g, af'
  g, af'
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af' g, af' }
  \tuplet 3/2 { g, af'8 ~ }
  af8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  af'8 g,
  \repeat tremolo 8 { af'32 g, }
  \tuplet 3/2 { af'8 g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af'8 g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af'8 g, af' }
  \tuplet 3/2 { g, af' g, }
  \tuplet 3/2 { af'8 g, af' }
  \tuplet 3/2 { g, af' g, }
  af'16 g, af' g,
  af'16 g, af' g,
  af'16 g, af' g,
  af'16 g, af' g,
  \repeat tremolo 12 { af'32 g, }
  \repeat tremolo 16 { af'32 g, }
  \repeat tremolo 8 { af'32 g, ~ }
  g16 af'
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
  g, af'\fermata ~ af2. ~
  af1
  \bar "||"
  g,4 \fau af'
  g,4 \fau af'
  g,4 \fau af'
  \tuplet 3/2 { g, \fau af' g, }
  \tuplet 3/2 { \fau af' g, \fau af' }
  \tuplet 3/2 { g, \fau af' g, }
  \tuplet 3/2 { \fau af' g, \fau af' }
  \tuplet 3/2 { g, \fau af' g, }
  \tuplet 3/2 { \fau af' g, \fau af' }
  \tuplet 3/2 { g, \fau af' g, }
  \tuplet 3/2 { \fau af' g,8 }
  \fau af'8 g,
  \fau af'8 g,
  \fau af'8 g,
  \fau af'8 g,
  \fau af'8 g,
  \fau af'8 g,
  \fau af'4 g,
  \fau af'4 g,
  \fau af'4 g,
  \tuplet 3/2 { \fau af' g, \fau af' }
  \tuplet 3/2 { g, \fau af'8 }
  g,8 \fau af'
  g,8 \fau af'
  g,8 \fau af'
  \tuplet 3/2 { g,8 \fau af' g, }
  \fau af'16 g, \fau af' g,
  \fau af'16 g, \fau af' g,
  \fau af'16 g, \fau af' g,
  \fau af'16 g, \fau af' g,
  \repeat tremolo 16 { \fau af'32 g, }
  \repeat tremolo 16 { \fau af'32 g, }
  \repeat tremolo 16 { \fau af'32 g, }
  \repeat tremolo 8 { \fau af'32 g, ~ }
  \bar "||"
  g16 \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
  g, \fau af'
}
