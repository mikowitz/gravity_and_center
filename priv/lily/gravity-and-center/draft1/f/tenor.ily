nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenorF = \relative c' {
  R1*8
  r2 \tuplet 5/4 { r16 g4\pp \< ~ } g4 ~
  g1 \> ~
  g4 ~ \tuplet 5/4 { g16\n r4 } r2
  R1 * 2
  r2 r4 \tuplet 3/2 { r4 g'8\p ~ }
  g1 ~
  g1
  R1
  r8. g'16\pp ~ g4 ~ \tuplet 3/2 { g8 r4 } r4
  r4 r8 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b,,!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
  >\pp
      \tweak Y-offset 0 
    \tweak outside-staff-priority ##f
  ^\markup {
    \translate #'(11 . 7)
    \multiTenor
  }
  ~ 2 ~
  \tuplet 5/4 { 8. r8 } r4 \tuplet 5/4 { r16 g4:32\pp ~ } g4:32 ~
  g1:32 ~ \<
  g1:32 ~
  \tuplet 5/4 { g8\mf r8. } r4 r4 r2.
  r2 r4 r8 g8\pp ~
  g2 ~ \tuplet 5/4 { g8. r8 } r4
  R1 * 4
  r4 r8. g16\pp ~ g4 ~ \tuplet 5/4 { g16 r4 }
  R1 * 3
  r2. r2 \tuplet 5/4 { r16 g4\p\> ~ }
  \tuplet 5/4 { \after 8 \n g8. r8 } r4 r2
  R1 * 4
  r2 r4 r8. g'16\pp ~
  %g2.\> ~ \tuplet 3/2 { \after 8. \n g4 r8 }
  \after 2.. \n
  g1\>
}
