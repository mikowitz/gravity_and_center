sopB = \relative c' {
  %\once \override Score.MetronomeMark.X-offset = #1
  \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note {4} #1
      " = 60 (non rubato)"
    }
  }
  d2(\ppp
  \tweak outside-staff-priority #2000
  \tweak extra-offset #'(1 . -2)
  ^\markup { \magnify #1.5 \bold "a narrow black room that is always dark"} 
  ef2 ~
  ef4 d2) cs4(
  d2 cs4) e!4( ~
  e1
  ef!2. d4 ~
  d2. cs4)
  R1\fermata
  d2(\ppp ef2
  d2) \tuplet 3/2 { cs4( d2 }
  cs4) e4( ~ e2 ~
  e4 ef4 ~ \tuplet 3/2 { ef2 d4 ~ }
  \time 6/4
  d2 ~ \tuplet 3/2 { d4 cs) r4 } r2\fermata
  \time 4/4
  R1
  r2 d4(\pp ef4 ~
  \time 6/4
  ef8 d4) cs8( d4 cs8) e8( ~ e2
  \time 4/4
  ef4 ~ ef8 d8 ~ d4 ~ d8 cs8)
  R1
  r4 \tuplet 3/2 { d4(\p ef8 ~ } ef8 d) \tuplet 3/2 { cs8(\< d4 ~ }
  d16) e8.( ~ \tuplet 3/2 { e4 ef8 ~ } ef8 d8 ~ \tuplet 3/2 { d4 
                                                              
                                                              cs8 
                                                              \tweak Y-offset #4
                                                              \fermata) }
  \mark \default
  \bar "||"
}
