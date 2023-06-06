bari = \relative c' {
  R1 * 7
  % \repeat unfold 20 { r4 }
  R1 * 4
  \time 5/4
  r4 r4 r4 r4
  % r4 * 21
  % 8
  r4 \fermata
  \time 4/4
  \tuplet 3/2 { d4 ef8 ~ }
  \tuplet 3/2 { ef4 d8 ~ }
  \tuplet 3/2 { d8 cs8 d8 ~ }
  \tuplet 3/2 { d8 cs8 e!8 ~ }
  e4 ~
  \tuplet 3/2 { e8 ef4 ~ }
  \tuplet 3/2 { ef8 d4 ~ }
  \tuplet 3/2 { d4 cs8 }
  % r4 * 6
  \time 3/4
  \repeat unfold 6 { r4 }
  \tuplet 3/2 { d2 ef4 ~ }
  \tuplet 3/2 { ef2 d4 ~ }
  \tuplet 3/2 { d4 cs4 d4 ~ }
  \tuplet 3/2 { d4 cs4 e!4 ~ }
  e2 ~
  \tuplet 3/2 { e4 ef2 ~ }
  \tuplet 3/2 { ef4 d2 ~ }
  \tuplet 3/2 { d2 cs4 \fermata}
}
