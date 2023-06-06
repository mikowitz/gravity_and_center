sop = \relative c' {

  \override BreathingSign.text = \markup { \fontsize #8 "," }
  % 1
  \tempo 4 = 96
  \tuplet 5/4 { d8 ef8. }
  \tuplet 5/4 { d8 cs16 d8 }
  \tuplet 5/4 { cs16 e!4 ~ }
  \tuplet 5/4 { e16 ef8. d16 ~ }
  \tuplet 5/4 { d8. cs16 d16 ~ }
  \tuplet 5/4 { d8. e!8 ~ }
  \tuplet 5/4 { e8 af,8. ~ }
  \tuplet 5/4 { af8 \breathe d8.^\markup { \fontsize #5 "2"} }

  % 2
  \tuplet 5/4 { ef4 d16 ~ }
  \tuplet 5/4 { d16 cs16 d8 cs16 }
  e!4
  ef8. d16 ~
  \tuplet 5/4 { d8. cs16 d16 ~ }
  d8. e!16 ~
  \tuplet 5/4 { e8. af,8 ~ }
  af8. [ \breathe d16^\markup { \fontsize #5 "3"} ~ ]

  % 3
  d8 ef8 ~
  \tuplet 5/4 { ef8 d8 cs16 }
  d8. cs16 ~
  \tuplet 5/4 { cs16 e!4 ~ }
  \tuplet 5/4 { e16 ef8. d16 ~ }
  \tuplet 5/4 { d8. cs16 d16 ~ }
  \tuplet 5/4 { d8. e!8 ~ }
  \tuplet 5/4 { e8 af,8. ~ }
  af8 \breathe d8^\markup { \fontsize #5 "4"} ~

  % 4
  \tuplet 5/4 { d16 ef4 }
  \tuplet 5/4 { d8 cs16 d8 ~ }
  \tuplet 5/4 { d16 cs8 e!8 ~ }
  e8 ef8
  \tuplet 5/4 { d4 cs16 }
  d4
  \tuplet 5/4 { e!4 af,16 ~ }
  af4
  \breathe

  % 5
  \tuplet 5/4 { d8.^\markup { \fontsize #5 "5"} ef8 ~ }
  ef8 d8
  \tuplet 5/4 { cs16 d8. cs16 ~ }
  cs16 e!8. ~
  \tuplet 5/4 { e16 ef8 d8 ~ }
  d16 cs8 d16 ~
  \tuplet 5/4 { d8. e!8 ~ }
  e8 af,8 ~
  af8. \breathe d16^\markup { \fontsize #5 "6" } ~

  % 6
  d8 c8 ~
  \tuplet 5/4 { c8 d8 b16 }
  d8. b16 ~
  \tuplet 5/4 { b16 cs4 }
  c8 d8 ~
  \tuplet 5/4 { d16 b8 d8 ~ }
  d8 cs8 ~
  \tuplet 5/4 { cs16 fs4 ~ }
  fs8 \breathe d8^\markup { \fontsize #5 "7" } ~

  % 7
  \tuplet 5/4 { d8 c8. ~ }
  c8 d8
  \tuplet 5/4 { b16 d8. b16 ~ }
  b16 cs8. ~
  \tuplet 5/4 { cs16 c8 d8 ~ }
  d16 b8 d16 ~
  \tuplet 5/4 { d8. cs8 ~ }
  cs16 fs8. ~
  fs4

  \breathe

  % 8
  d4^\markup { \fontsize #5 "8" }
  c4
  d8 b16 d16 ~
  \tuplet 5/4 { d8. b8 ~ }
  b16 cs8. ~
  \tuplet 5/4 { cs16 c8 d8 ~ }
  d16 b8 d16 ~
  \tuplet 5/4 { d8. cs8 ~ }
  cs16 fs8. ~
  fs4

  \breathe

  % 9
  d4^\markup { \fontsize #5 "9" }
  c4
  d8 b16 d16 ~
  \tuplet 5/4 { d8. b8 ~ }
  b16 cs8.
  \tuplet 5/4 { c8 d8 b16 ~ }
  b16 d8. ~
  \tuplet 3/2 { d8 cs4 ~ }
  cs16 fs8. ~
  fs4

  \breathe

  % 10
  d4^\markup { \fontsize #5 "10" } ~
  d16 c8. ~
  \tuplet 5/4 { c8 d8 b16 }
  d4
  b4
  cs8. c16 ~
  \tuplet 3/2 { c8 d4 }
  b8. d16 ~
  d4
  cs8 fs8 ~
  \tuplet 5/4 { fs4 \breathe d16^\markup { \fontsize #5 "11" } ~ }

  % 11
  \tuplet 5/4 { d4 af16 ~ }
  af4
  \tuplet 3/2 { d4 g,8 }
  d'4
  g,4
  a8. af16 ~
  \tuplet 3/2 { af8 d4 }
  g,8. d'16 ~
  d4
  a8 bf8 ~
  bf4 ~
  \tuplet 3/2 { bf4 \breathe d8^\markup { \fontsize #5 "12" } ~ }

  % 12
  \tuplet 5/4 { d4 af16 ~ }
  af4 ~
  \tuplet 3/2 { af8 d4 }
  g,16 d'8. ~
  \tuplet 3/2 { d4 g,8 ~ }
  g8 a8 ~
  \tuplet 3/2 { a8 af4 }
  d8 g,8 ~
  \tuplet 3/2 { g8 d'4 ~ }
  d4
  \tuplet 3/2 { a4 bf8 ~ }
  bf4 ~
  bf4 ~
  bf8 \breathe d8^\markup { \fontsize #5 "13" } ~

  % 13
  d4 ~
  d16 af8. ~
  af4
  d8 g,16 d'16 ~
  d4 ~
  d8 g,8 ~
  g4
  a4
  \tuplet 3/2 { af4 d8 ~ }
  d16 g,8.
  d'4 ~
  d16 a8 bf16 ~
  bf4 ~
  bf8. \breathe d16^\markup { \fontsize #5 "14" } ~

  % 14
  d4 ~
  d8 af8 ~
  af4 ~
  af8 d8
  \tuplet 3/2 { g,8 d'4 ~ }
  d4 ~
  \tuplet 3/2 { d8 g,4 ~ }
  g8 a8
  \tuplet 3/2 { af4 d8 }
  g,4 ~
  \tuplet 3/2 { g4 d'8 ~ }
  d8. a16 ~
  \tuplet 3/2 { a8 bf4 ~ }
  bf4 ~
  bf4

  \breathe

  % 15
  d4^\markup { \fontsize #5 "15" } ~
  d4
  af4 ~
  af4 ~
  af8 d8 ~
  \tuplet 3/2 { d8 g,8 d'8 ~ }
  d4 ~
  \tuplet 3/2 { d4 g,8 ~ }
  g4 ~
  \tuplet 3/2 { g8 a4 }
  af8 d16 g,16 ~
  g4 ~
  \tuplet 3/2 { g8 d'4 ~ }
  d8 a16 bf16 ~
  bf4 ~
  bf4 ~
  bf8 \breathe d8^\markup { \fontsize #5 "16" } ~

  % 16
  d4 ~
  \tuplet 3/2 { d4 cs8 ~ }
  cs4 ~
  cs4 ~
  cs8 d8 ~
  \tuplet 3/2 { d8 c8 d8 ~ }
  d4 ~
  \tuplet 3/2 { d4 c8 ~ }
  c4 ~
  c16 ef8 cs16 ~
  cs8 d8
  c4 ~
  c8 d8 ~
  d4
  ef8 g8 ~
  g4 ~
  g4 ~
  g8 \breathe d8^\markup { \fontsize #5 "17" } ~

  % 17
  d4 ~
  d4
  cs4 ~
  cs4 ~
  \tuplet 3/2 { cs4 d8 ~ }
  d8 c8
  d4 ~
  d4 ~
  \tuplet 3/2 { d8 c4 ~ }
  c4
  \tuplet 3/2 { ef4 cs8 ~ }
  cs8 d8
  c4 ~
  c4
  d4 ~
  d8 ef8
  g4 ~
  g4 ~
  g8 \breathe d8^\markup { \fontsize #5 "18" } ~

  % 18
  d4 ~
  d4 ~
  \tuplet 3/2 { d8 cs4 ~ }
  cs4 ~
  cs4 ~
  cs8 d8 ~
  \tuplet 3/2 { d8 c8 d8 ~ }
  d4 ~
  d4
  c4 ~
  \tuplet 3/2 { c4 ef8 ~ }
  ef8 cs8 ~
  \tuplet 3/2 { cs8 d8 c8 ~ }
  c4 ~
  \tuplet 3/2 { c4 d8 ~ }
  d4 ~
  \tuplet 3/2 { d8 ef8 g8 ~ }
  g4 ~
  g4 ~
  g4 ~
  \tuplet 3/2 { g4 \breathe d8^\markup { \fontsize #5 "19" } ~ }

  % 19
  d4 ~
  d4
  cs4 ~
  cs4 ~
  cs4 ~
  cs8 d8 ~
  \tuplet 3/2 { d8 c8 d8 ~ }
  d4 ~
  d4 ~
  \tuplet 3/2 { d4 c8 ~ }
  c4 ~
  c8 ef8 ~
  \tuplet 3/2 { ef8 cs4 }
  d8 c8 ~
  c4 ~
  c4
  d4 ~
  d4
  \tuplet 3/2 { ef8 g4 ~ }
  g4 ~
  g4 ~
  g

  \breathe

  % 20
  d4^\markup { \fontsize #5 20 } ~
  d4 ~
  d8 cs8 ~
  cs4 ~
  cs4 ~
  cs4 ~
  cs8 d8 ~
  d8 c8
  d4 ~
  d4 ~
  d4
  c4 ~
  \tuplet 3/2 { c4 ef8 ~ }
  ef8 cs8 ~
  cs8 d8
  c4 ~
  c4 ~
  c8 d8 ~
  d4 ~
  d8 ef8
  g4 ~
  g4 ~
  g4 ~
  g4 ~
  \tuplet 3/2 { g8 \breathe d4^\markup { \fontsize #5 21 } ~ }

  % 21
  d4 ~
  d8 e8 ~
  e4 ~
  e4 ~
  e4 ~
  e4
  d4
  ef8 d8 ~
  d4 ~
  d4 ~
  d4 ~
  d8 ef8 ~
  ef4
  f4
  e4
  d8 ef8 ~
  ef4 ~
  ef4 ~
  ef4
  d4 ~
  d4
  f8 a8 ~
  a4 ~
  a4 ~
  a4 ~
  \tuplet 3/2 { a4 \breathe d,8^\markup { \fontsize #5 22 } ~ }

  % 22
  d4 ~
  d4
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4
  \tuplet 3/2 { d4 ef8 }
  d4 ~
  d4 ~
  d4 ~
  d4
  ef4 ~
  ef8 f8 ~
  \tuplet 3/2 { f8 e4 }
  d8 ef8 ~
  ef4 ~
  ef4 ~
  ef4
  d4 ~
  d4
  \tuplet 3/2 { f8 a4 ~ }
  a4 ~
  a4 ~
  a4 ~
  a4 ~
  a8 \breathe d,8^\markup { \fontsize #5 23 } ~

  % 23
  d4 ~
  d4 ~
  d8 e8 ~
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  e4
  d4
  ef8 d8 ~
  d4 ~
  d4 ~
  d4 ~
  d4
  ef4 ~
  ef4
  f4
  e4
  d8 ef8 ~
  ef4 ~
  ef4 ~
  ef4
  d4 ~
  d4
  f8 a8 ~
  a4 ~
  a4 ~
  a4 ~
  a4 ~
  a4


}
