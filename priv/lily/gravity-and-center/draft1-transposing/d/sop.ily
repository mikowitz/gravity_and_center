sopD = \relative c''' {
  \tempo 4 = 84
  a2\pp--
  ^\tweak extra-offset #'(2 . -4)
  ^\tweak outside-staff-priority #2000
  ^\markup { \magnify #1.5 \bold "like a horse whipped by a man" }
  r2
  R1
  \tuplet 3/2 { r4 gs8\pp ~ } gs4 ~ gs4 r4
  r2 r4 r8 b,8\pp ~
  b4 ~ b8 r8 r2
  \tuplet 3/2 { r8 cs4\pp\<( ~ } \tuplet 3/2 { cs8 g4 ~ } g4 ~ g8\p) r8
  r4 e2\pp\<( f4 ~
  f1 ~
  f1 ~
  f1
  g2\mp) r2
  r8 gs'8\pp ~ gs4 ~ gs8 r8 r4
  \tuplet 3/2 { r4 a8\pp ~ } a4 ~ \tuplet 3/2 { a4 r8 } c4\pp\<( ~
  c4
  \after 4. \p
  cs2) r4
  \tuplet 3/2 { r8 ds4\pp ~ } ds4 ~ \tuplet 3/2 { ds8 r4 } r4
  r2 \tuplet 3/2 { r8 g,4\pp ~ } g4 ~
  \time 7/4
  \tempo 4 = 60
  \tuplet 3/2 { g8 r4 } r4 r4 f1(\pp\<^"slow timbral trill" ~
  \time 4/4
  f2 g,2~\p^"slow timbral trill" \>
  \after 2. \n
  g1)
  r2 g\pp\< ~
  <g gs' ds'>1\mp ~
  \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
  ^\tweak layer #100
      \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
  ^\markup  {
    \translate #'(9 . 7)
    \multiSop
  }
  \after 4. \n
  2 \> r2
  \tuplet 3/2 { c2(\p\< df ef ~ }
  ef4\mf) r4 r2
  R1
  %\once \override Score.TimeSignature.whiteout = ##t
  \time 5/4
  R1*5/4
  \time 4/4
  R1
  \time 5/4
  R1*5/4
  \time 4/4
  R1
  \time 3/4
  b,4.\pp\< ( cs4. ~
  \time 4/4
  cs4 e2 f4\mf\>
  \time 3/4
  \after 2 \n
  f2.)
  R1.
  \time 4/4
  r2 r4 <g af' ef'>4\pp
  \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
  \tweak layer #100
      \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
  ^\markup {
    \translate #'(18 . 9)
    \multiSop
  }
  ~
  1 ~
  1
  \tweak extra-offset #'(0 . 1)
  \mark \default
  \bar "||"

}
