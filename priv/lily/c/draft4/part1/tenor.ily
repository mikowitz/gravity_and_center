nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  \clef bass
  r2 r4 r8 a8 ~
  a4 ~ a8 r8 r4 b4
  \nad c!2 r2
  R1
  r4 ~ \tuplet 3/2 { r4 cs8 ~ } cs8 \nad b'!8 ~ b4 ~
  b8 r8 r4 e4 ~ \tuplet 3/2 { e4 f8 ~ }
  f4 ~ f4 r2
  r8 f8 ~ f4 ~ f2
  \nad b,!2 r2
  r4 \tuplet 3/2 { r4 g8 ~ } \tuplet 3/2 { g4 a8 ~ } a4 ~
  \tuplet 3/2 { a4 r8 } r4 r4 \tuplet 3/2 { r8 \nad g4 ~ }
  g4 ~ \tuplet 3/2 { g8 r4 } r2
  R1
  \tuplet 3/2 { r8 c,4 ~ } c4 ~ \tuplet 3/2 { c8 r4 } \tuplet 3/2 { r4 cs8 ~ }
  cs4 ~ \tuplet 3/2 { cs4 r8 } \nad c!2
  R1
  R1
  R2.
  R1 * 4
  R2.
  \clef treble
  r4
  \pitchedTrill
  gs'2\startTrillSpan a'
  
  r4\stopTrillSpan
  R1
  
  r2 \tuplet 3/2 { r8 \nad <b! c' g'>4 ~ } 4 ~
  \time 5/4
  <b c' g'>2 ~ 2. ~
  \after 2.. \n
  1\>
  r2
  \nad
  \pitchedTrill
  g!2.\startTrillSpan a'
  <>\stopTrillSpan
  \tuplet 3/2 { a2 b cs ~ }
  \time 3/4
  cs4 e2 ~
  \time 4/4
  \tuplet 3/2 { e2 f2 r2 }
  R2. * 2
  R1*3
  <b, c' g'>1
}
