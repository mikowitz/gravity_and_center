nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}
sad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
}

alto = \relative c'' {
  r2 \tuplet 3/2 { r4 a8 ~ } a4 ~
  a4 r4 r2
  \tuplet 3/2 { r8 b4 ~ } b4 ~ b8 fs8 ~ fs4 ~
  fs8 r8 \tuplet 3/2 { r4 cs8 } ~ cs4 ~ cs4
  \tuplet 3/2 { r8 e4 ~ } e4 ~ e8 r8 \nad f!4 ~
  \nad f!4 r4 r2
  r8 f!8 ~ f4 ~ f2 ~
  f2 ~ f4 \tuplet 3/2 { f4 g8 ~ }
  g4 ~ \tuplet 3/2 { g4 r8 } r2
  r4 a4 ~ a4 r4
  r2 \tuplet 3/2 { r4 c8 ~ } c4 ~
  \tuplet 3/2 { c4 r8 } \tuplet 3/2 { r4 \sad cs8 ~ } cs4 ~ \tuplet 3/2 { cs8 cs!4 ~ }
  cs4 ~ \tuplet 3/2 { cs8 r4 } r2
  r2 \nad f!2
  R1
  R1
  \bar "||"
  r8 fqs8 ~ fqs4 ~ fqs2 ~
  \time 3/4
  fqs2 r4
  \time 4/4
  \after 1 \stopTrillSpan
  \pitchedTrill
  fqs1\startTrillSpan f,!
  r4 
    \pitchedTrill
  f,4\startTrillSpan ~ g'

  f2 ~
  \after 2. \n
  f2. \>
  r4\stopTrillSpan
  R1
  R2. 
  R1*3
  R1*5/4
  R1
  R1*5/4
  R1
  R2.
  R1
  \time 3/4
  r4
  \pitchedTrill
  f2\startTrillSpan fqs
  r4\stopTrillSpan
  r4 r4 
  \time 4/4
  \once \override TrillPitchAccidental.stencil = #ly:text-interface::print
  \once \override TrillPitchAccidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
  \pitchedTrill
  e2.\startTrillSpan fs
  r4
  \pitchedTrill
  f!1\startTrillSpan fqs
  <>\stopTrillSpan
  \time 4/4
  
  R1
  r2 \tuplet 3/2 { r4 <f fqs' cs'>2}
}
