nad = {
  \once \override Accidental.stencil = #ly:text-interface::print
  \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
}

bariF = \relative c' {
  \time 4/4
  \clef bass
  r4 f2.\p ~
  f1 ~
  f2 ~ \tuplet 5/4 { f16 r4 } r4
  R1 * 3
  f1\pp ~
  \tuplet 5/4 { f4 r16 } r4 r4 r8. f,,16\mp\> ~
  f1:32 ~
  \tuplet 5/4 { f16\n r4 } r4 r2
  R1
  r4 r16 f'\pp ~ f8 ~ f2 ~
  f1\> ~
  \after 2..\n
  f1
  R1 * 5
  f,1:32\pp\< ~
  f1:32 ~
  f1:32 ~
  \time 6/4
  f8\mf r8 r4 r4 r2.
  \time 4/4
  R1 * 4
  r2 r4 \tuplet 3/2 { r8 f''4\pp\> ~ }
  \after 4. \n
  f2 r2
  r2 \tuplet 5/4 { r16 f,,4:32\pp ~ } f4:32 ~
  f1:32 ~
  f1:32 ~
  f1:32 ~
  \time 6/4
  \tuplet 5/4 { f4:32 r16 } r4 r4 r2.
  \time 4/4
  R1
  r2. \tuplet 3/2 { r8 <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a' f' bf d>4\pp ~
    ^\multiBari
  }
  2. ~ \tuplet 5/4 { 8 r8. }
  R1
  r4 f''\mp \> ~ f ~ \tuplet 3/2 { \after 8. \n f4 r8 }
  R1 * 2
  \bar "|."

}
