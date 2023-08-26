tenorC = \relative c' {
  R1
  r4 r8 d8(\mf ef8. d16 ~ d16 cs16 d8
  cs16 e8. ~ e16 ef8. d4 cs16 d8. ~
  d16 e8. ~ e16 af,8.\> ~ af2 ~
  \after 2.. \n
  af1)
  R1
  r2 r16 d8.(\mp ef4 ~
  \tuplet 5/4 { ef16 d8 cs16) d16(\p\< ~ } \tuplet 5/4 { d8 cs8 e16 ~ } e8 ef'8--\fermata \mf ) d,4(\mp\<
  \tuplet 3/2 { cs'4--\fermata\mf) d,8(\mp\< ~ } d8. e16 ~ e8. af16\f-- ~ af4\fermata)
  R1
  r8.
  %\once \override Slur.control-points = #'((0 . 0) (0 . 2) (0 . 2) (0 . 0))
  \shape #'((0 . 0) (0 . 2) (0 . -6) (0 . 0)) Slur
  cs,16(\f ~
  \once \override TupletBracket.whiteout = ##t
  \once \override TupletBracket.whiteout-style = #'outline
  \tuplet 5/4 { cs8 fs'8. ~ } fs4 d4\> ~
  \tuplet 5/4 { d16 c!4 ~ } \tuplet 3/2 { c8 d4\mp) } r2
  R1
  r4 d,,8-.\f r8 r8 c-.\p r4
  \tuplet 3/2 { d8-.\p r8 b-.\mf } d-.\f r8 r2
  r2 r4 \tuplet 5/4 { d8-.\p r16 cs8-.\mf }
  r8 fs'8\f\> ~ fs4 ~ fs4 d4\mp( ~
  \tuplet 5/4 { d8 c8. ~ } c4 \tuplet 3/2 { d4 b8\< } d4 ~
  \tuplet 3/2 { d4 b8\mf ~ } b2\> ~
  \after 2 \n
  b2.)
  r2 r8 d'8(\p\< ~ d4 ~
  \tuplet 3/2 { d4 af8 ~ } af4 ~ af16) d,8( g,16) d4( ~
  d4 g4 ~ g8) a,4( af8 ~
  \tuplet 3/2 { af8\f) r4 } r4 r2
  R1\fermata
  \tuplet 3/2 { cs8-.\mf r d-. } c-. r8 r2
  r2 \clef treble \tuplet 3/2 { r4 ef'8-.\f } cs8 r
  \tuplet 3/2 { d-. r c!-. } r4 r2
  r4 ef8\p\<( g ~ g2 ~
  \after 4. \mf
  g2) r2
  R1
  r4 \tuplet 3/2 { d4( \p\< c8\mf ~ \> } c2 ~
  c1 ~
  c2 ~
  \after 8. \n
  c4) r4
  r2 r4 \tuplet 3/2 { r8 d,4\p\<( ~ }
  d4 ~ d8 e8 ~ e2\mf\> ~
  e4 ~ e8) d8\mp\<( ~ d8 ef8) d4( ~
  d2 ~ \tuplet 3/2 { d4 ef8\mf \> ~ } ef4
  f4 \tuplet 3/2 { e4) d8(\p\< } ef2 ~
  ef4) d2\mp\>( f8 a8 ~
  \after 4. \n
  a2) r2
}
