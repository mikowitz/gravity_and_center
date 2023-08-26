sopE = \relative c' {
  r2
  ^\tweak extra-offset #'(1.5 . -3)
  ^\tweak outside-staff-priority #2000
  ^\markup { \magnify #1.5 \bold "I want nothing..." }
  \tuplet 3/2 { r4 ff8-.\mf } \tuplet 3/2 { r af-. r }
  r2 r8 ef-.\mp \tuplet 3/2 { r af-.\p r }
  R1
  \time 5/4
  \tempo 4 = 96
  r8 
  ^\tweak extra-offset #'(-2 . 2)
  ^\tweak outside-staff-priority #2000
  ^\markup { \magnify #1.5 \bold "...to reveal feeling but feeling" }
  ef'-.\p \tuplet 3/2 { r4 ff!8-.\mp } r4 \tuplet 3/2 { r8 af,4\fp\> ~ } af\fermata ~
  af4 ~ af8\n r8 r4 \tuplet 3/2 { r8 af-.\p r } r4
  R1*5/4\fermata
  r2 \tuplet 3/2 { r8 af-.\pp r } r4 r4
  r8 ef'8\p r4 r4 \tuplet 3/2 { r8 af,4\mf\> } ~ af4 ~
  \time 3/4
  \after 2.*9/10 \n
  af2.
  \tuplet 3/2 { r4 ff8-.\p } r4 r4
  \tuplet 3/2 { r8 af'4\pp ~ } af4 ~ af4 ^~
  \time 4/4
  <g, af' ef'>1 ~
  
      \tweak Y-offset 0 
      \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
    \tweak outside-staff-priority ##f
    \tweak layer #100
  ^\markup {
    \translate #'(7 . 8)
    \multiSop
  }
  \after 4. \n
  2 \> r4 \tuplet 3/2 { r8 af-.\mp r8 }
  \time 6/4
  R1*6/4
  r2. r2 \tuplet 3/2 { r8 af-.\f r8 }
  R1*6/4
  \mark \default
  \bar "||"
}
