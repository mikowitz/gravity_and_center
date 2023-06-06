bari = \relative c' {
  \override BreathingSign.text = \markup { \fontsize #8 "," }

  \clef bass
  r2
  \tuplet 5/4 { d8 ef8. }
  \tuplet 5/4 { d8 cs16 d8 }
  \tuplet 5/4 { cs16 e!4 }
  \tuplet 5/4 { ef8. d8 ~ }
  \tuplet 5/4 { d8 cs16 d8 ~ }
  \tuplet 5/4 { d8 e!8. ~ }
  \tuplet 5/4 { e16 af,4 ~ }

  %2
  \tuplet 5/4 { af8 \breathe d8.^\markup { \fontsize #5 2 } }
  \tuplet 5/4 { ef4 d16 ~ }
  \tuplet 5/4 { d16 cs d8 cs16 }
  e!4
  ef8. d16 ~
  d8. cs16
  d4
  e!4
  af,4 ~

  % 3
  \tuplet 5/4 { af8 \breathe d8.^\markup { \fontsize #5 3 } }
  ef4
  d8 cs16 d16 ~
  d8 cs8
  e!4
  ef8. d16 ~
  \tuplet 5/4 { d8. cs16 d16 ~ }
  d8. e!16 ~
  \tuplet 5/4 { e8. af,8 ~ }

  %4
  \tuplet 5/4 { af4 d16^\markup {\fontsize #5 4} ~ }
  d8 ef8 ~
  \tuplet 5/4 { ef8 d8 cs16 }
  d8. cs16 ~
  cs16 e!8.
  ef8 d8 ~
  \tuplet 3/2 { d4 cs8 }
  d4
  e4 ~
  \tuplet 3/2 { e8 af,4 ~ }
  af4

  %5
  d8.^\markup { \fontsize #5 5 } ef16 ~
  ef4
  d8 cs16 d16 ~
  \tuplet 5/4 { d8 cs8 e!16 ~ }
  \tuplet 3/2 { e4 ef8 ~ }
  \tuplet 5/4 { ef16 d8. cs16 ~ }
  \tuplet 5/4 { cs16 d4 }
  e!4 ~
  \tuplet 3/2 { e8 af,4 ~ }
  af4

  \breathe

  %6
  \tuplet 5/4 { d8.^\markup { \fontsize #5 6 } c8 ~ }
  \tuplet 3/2 { c4 d8 ~ }
  d16 b d8 ~
  \tuplet 5/4 { d16 b8 cs8 ~ }
  \tuplet 3/2 { cs8 c4 }
  d4
  \tuplet 3/2 { b4 d8 ~ }
  d4
  cs4
  fs4 ~
  fs4 ~

  % 7
  \tuplet 3/2 { fs8 \breathe d4^\markup { \fontsize #5 7} ~ }
  \tuplet 3/2 { d4 c8 ~ }
  c4 ~
  c16 d8 b16
  d8. b16 ~
  b16 cs8.
  c8 d8 ~
  d16 b8 d16 ~
  d4
  cs4
  fs4 ~
  fs4 ~

  %8
  fs16 \breathe d8.^\markup { \fontsize #5 8 } ~
  d16 c8. ~
  \tuplet 3/2 { c4 d8 ~ }
  \tuplet 3/2 { d8 b8 d8 ~ }
  d8. b16
  b8 cs8 ~
  \tuplet 3/2 { cs8 c4 }
  d4
  \tuplet 3/2 { b4 d8 ~ }
  d8. cs16 ~
  \tuplet 3/2 { cs4 fs8 ~ }
  fs4 ~

  % 9
  \tuplet 3/2 { fs4 \breathe d8^\markup { \fontsize #5 9 } ~ }
  d4
  c4 ~
  c4 ~
  c8 d8 ~
  d8 b8
  d4 ~
  \tuplet 3/2 { d4 b8 ~ }
  b4
  cs4
  c4
  d4
  b4
  d4 ~
  d4
  cs4 ~
  cs8 fs8 ~
  fs4 ~
  fs4

  % 10
  \breathe
  d4^\markup { \fontsize #5 10 }
  c4 ~
  c8 d8
  b8 d8 ~
  d4
  b4 ~
  b8 cs8 ~
  cs8 c8 ~
  c8 d8 ~
  \tuplet 3/2 { d8 b4 ~ }
  \tuplet 3/2 { b8 d4 ~ }
  d8 cs8
  fs4 ~

  %11
  fs8. \breathe d16^\markup { \fontsize #5 11 } ~
  d4 ~
  d4
  af4 ~
  af4
  d8 g,16 d'16 ~
  d4
  g,4
  \tuplet 3/2 { a4 af8 ~ }
  af8 d8 ~
  d8 g,8 ~
  \tuplet 3/2 { g4 d'8 ~ }
  d8. a16 ~
  a8 bf8 ~
  bf4 ~
  bf4

  % 12
  \breathe
  d4^\markup { \fontsize #5 12 } ~
  \tuplet 3/2 { d4 af8 ~ }
  af4 ~
  af8. d16 ~
  d16 g,16 d'8 ~
  d4 ~
  d8 g,8 ~
  g4
  a4
  af8 d8
  g,4 ~
  g16 d'8. ~
  d8 a8 ~
  a8 bf8 ~
  bf4 ~
  bf4 ~
  bf4 ~

  % 13
  bf8 \breathe d8^\markup { \fontsize #5 13 } ~
  d4 ~
  d8 af8 ~
  af4 ~
  af4 ~
  \tuplet 3/2 { af8 d4 }
  g,8 d'8 ~
  d4
  \tuplet 5/4 { g,4 a16 ~ }
  a8 af8 ~
  \tuplet 3/2 { af8 d8 g,8 ~ }
  \tuplet 3/2 { g4 d'8 ~ }
  d8. a16 ~
  a8 bf8 ~
  bf4 ~
  bf4 ~
  bf8 \breathe d8^\markup { \fontsize #5 14 } ~
  d4 ~
  \tuplet 5/4 { d16 af4 ~ }
  \tuplet 3/2 { af4 d8 ~ }
  d8 g,8
  d'4 ~
  d4
  g,4 ~
  g16 a8 af16 ~
  af8 d8
  g,4 ~
  \tuplet 5/4 { g16 d'4 }
  \tuplet 3/2 { a8 bf4 ~ }
  bf4 ~
  bf4

  % 15
  \breathe
  d4^\markup { \fontsize #6 15 } ~
  d4
  af4 ~
  af4 ~
  af8 d8
  \tuplet 3/2 { g,8 d'4 ~ }
  d8. g,16 ~
  g4 ~
  g16 a8 af16 ~
  af16 d g,8 ~
  \tuplet 3/2 { g4 d'8 ~ }
  d4 ~
  d16 a16 bf8 ~
  bf4 ~
  bf4 ~
  bf4

  % 16
  \breathe
  d4^\markup { \fontsize #5 16 } ~
  d4 ~
  \tuplet 3/2 { d8 cs4 ~ }
  cs4 ~
  cs4 ~
  cs8 d8 ~
  \tuplet 3/2 { d8 c d ~ }
  d4 ~
  \tuplet 3/2 { d4 c8 ~ }
  c4 ~
  \tuplet 3/2 { c8 ef4 }
  cs8 d16 c16 ~
  c8. d16 ~
  d4 ~
  \tuplet 3/2 { d8 ef g ~ }
  g4 ~
  g4 ~

  % 17
  g8. \breathe d16^\markup { \fontsize #5 17 } ~
  d4 ~
  d4 ~
  d8 cs8 ~
  cs4 ~
  cs4 ~
  cs4
  d8 c16 d16 ~
  d4 ~
  d8. c16 ~
  c4
  ef4
  cs4
  \tuplet 3/2 { d8 c4 ~ }
  c4 ~
  c16 d8. ~
  \tuplet 3/2 { d8 ef g ~ }
  g4 ~
  g4 ~
  g4 ~

  % 18
  g8 \breathe d8^\markup { \fontsize #5 18 } ~
  d4 ~
  d4 ~
  \tuplet 3/2 { d8 cs4 ~ }
  cs4 ~
  cs4 ~
  cs16 d8 c16
  d4 ~
  d4 ~
  d4
  c4 ~
  c4
  ef4
  cs4
  d8 c8 ~
  c4 ~
  \tuplet 3/2 { c4 d8 ~ }
  d4 ~
  d16 ef16 g8 ~
  g4 ~
  g4 ~

  % 19
  g8. \breathe d16^\markup { \fontsize #5 19 } ~
  d4 ~
  d8 cs8 ~
  cs4 ~
  cs4 ~
  cs8 d8
  \tuplet 3/2 { c8 d4 ~ }
  d4 ~
  d4
  c4 ~
  c4
  ef4
  \tuplet 3/2 { cs4 d8 }
  c4 ~
  c4 ~
  \tuplet 3/2 { c4 d8 ~ }
  d4
  ef8 g8 ~
  g4 ~
  g4 ~
  g4 ~
  g4 ~

  % 20
  \tuplet 3/2 { g4 \breathe d8^\markup { \fontsize #5 20 } ~ }
  d4 ~
  d4
  cs4 ~
  cs4 ~
  cs4 ~
  \tuplet 3/2 { cs8 d4 }
  c8 d8 ~
  d4 ~
  d4
  d4 ~
  d8 c8 ~
  c4
  \tuplet 3/2 { ef4 cs8 ~ }
  cs8 d8
  c4 ~
  c4 ~
  c8 d8 ~
  d4 ~
  d8 ef8
  g4 ~
  g4 ~
  g4 ~
  g4

  % 21
  \breathe
  d4^\markup { \fontsize #5 21 } ~
  d4 ~
  \tuplet 3/2 { d4 e8 ~ }
  e4 ~
  e4 ~
  e4 ~
  \tuplet 3/2 { e4 d8 ~ }
  d8 ef8
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

  % 22
  \tuplet 3/2 { a4 \breathe d,8^\markup { \fontsize #5 22 } ~ }
  d4 ~
  \tuplet 3/2 { d4 e8 ~ }
  e4 ~
  e4 ~
  e4 ~
  e4 ~
  \tuplet 3/2 { e8 d4 }
  ef8 d8 ~
  d4 ~
  d4 ~
  d4 ~
  \tuplet 3/2 { d8 ef4 ~ }
  ef4
  f4
  e4
  \tuplet 3/2 { d8 ef4 ~ }
  ef4 ~
  ef4 ~
  ef8 d8 ~
  d4
  \tuplet 3/2 { f8 a4 ~ }
  a4 ~
  a4 ~
  a4 ~
  a4
}
