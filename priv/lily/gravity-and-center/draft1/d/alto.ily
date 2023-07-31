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

altoD = \relative c'' {
  r2 \tuplet 3/2 { r4 a8\pp ~ } a4 ~
  a4 r4 r2
  \tuplet 3/2 { r8 b4\pp\<( ~ } b4 ~ b8 fs8 ~ fs4 ~
  fs8\p) r8 \tuplet 3/2 { r4 cs8\pp ~ } cs2
  \tuplet 3/2 { r8 e4\pp ~ } e4 ~ e8 r8 \nad f!4\pp ~
  f4 r4 r2
  r8 f!8\pp ~ ( f4 ~ f2 ~
  f2 ~ f4 ~ \tuplet 3/2 { f4 g8 ~ }
  g4 ~ \tuplet 3/2 { g4\p) r8 } r2
  r4 a2\pp r4
  r2 \tuplet 3/2 { r4 c8\pp ~ } c4 ~
  \tuplet 3/2 { c4 r8 } \tuplet 3/2 { r4 \sad cs8\pp\< } ~ cs4 ~ \tuplet 3/2 { cs8 cs!4 ~ }
  cs4 ~ \tuplet 3/2 { cs8\p r4} r2
  r2 \nad f!2\pp
  R1
  R1
  r8 fqs8\pp ~ fqs4 ~ fqs4 ~ fqs2 ~ fqs4 r4
  \pitchedTrill
  \after 2..\stopTrillSpan
  fqs'1\p\startTrillSpan f,!
  r4
  \pitchedTrill
  f,4\p\<\startTrillSpan ~ g'!
  f2 ~
  \after 2.. \n \after 2.. \stopTrillSpan
  f1\mp\>
  R1*5
  R1*5/4
  R1
  R1*5/4
  R1
  R2.
  R1
  \pitchedTrill
  e2.\startTrillSpan\mp\> ~ fqs
  e2.
  <>\stopTrillSpan

  \once \override TrillPitchAccidental.stencil = #ly:text-interface::print
  \once \override TrillPitchAccidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
  \pitchedTrill e2.\p\>\startTrillSpan fs
  <>\stopTrillSpan

  \pitchedTrill f!1\pp\startTrillSpan fqs
  <>\stopTrillSpan
  R1
  r2 \tuplet 3/2 { r4 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    fqs'
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'
    >2\pp ~
    ^\multiAlto
  }
  \bar "||"



}
