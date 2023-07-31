nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bariD = \relative c {
  r4 \tuplet 3/2 { r4 a8\pp ~ } a2
  r4 r8 b(\pp\< ~ b4 ~ \tuplet 3/2 { b8 cs4 ~ }
  cs8 \nad a! ~ a4 ~ a8)\p r8 \tuplet 3/2 { r8 e'4\pp ~ }
  e4 ~ e8 r8 r2
  r2 bf'2\pp
  r4 \tuplet 3/2 { r4 f'8\pp\<( ~ } f2 ~
  f2. ~ f8 a,8 ~
  a4 ~ a8\p) r8 r2
  R1
  \tuplet 3/2 { r8 g4\pp\< ( ~ } g4
  \after 4..\p
  f2)
  r2 a,\pp
  r2 \tuplet 3/2 { r8 c4\pp ~ } c4 ~
  \tuplet 3/2 { c8 r4 } r8 bf\pp ~ bf4 ~ bf8 r8
  R1
  r4 \tuplet 3/2 { r8 \nad a!4\pp\<( ~ } a4 cs,4 ~
  \tuplet 3/2 { cs4 d8 ~ } d4 ~ \tuplet 3/2 { d4\mp) r8 } r4
  R1*7/4
  R1*3
  r2 r4 ds''4:32\pp ~
  ds1:32 ~
  ds1:32 ~
  ds2:32 r4 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a,!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'
    bf
    d
  >\pp ~
  ^\multiBari
  1 ~
  2 r2.
  \tuplet 3/2 { a'2(\p\< b cs2 ~ }
  cs2:32\mf\> ~ \after 4.. \n cs2:32) r4
  R1
  R2.
  R1
  R2.*3
  R1
  r2 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a,!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'
    bf
    d
  >2\pp ~
  ^\multiBari
  1


}
