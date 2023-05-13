alto =
% \transpose df bf {
\relative c' {
  \once \omit Score.TimeSignature
  d1^\markup "7\""
  R1^\markup "12\""
  d1^\markup "5\""
  R1^\markup "10\""
  d,1^\markup "4\""
  R1^\markup "4\""
  \time 2/4
  \tempo 4 = 60
  \tuplet 3/2 { r4 d'8 } d4 \repeatTie
  \time 4/4
  \tuplet 5/4 { d4 \repeatTie r16 } r4 r2
  r4 \tuplet 3/2 { r4 d8 } d2 \repeatTie
  d1 \repeatTie
  \tuplet 5/4 { d16 \repeatTie r4 } r4 r2
  r4 d4 ~ d2 ~
  d1 ~
  d4 ~ \tuplet 3/2 { d8 r4 } r4 r8 r16 d16 ~
  d2 ~ \tuplet 5/4 { d16 r4 } r4

}
% }
