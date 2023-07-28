bari = \relative c' {
  \override BreathingSign.text = \markup { \fontsize #8 "," }

  \clef bass
  r2
  \tuplet 5/4 { d8( \mf \> ef8. }
  \tuplet 5/4 { d8 cs16 d8 }
  \tuplet 5/4 { cs16 e!4 }
  \tuplet 5/4 { ef8. d8 ~ }
  \tuplet 5/4 { d8 cs16 d8 ~ }
  \tuplet 5/4 { d8 e!8. ~ }
  \tuplet 5/4 { e16 af,4 ~ \p }

  %2
  \tuplet 5/4 { af8) d8.( }
  \tuplet 5/4 { ef4 d16 ~ }
  \tuplet 5/4 { d16 cs d8 cs16 }
  e!4
  ef8. d16 ~
  d8. cs16
  d4
  e!4
  af,4 ~

  % 3
  \tuplet 5/4 { af8) d,8.(\< }
  ef4
  d8 cs16 d16 ~
  d8 cs8
  e!4
  ef8. d16 ~
  \tuplet 5/4 { d8. cs16 d16 ~ }
  d8. e!16 ~
  \tuplet 5/4 { e8. af,8 ~ }

  %4
  \tuplet 5/4 { af4) d,16( \mf \> ~ }
  d8 ef8 ~
  \tuplet 5/4 { ef8 d8 cs16 }
  d8. cs16 ~
  cs16 e!8.
  ef8 d8 ~
  \tuplet 3/2 { d4 cs8 }
  d4
  e4 ~
  \tuplet 3/2 { e8 af4 ~ }
  af4 )

  %5
  d,8.( \p  ef16 ~
  ef4
  d8 cs16 d16 ~
  \tuplet 5/4 { d8 cs8 e!16 \> ~ }
  \tuplet 3/2 { e4 ef8 ~ }
  \tuplet 5/4 { ef16 d8. cs16 ~ }
  \tuplet 5/4 { cs16 
                \after 8. \n
                d4) }
  r4
  r4
  r4
  % e!4 ~
  % \tuplet 3/2 { e8 af,4 ~ }
  % af4

  r4
  r
  r
  r

  %6
  cs4--(\f
  fs''4-- ~
  fs4 ~

  %8
  fs16  d8.\>-- ~
  d16 c8.-- ~
  \tuplet 3/2 { c4 d8-- ~ }
  \tuplet 3/2 { d8 \mp ) r4 }
  % d8. b16
  % b8 cs8 ~
  r4
  r4
  r
  r
  r

  % 9
  \tuplet 3/2 { r4 d8\mp ( ~ }
  d4
  c4 ~
  c4 ~
  c8 d8 ~
  d8 b8 )
  d4 (~
  \tuplet 3/2 { d4 b8\< ~ }
  b4
  cs4
  c4
  d4 )
  b4 (
  d4 ~
  d4
  cs4 ~
  cs8 fs8\f\> ~
  fs4 ~
  fs4 )

  % 10
  
  d4(\mp
  c4 ~
  c8 d8
  b8 \< d8 ~
  d4
  b4 ~
  b8) cs8\mf ( ~
  cs8 c8 ~
  c8 d8 ~
  \tuplet 3/2 { d8 b4 ~ }
  \tuplet 3/2 { b8 ) d4 ( ~ }
  d8 cs8
  fs4 \> ~

  %11
  fs8.  d16 ~
  d4 ~
  d4
  af4 ~
  \after 8 \p af4 )
  r4
  r
  r
  r
  r
  r
  r
  r
  r
  r
  r

  % 12
  
  d4(\p\<  ~
  \tuplet 3/2 { d4 af8 ~ }
  af4 ~
  af8. ) d,16 ( ~
  d16 g16 ) d8 ( ~
  d4 ~
  d8  g,8 ~
  g4 )
  a4 (
  af8-- ) d,8\f --
  r4
  r

  r4 r4 r4 r4
  
  \tuplet 3/2 { r8 d8-.\mf r8 }
  r4
  r16 ef16-. r8
  g8-. r8
  r4

  r4
  r
  r
  r4
  r
  r8 g8:64 \p \< ^\markup { flz. } ~
  g4:32 ~
  g4:32
  ~
  g4:32 ~
  g4:32 ~

  % 20
  \tuplet 3/2 { g4:32 d8:64\mf\> ~ }
  d4:32 ~
  d4:32
  cs4:32 ~
  cs4:32 ~
  cs4:32 ~
  \tuplet 3/2 { cs8:64 d4--\p }
  r4
  r4
  r4
  d''4\p\< ~
  d8 c8:64\mp\> ~
  c4:32 ~
  c4:32 ~
  c4:32 ~
  c4:32 ~
  c4:32 ~
  c4:32 ~
  c4:32 ~
  \after 8 \n
  c4:32
  r
  r
  r

  % 22
  \tuplet 3/2 { r4 d,,8\p\< ( ~ }
  d4 ~
  \tuplet 3/2 { d4 e8 ~ }
  e4 ~
  e4\mf\> ~
  e4 ~
  e4 ~
  \tuplet 3/2 { e8 ) d4\mp\< ( }
  ef8 ) d8 ( ~
  d4 ~
  d4 ~
  d4 ~
  \tuplet 3/2 { d8\mf\> ef4 ~ }
  ef4
  f4
  e'4\p\< )
  \tuplet 3/2 { d8 ( ef4 ~ }
  ef4 ~
  ef4 ~
  ef8 ) d8 ( ~
  d4\mp\>
  \tuplet 3/2 { f8 a4 ~ }
  a4 ~
  a4 ~
  a4 ~
  a4 ) \pp
}
