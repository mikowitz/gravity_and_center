sopC = \relative c' {
  %\once \override Score.MetronomeMark.X-offset = #1
  \tempo 4 = 92
  \tuplet 5/4 { d8([\mf
                ^\tweak outside-staff-priority #2000
                ^\tweak extra-offset #'(1.5 . -4)
                ^\markup { \magnify #1.5 \bold "I want the force of attraction to crush the force of repulsion" } 
                
                ef8.] } \tuplet 5/4 { d8 cs16 d8 } \tuplet 5/4 { cs16 e4 ~ } \tuplet 5/4 { e16 ef8. d16 ~ }
  \tuplet 5/4 { d8. cs16 d16 ~ } \tuplet 5/4 { d8. e8 ~ } \tuplet 5/4 { e8 af,8.\> ~ } af4 ~
  \after 2.. \n
  af1)
  R1 * 4
  R1\fermata
  r2\fermata r4 \tuplet 5/4 { r8.\fermata cs''8--\f( ~ }
  cs16 fs8. ~ fs4 d4\> c!4
  d8)\mp r8 r4 r2
  R1
  R1
  r2 cs8\p^\markup "like an echo" ( fs8 ~ \tuplet 5/4 { fs4 d16 ~ }
  \tuplet 5/4 { d4 af16 ~ } af4 \tuplet 3/2 { d,4) r8 } r4
  r2 r4 r8. d,16(\mp\< ~
  d4 a8 bf\f\> ~ bf4 ~ \tuplet 3/2 { bf4 d8 ~ }
  \tuplet 5/4 {
    \after 8. \p
    d4) r16 } r2 r4
  \time 6/4
  r2. r4 \tuplet 3/2 { r4 d'8(\mp\> ~ } d16 g8.)
  \time 4/4
  d4( ~ d16 a'8) bf16\p\< ( ~ bf4 ~ bf8. d16 ~
  d4 ~ d8) af( ~ af4 ~ af8 d,)
  \tuplet 3/2 { g,8( d4 ~ } d4 ~ \tuplet 3/2 { d8) g4( ~ } g8 a,8)
  \tuplet 3/2 { af4--\f r8} r4 r2
  R1\fermata
  r4 r8 d''8-.\f r8 c,-. r4
  r2 r4 \tuplet 3/2 { r8 d,4(\mf ~ }
  d4 ~ d8 e8 ~ e2 ~
  e2) d4( ef8) d( ~
  d2 ~ d4 ~ d8 ef8 ~
  ef4 f4) e!4( d8 ef8 ~
  ef2 ~ ef4) d'4(\> ~
  d4 f8 a ~ a2 ~
  a4 ~ \tuplet 3/2 { a4 d8\p\< ~ } d2 ~
  d8) e8(\mf\> ~ e4 ~ e2 ~
  e2 d4) ef8(\mp\< d ~
  d1
  ef,2)\mf\> f4( e4
  d8) ef8(\p\< ~ ef4 ~ ef2
  d2\mf\> f8 a ~ a4 ~
  a1) ~
  \mark \default
  \bar "||"
}
