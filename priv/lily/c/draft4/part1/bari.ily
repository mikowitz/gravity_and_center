nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bari = \relative c {
  \clef bass
  r4 \tuplet 3/2 { r4 a8 ~ } a4 ~ a4
  r4 r8 b8 ~ b4 ~ \tuplet 3/2 { b8 cs,4 ~ }
  cs8 \nad a'!8 ~ \nad a!4 ~ \nad a!8 r8 \tuplet 3/2 { r8 e'4 ~ }
  e4 ~ e8 r8 r2
  r2 bf'2
  r4 \tuplet 3/2 { r4 f'8 ~ } f4 ~ f4 ~
  f2. ~ f8 \nad a,8 ~
  a4 ~ a8 r8 r2
  R1
  \tuplet 3/2 { r8 g4 ~ } g4 f2 
  r2 a,2
  r2 \tuplet 3/2 { r8 c4 ~ } c4 ~ 
  \tuplet 3/2 { c8 r4 } r8 bf8 ~ bf4 ~ bf8 r8
  R1
  r4 \tuplet 3/2 { r8 \nad a!4 ~ } a4 cs,4 ~
  \tuplet 3/2 { cs4 d8 ~ } d4 ~ \tuplet 3/2 { d4 r8 } r4
  R1
  R2.
  R1
  R1
  R1
  r2 r4 ds''4:32\pp ~
  ds2.:32 ~
  ds1:32 ~
  ds2 r4 <a, a' f' bf d>4 ~ 
  1 ~
  \after 2 \n
  2\> r2.
  \time 4/4
  \tuplet 3/2 { a'!2 b cs ~ }
  \time 5/4
  \after 1\n
  cs1:32 \>
  r4
  \time 4/4
  R1
  R2.
  R1
  R2.*2
  R1*2
  r2 <a, a' f' bf d>2 ~
  1
}
