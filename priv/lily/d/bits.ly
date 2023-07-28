\version "2.24.1"
\language "english"

\header { 
  tagline = #f
}

\paper {
 %system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

{
  \relative <<
  {
    \voiceOne
    \time 6/4
    \tuplet 3/2 { r4 e'8 }
    \tuplet 3/2 { r8 af bf }
    r4
    \tuplet 3/2 { fs8 r8 e }
    r4
    \tuplet 3/2 { r8 af r8 }
  } \\ {
    \voiceTwo
    r8. f16
    r16 g16 r8
    r8 a!8
    r4
    r8 ef16 f!16
    r4
  }
  >>
   \break
   
   \relative c' << {
     \voiceOne
     \time 5/4
       r4
       \tuplet 3/2 { fs8 r8 e }
       r4
       \tuplet 3/2 { r8 af8 r8 }
       fs8 r8
      } \\ {
        \voiceTwo
        r8 ef!16 f
        r4
        r16 g8 f16
        r4
        r4
        
      }
   >>
   
   \break
   
   \relative c' << {
     \voiceOne
     r4
     \tuplet 3/2 { fs8 r8 e }
     \tuplet 3/2 { r4 bf'8 }
     \tuplet 3/2 { r8 af8 r }
     r4
   } \\ {
     \voiceTwo
     r8 ef16 f
     r4
     r16 g16 a8
     r8. f16
     fs16 r16 r8
   } >>
   
     \break
   
   \relative c' << {
     \voiceOne
      \tuplet 3/2 { r4 e8 }
      r4
      \tuplet 3/2 { r4 bf'8 }
      \tuplet 3/2 { r8 af8 r8 }
      r4
   } \\ {
     \voiceTwo
     r8. f16
     r16 g16 r8
     fs8 a8
     r8. f16
     fs16 r16 r8
   } >>
   
   \break
   
   \relative c' << {
     \voiceOne
      \tuplet 3/2 { r4 bf'8 }
      r4
      \tuplet 3/2 { r8 af bf }
      r4
      r4
   } \\ {
     \voiceTwo
      r16 cs,8 b'16
      c,8 a'16 b
      r4
      r16 g8 f16
      fs16 r16 r8
   } >>
   
   \break
   
   \relative c' << {
     \voiceOne
     \time 7/4
      \tuplet 3/2 { r4 e8 }
      r4
      r4
      \tuplet 3/2 { r8 af8 r }
      \tuplet 3/2 { r4 bf8 }
      r4
      r4
   } \\ {
     \voiceTwo
      r8. f16
      r16 g16 r8
      fs8 a8
      r8. b16
      r4
      r16 g8 f16
      fs8 r8
   } >>

  \break
   
   \relative c' << {
     \voiceOne
      \time 4/4
      r4
      \tuplet 3/2 { r4 e8 }
      r4
      \tuplet 3/2 { r8 af r }
   } \\ {
     \voiceTwo
     r8 ef16 f
     fs8 r8
     r16 g a8
     r8. f16

   } >>
   
   \break
   
   \relative c' << {
     \voiceOne
      \time 5/4
      r4
      \tuplet 3/2 { r4 bf'8 }
      \tuplet 3/2 { r8 af r }
      r4
      r4
   } \\ {
     \voiceTwo
     c,8 a'16 b
     r4
     r16 g8 b16
     r8 a
     fs8. f16
   } >>
   
      \break
   
   \relative c' << {
     \voiceOne
      \time 5/4
      \tuplet 3/2 { r4 bf'8 }
      r4
      \tuplet 3/2 { r8 af r }
      r4
      r4
   } \\ {
     \voiceTwo
     r16 cs,8 b'16
     c,!8 a'
     r16 g8 b16 
     r8 a!
     fs8. f16

   } >>
   
         \break
   
   \relative c' << {
     \voiceOne
      \time 5/4
      r4
      \tuplet 3/2 { r4 bf'8 }
      r4
      \tuplet 3/2 { r8 af r }
      r4

   } \\ {
     \voiceTwo
     c,8 a'16 b
     r4
     r16 cs,8 b'!16
     r8 a!
     fs8. f16

   } >>
}