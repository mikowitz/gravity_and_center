sop = \relative c' {
  d2 ef2 ~
  ef4 d2 cs4
  d2 cs4 e!4 ~
  e1
  ef2. d4 ~
  d2. cs4
  R1\fermata
  \bar "||"
  % \time 3/4
  % 20
  d2 ef2
  d2 \tuplet 3/2 { cs4 d2 }
  cs4 e!4 ~ e2 ~
  e4 ef4 ~ \tuplet 3/2 { ef2 d4 ~ }
  d2 ~ \tuplet 3/2 { d4 cs4 r4 }
  % d4 ~ \tuplet 3/2 { d4 ef2 ~ }
  % ef4 \tuplet 3/2 { d2 cs4 }
  % d4 ~ \tuplet 3/2 { d4 cs e! ~ }
  % e2.
  % ef4 ~ \tuplet 3/2 { ef2 d4 ~ }
  % d4 ~ \tuplet 3/2 { d2 cs4 }
  \repeat unfold 7 { r4 }

  % 12
  d4 ef4 ~ ef8 d8 ~
  d8 cs8 d4
  \time 3/4
  cs8 e!8 ~
  e2
  \time 4/4
  ef4 ~
  ef8 d8 ~ d4 ~ d8 cs8
  \repeat unfold 5 { r4 }
  % 7
  \tuplet 3/2 { d4 ef8 ~ }
  ef8 d8
  \tuplet 3/2 { cs8 d4 }
  cs16 e!8. ~
  \tuplet 3/2 { e4 ef8 ~ }
  ef8 d8 ~
  \tuplet 3/2 { d4 cs8 \fermata}



}
