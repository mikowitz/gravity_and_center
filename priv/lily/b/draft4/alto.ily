alto = \relative c' {
  R1 * 7
  \repeat unfold 7 { r4 }
  % 10
  d4 ef4 d4 \tuplet 3/2 { cs8 d4 } cs8 e!8 ~ e4 ~ e8 ef8 ~ \tuplet 3/2 { ef4 d8 ~ } d4 ~ \tuplet 3/2 { d8 cs4 }
  \repeat unfold 8 { r4 }
  % 6
  d8 ef8 ~ ef16 d8 cs16 d8 cs16 e!16 ~ e4 ef8. d16 ~ d8. cs16
  \repeat unfold 6 { r4 }
  % 14
  \tuplet 3/2 { d2 ef4 ~ }
  ef4
  \tuplet 3/2 { d2 cs4 }
  d4
  \tuplet 3/2 { cs4 e!2 ~ }
  e4 ~
  \tuplet 3/2 { e4 ef8 ~ }
  ef4 ~
  % \tuplet 3/2 { e4 ef2 ~ }
  ef8 d8 ~
  d4
  cs4\fermata % cs8
}
