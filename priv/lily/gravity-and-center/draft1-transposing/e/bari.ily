nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bariE = \relative c {
  r2 r8. f16-.\mf \tuplet 3/2 { r4 bf,8-.\mp }
  r8 c8-. r4 r8. a16-.\p r4
  R1
  R1*5/4
  r8 a-.\mf \tuplet 3/2 { r4 bf8-.\mp } r4 r8 a'-.\p r8. f'16-.\pp
  R1*5/4\fermata
  \tuplet 3/2 { r4 bf,8-.\pp } r8 a-. r4 r8 a,-.\p r8. f16-.\mp
  r4 r4 r8
  \tweak Accidental.stencil #ly:text-interface::print
  \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
  a!8\pp ~ a4 ~ a4 ~
  <a
  \tweak Accidental.stencil #ly:text-interface::print
  \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
  a'! f' 
  \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
  bf! d>2.\< ~
    \tweak layer #100
    \tweak whiteout ##t
    \tweak whiteout-style #'outline
    \tweak layer #100
      \tweak Y-offset 0
    \tweak outside-staff-priority ##f
  ^\markup {
    \translate #'(7 . 8)
    \multiBari
  }
  \after 4.. \mf
  2 r8 a'-.\p r4 \tuplet 3/2 { r4 bf,8-. } r8. f16-.
  R1
  \tuplet 3/2 { r4 bf8-.\p } r4 r8 a-.\mp \tuplet 3/2 { r4 bf'8-. }
  r2 r8. f16-.\mf r4 r8 a-. r4
  r4 \tuplet 3/2 { r4 bf8-.\f } r4 r2.
  r2. r4 r8 a-.\mf r8. f'16-.\p


}
