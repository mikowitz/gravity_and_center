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

altoE = \relative c' {
  <f fqs' cs'>2\< ~ \tuplet 3/2 { 4\mf r8 } r4
  r4 \tuplet 3/2 { gf'8-.\mp r gf,\p-. } r2
  R1
  r8. f16-.\p gf8-.\mp r8 r8. f16-.\mf r4 gf?4\fp\>\fermata ~
  \after 4.\n
  gf2 r16 df-.\mf r8 r4 gf8\pp-. r8
  R1*5/4\fermata
  r16 df'16-.\pp r8 r4 r4 r4 gf8-.\p r8
  r8. f16-.\mp gf8-. r8 r4 r8. f16\mf ~ f4 ~
  \after 2.*9/10 \n
  f2.\>
  r8. f16-.\p r4 gf8-.\p r8 r4 r4 r8 gf,-.\p
  R1
  r16 df16-.\mp r8 r4 r2
  r2. gf8-.\mf r8 r4 r4
  R1.
  r2. r2 gf8-.\mp r8
}
