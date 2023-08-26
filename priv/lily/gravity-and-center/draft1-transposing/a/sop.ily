sopA = \relative c' {
  \numericTimeSignature
%  \tempo 4 = 48 - 60
  \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note {4} #1
      " = 48 - 60 (poco rubato)"
    }
  }
  \mark \default
  %\once \override TextScript.outside-staff-priority = #2000
  R1
  ^\tweak extra-offset #'(-4 . 2)
  ^\tweak outside-staff-priority #2000
  ^\markup { \magnify #1.5 \bold "full of promise" }
  
  R1 * 10
  r4 d4\pp ~ d2 ~
  d2 ~ \> d16 \n r16 r8 r4
  R1
  r4 \tuplet 5/4 { r16 d'4\mp ~ } d2 ~
  d1 ~
  \after 4 \>
  d2 ~ d4 ~ d16\n r16 r8
  R1 * 2
  \tweak extra-offset #'(0 . 2)
  \mark \default
  \bar "||"
}
