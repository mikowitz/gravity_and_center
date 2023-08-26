nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenorD = \relative c {
  r2 r4 r8 a8\pp ~
  a4 ~ a8 r8 r4 b(\pp \<
  \after 4.. \p
  c2) r2
  R1
  r4 \tuplet 3/2 { r4 cs8\pp( ~ } cs8 \sad b'!8 ~ b4 ~
  b8\p) r8 r4 e4\pp(\< ~ \tuplet 3/2 { e4 f8 ~ }
  \after 4..\p
  f2) r2
  r8 f(\pp\< ~ f4 ~ f2
  \after 4.. \p
  b,2) r2
  r4 \tuplet 3/2 { r4 g8(\pp\< ~ } \tuplet 3/2 { g4 a8 ~ } a4 ~
  \tuplet 3/2 { a4)\p r8 } r4 r4 \tuplet 3/2 { r8 g4\pp ~ }
  g4 ~ \tuplet 3/2 { g8 r4 } r2
  R1
  \tuplet 3/2 { r8 c,4\pp ~ } c4 ~ \tuplet 3/2 { c8 r4 } \tuplet 3/2 { r4 cs8\pp ~ }
  cs4 ~ \tuplet 3/2 { cs4 r8 } \nad c2\pp
  R1
  R1 *7/4
  R1 * 5
  \clef treble r4
  \pitchedTrill gs'2.\mp\startTrillSpan\> ~ a'
  \after 4.\p
  gs2 <> \stopTrillSpan r2
  r2 \tuplet 3/2 { r8 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    b!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
  >4\pp
      \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
    \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
  ^\markup {
    \translate #'(-13 . 7)
    \multiTenor
  }
  ~ } 4 ~
  2 ~ 2. ~
  \after 2..\n
  1\>
  r2
  \nad
  \pitchedTrill
  g2.\mp\>\startTrillSpan a'
  <>\stopTrillSpan
  \tuplet 3/2 { a2\pp\<( b2 cs ~ }
  cs4 e2 ~
  \tuplet 3/2 { e2 f\mf) r }
  R2. * 3
  R1 * 2
   <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    b,!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
  >1\pp
     \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
     \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
 ^\markup {
   \translate #'(-12 . 9)
   \multiTenor
 }
}
