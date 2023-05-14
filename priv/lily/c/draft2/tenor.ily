nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  \override Beam.breakable = ##t
  r4 * 9
  c4 cs'
  c,4 cs'
  c,4 cs'
  c,4 cs'
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs'8 }
  c,8 cs'
  c,8 cs'
  c,8 cs'
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  cs'16 c, cs' c,
  \repeat tremolo 16 { cs'32 c, }
  \repeat tremolo 16 { cs'32 c, }
  \repeat tremolo 16 { cs'32 c, }
  \time 2/4
  \repeat tremolo 8 { cs'32 c, ~ }
  \time 4/4
  \bar "||"
  c16[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs, c,]
  \break
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs gs']\fermata ~
  \time 7/8
  gs8 ~
  gs2. ~
  \time 4/4
  gs1 ~
  \bar "||"
  gs1
  c,,,4 \nad c'!
  c,4 \nad c'!
  c,4 \nad c'!
  c,4 \nad c'!
  c,4
  \tuplet 3/2 { \nad c'! c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \tuplet 3/2 { \nad c'! c,8 }
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \nad c'!8 c,
  \tuplet 3/2 { \nad c'!4 c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \tuplet 3/2 { \nad c'!8 c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \tuplet 3/2 { \nad c'!8 c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \tuplet 3/2 { \nad c'!8 c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \tuplet 3/2 { \nad c'!8 c, \nad c'! }
  \tuplet 3/2 { c, \nad c'! c, }
  \nad c'!16 c, \nad c'!16 c,
  \nad c'!16 c, \nad c'!16 c,
  \repeat tremolo 4 { \nad c'!32 c, }
  \repeat tremolo 16 { \nad c'!32 c, }
  \repeat tremolo 8 { \nad c'!32 c, ~ }
  \bar "||"
  c16[ cs' c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs, c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs gs']\fermata ~ gs8 ~

}

