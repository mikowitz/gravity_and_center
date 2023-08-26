sad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
}

nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}


nadTrill = {
  \once \override TrillPitchAccidental.stencil = #ly:text-interface::print
  \once \override TrillPitchAccidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

altoF = \relative c' {
  R1*14
  r2 \tuplet 5/4 { r16 fs4\p ~ } fs4 ~
  fs1 ~
  fs1 ~
  fs2 r2
  R1
  fs2.\pp r4
  r4 fs4:32\pp\< ~ fs2:32 ~
  fs1:32 ~
  fs1:32\mf\> ~
  fs8\n r8 r4
  R1
  r2 fs\pp ~
  fs4 r r4 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    fqs'
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'
  >4\pp ~
      \tweak Y-offset 0 
      \tweak layer #100
    \tweak outside-staff-priority ##f
  ^\markup {
    \translate #'(19 . 9)
    \multiAlto
  }
  1 ~
  1
  R1 * 3
  \tuplet 5/4 { r8. fs8\pp ~ } fs4 ~ fs2 ~
  fs1 ~
  fs1.
  r2 r4 \tuplet 5/4 { r16 fs4\p\> ~ }
  fs4 ~ fs16\n r16 r8 r2
  r4 \tuplet 5/4 { r8 fs8.\p\> ~ } fs2 ~
  fs4 ~ fs8\n r8 r2
  r4 \tuplet 5/4 { r8. fs8\p ~ } fs2 ~
  fs1 ~
  \after 4. \n
  fs2 \> r2

}
