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
  r4 \tuplet 3/2 { fs'8-.\mp r e,\p-. } r2
  R1
  r8. f16-.\p fs8-.\mp r8 r8. f16-.\mf r4 fs4\fp\>\fermata ~
  \after 4.\n
  fs2 r16 cs-.\mf r8 r4 fs8\pp-. r8
  R1*5/4\fermata
  r16 cs16-.\pp r8 r4 r4 r4 fs8-.\p r8
  r8. f16-.\mp fs8-. r8 r4 r8. f16\mf ~ f4 ~
  \after 2.*9/10 \n
  f2.\>
  r8. f'16-.\p r4 fs8-.\p r8 r4 r4 r8 fs,-.\p
  R1
  r16 cs16-.\mp r8 r4 r2
  r2. fs8-.\mf r8 r4 r4
  R1.
  r2. r2 fs8-.\mp r8
}
