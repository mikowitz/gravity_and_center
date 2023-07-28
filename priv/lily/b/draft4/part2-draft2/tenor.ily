tenor = \relative c' {
  \override BreathingSign.text = \markup { \fontsize #8 "," }

  R1
  r4
  r8 d8( \mf \>
  ef8. d16 ~
  d16 cs d8
  cs16 e8. ~
  e16 ef8.
  d4
  cs16 d8. ~
  d16 e8. ~
  e16 af,8. ~

  % 2
  af8) \p d8(  ~
  d16 ef8. ~
  ef16 d8 cs16
  \tuplet 5/4 { d8 cs16 e8 ~ }
  e8 ef8 ~
  \tuplet 5/4 { ef16 d4 }
  cs16 d8. ~
  d16 e8. ~
  e16 af,8. ~

  % 3
  \tuplet 5/4 { af8) \clef bass d,8.( \mp }
  ef4
  d8 cs16 d16 ~
  d8 cs8
  \tuplet 5/4 { e4 ef16 ~ }
  ef8 d8 ~
  \tuplet 5/4 { d8 cs16 d8 ~ }
  d8 e8 ~
  e8 af,8 ~

  % 4
  \tuplet 5/4 { af8.) d8( \> } ~
  \tuplet 5/4 { d16 ef4 }
  d8 cs16 d16 ~
  d8 cs8
  e8. ef16 ~
  ef16 d8. ~
  d16 cs16 d8 ~
  \tuplet 3/2 { d4 e8 ~ }
  e4
  af,4 ~

  % 5
  af16 \p )  \clef treble d'8.(\mf 
  ef4 ~
  \tuplet 5/4 { ef16 d8 cs16) d16( ~ }
  \tuplet 5/4 { d8 cs8 e16 ~ }
  e8 ef'8--)
  d,4(
  \tuplet 3/2 { cs'4--) d,8( \< ~ }
  d8. e16 ~
  \tuplet 5/4 { e8. af8-- ~ }
  \after 8. \!
  af4)

  % 6
  
  % d4
  % b8 cs8 ~
  % \tuplet 5/4 { cs16 c8 d8 ~ }
  % d16 b8 d16 ~
  r4
  r
  r
  r
  r8. cs16(\f  ~
  \tuplet 5/4 { cs8 fs8. ~ }
  fs4

  % 8
  
  d4\> ~
  \tuplet 5/4 { d16 c4 ~ }
  \tuplet 3/2 { c8 d4)\mp }
  % \tuplet 3/2 { b8 d4 ~ }
  % \tuplet 3/2 { d4 b8 ~ }
  % \tuplet 3/2 { b4 cs8 ~ }
  r4
  r
  r
  r
  r
  r
  r

  % 9
  
  \clef bass
  d,,8-.\f r8
  r8 c8-.\p
  r4
  \tuplet 3/2 { d8-.\p r8 b8-.\mf }
  d8-.\f r8
  r4
  r
  r
  r
  r
  \tuplet 5/4 { d8-.\p r16 cs8-.\mf }
  r8 \clef treble fs'8\f\> -- ~
  fs4 ~
  fs4

  % 10
  
  d4(\mp ~
  \tuplet 5/4 { d8 c8. ~ }
  c4
  \tuplet 3/2 { d4 b8\< }
  d4 ~
  \tuplet 3/2 { d4 b8 ~ }
  \tuplet 3/2 { b4 ) cs8 \mf ( ~ }
  \tuplet 5/4 { cs16 c8 d8 }
  b8.) d16 (~
  d4
  cs4
  fs4 \> ~
  fs4 ~

  % 11
  fs8  d8 ~
  d4
  \after 8 \p
  af4 )
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
  r4

  % 12
  r8  d'8(\p\<  ~
  d4 ~
  \tuplet 3/2 { d4 af8 ~ }
  af4 ~
  af16 ) d,8( g,16 )
  \clef bass
  d4 (  ~
  d4
  g4  ~
  g8 ) a,8 ( ~
  a8 af8 ~
  \tuplet 3/2 { af8\f ) r4 }
  r4
  r4
  r

  % 13

  r4 r4 r4 r4
  
  \tuplet 3/2 { cs8-.\mf r8 d8-. }
  c8-. r8
  r4
  r4
  r
    
  \clef treble
  
  r
  \tuplet 3/2 { r4 ef'8-.\f }
  cs8-. r8
  \tuplet 3/2 { d8-. r8 c8-. }
  r4
  r4
  r4
  r4
  ef8(\p\< g8 ~
  g4 ~
  g4 ~
  g4 ~
  g4\mf)

  % 20
  
  r4
  r
  r
  r
  r
  r
  r4
  \tuplet 3/2 { d4\p c8\mf\> ~ }
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  c4 ~
  \after 8 \n c4
  r
  r
  r
  r

  % 22
  \clef bass
  \tuplet 3/2 { r8 d,4(\p\<  ~ }
  d4 ~
  d8 e8 ~
  e4 ~
  e4\mf\> ~
  e4 ~
  e8 ) d8\mp\< ( ~
  d8 ef8 )
  d4 ( ~
  d4 ~
  d4 ~
  \tuplet 3/2 { d4 ef8\mf\> ~ }
  ef4
  f4 
  \tuplet 3/2 { e4) d8\p\< ( }
  ef4 ~
  ef4 ~
  ef4 )
  d4\mp\> ( ~
  d4
  f8 a8 ~
  a4 ~
  a4 ~
  a4 ~
  a4 ) \pp

}
