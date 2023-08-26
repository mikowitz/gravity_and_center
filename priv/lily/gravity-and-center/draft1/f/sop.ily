sopF = \relative c' {
  \tempo \markup {
    \concat {
      \smaller \general-align #Y #DOWN \note {4} #1
      " = 48 - 60 (poco rubato)"
    }
  }
  r2 r4 r8 af\mf\> ~
  af2:32 ~ \tuplet 5/4 { \after 8 \n af8. r8 } r4
  R1 * 6
  r4 af''4\pp ~ af2 ~
  af1 ~
  af1 ~
  af1 ~
  af8. r16 r4 r2
  R1 * 3
  r4 af4\pp ~ af8. r16 r4
  R1 * 3
  r4 \tuplet 5/4 { r16 af4:32\pp\< ~ } af2:32 ~
  af1:32 ~
  af16\mf r8. r4 r4 r2.
  r4 af\pp ~ \tuplet 5/4 { af4 r16 } r4
  R1 * 2
  r2 r8. af16\pp ~ af4 ~
  af8 r8 r4 r2
  R1 * 3
  r4 \tuplet 5/4 { 
    r8. 
    <g, gs' ds'>8\pp
    \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
    \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
    ^\markup {
      \translate #'(12 . 8)
      \multiSop
    }
  ~ } 2 ~
  2. ~ \tuplet 5/4 { 8 r8. }
  r2. r4 r8. af16\p\> ~ af4 ~
  \after 8. \n
  af4 r4 r2
  \tuplet 5/4 { r8. af8\p \> ~ } af4 ~ af8\n r8 r4
  R1 * 5
}
