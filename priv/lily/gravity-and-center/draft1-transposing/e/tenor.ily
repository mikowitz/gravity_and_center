nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenorE = \relative c'' {
  r2 r4 r16 g-.\mf r8
  R1 * 2
  r4 r4 r16 g-.\mf r8 r4 r4
  c,16-.\mf r8 b16-.\mp r4 r8. b?16-.\p r4 r4
  R1*5/4\fermata
  r8. b'16-.\pp c8-. r8 r16 g8-. b?16-. r4 r4
  r4 \tuplet 3/2 { r4 e,,8-.\mp } r16 g8.\< ~ g4 ~ g4 ~
  \after 2.*9/10 \n
  g2.\mf\>
  r4 r16 g-.\p r8 r4 r8. b'16-. r4 r16 g,-. r8
  R1
  r8. b'16-.\p c8-. r8 r8. b16-.\mp r4
  r2 r16 g-. r8 r4 c16-.\mf r8 b16-. r4
  r2. r2 r16 b8-.\f g16-.
  R1.

}
