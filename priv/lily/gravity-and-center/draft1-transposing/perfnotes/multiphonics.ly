\language "english"

\include "../multiphonics.ily"

{
  \omit Staff.TimeSignature
  <a' bf'' f'''>1^\multiSop
  \stopStaff
  s1*6
  \startStaff
  <

    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d''!
    dqs'''
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'''
  >1^\multiAlto
  \stopStaff
  s1*6
  \startStaff
  <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs''
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'''!
  >1^\multiTenor
  \stopStaff
  s1*6
  \startStaff
  <
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''
    d'''
    \tweak Accidental.stencil #ly:text-interface::print
    \tweak Accidental.text \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'''!
    b'''
  >1^\multiBari
}



