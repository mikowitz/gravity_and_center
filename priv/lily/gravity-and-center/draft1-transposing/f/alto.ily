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
  r2 \tuplet 5/4 { r16 gf'4\p
                   ^\tweak X-offset #-1
                   ^"slow timbral trill" ~ } gf4 ~
  gf1 ~
  gf1 ~
  gf2 r2
  R1
  fs2.\pp r4
  r4 gf4:32\pp\<^"flz." ~ gf2:32 ~
  gf1:32 ~
  gf1:32\mf\> ~
  gf8\n r8 r4
  R1
  r2 gf\pp ~
  gf4 r r4 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    fqs'
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'
  >4\pp ~
      
      \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
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
  \tuplet 5/4 { r8. gf8\pp ~ } gf4 ~ gf2 ~
  gf1 ~
  gf1.
  r2 r4 \tuplet 5/4 { r16 gf4\p\> ~ }
  gf4 ~ gf16\n r16 r8 r2
  r4 \tuplet 5/4 { r8 gf8.\p\> ~ } gf2 ~
  gf4 ~ gf8\n r8 r2
  r4 \tuplet 5/4 { r8. gf8\p ~ } gf2 ~
  \after 2 \>
  gf1 ~
  \after 4.. \n
  gf2 r2

}
