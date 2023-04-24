nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

tenor = \relative c {
  R1 * 7
  r2 r4 r8
  c4 cs'
  c,4 cs'
  c,8 ~ c
  cs'4
  c,4 cs'
  c,4 cs'
  c,4 cs'
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  c,8 cs'
  c, cs'
  c, cs'
  c, cs'
  c, cs'
  c, cs'
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  \tuplet 3/2 { c, cs' c, }
  \tuplet 3/2 { cs' c, cs' }
  c,16 cs'
  c, cs'
  c, cs'
  c, cs'
  c, cs'
  c, cs'
  \bar "||"
  c,[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs, c,]
  c[ cs' c,]
  c[ cs' gs' cs, c,]
  c[ cs' gs' cs gs cs, c,]
  c[ cs' gs' cs gs']\fermata ~ gs8 ~
  gs2. ~
  gs1
  \bar "||"
  R1 * 2
  r4
  c,,,4
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  \tuplet 3/2 { c, \nad cs' c, }
  \tuplet 3/2 { \nad cs' c, \nad cs' }
  c,8
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  \tuplet 3/2 { c, \nad cs' c, }
  \tuplet 3/2 { \nad cs' c, \nad cs' }
  c,16
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  c,
  \nad
  cs'
  \bar "||"
  c,[ cs' c,]
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
