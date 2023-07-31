\version "2.24.1"
\language "english"

\include "multiphonics.ily"

\include "a/sop.ily"
\include "a/alto.ily"
\include "a/tenor.ily"
\include "a/bari.ily"

\include "b/sop.ily"
\include "b/alto.ily"
\include "b/tenor.ily"
\include "b/bari.ily"

\include "c/sop.ily"
\include "c/alto.ily"
\include "c/tenor.ily"
\include "c/bari.ily"

\include "d/sop.ily"
\include "d/alto.ily"
\include "d/tenor.ily"
\include "d/bari.ily"

\include "e/sop.ily"
\include "e/alto.ily"
\include "e/tenor.ily"
\include "e/bari.ily"

\include "f/sop.ily"
\include "f/alto.ily"
\include "f/tenor.ily"
\include "f/bari.ily"

#(set-global-staff-size 12)

\score {
  \context StaffGroup = "Saxophone Quartet" <<
    \context Staff = "Soprano" \with {
      instrumentName = "Soprano"
      shortInstrumentName = "Sop."
    } {
      \sopA
      \sopB
      \sopC
      \sopD
      \sopE
      \sopF
    }
    \context Staff = "Alto" \with {
      instrumentName = "Alto"
      shortInstrumentName = "Alto"
    } {
      \altoA
      \altoB
      \altoC
      \altoD
      \altoE
      \altoF
    }
    \context Staff = "Tenor" \with {
      instrumentName = "Tenor"
      shortInstrumentName = "Ten."
    } {
      \tenorA
      \tenorB
      \tenorC
      \tenorD
      \tenorE
      \tenorF
    }
    \context Staff = "Baritone" \with {
      instrumentName = "Baritone"
      shortInstrumentName = "Bar."
    } {
      \bariA
      \bariB
      \bariC
      \bariD
      \bariE
      \bariF
    }
  >>
}

\layout {
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/16)
    \override SpacingSpanner.uniform-stretching = ##t
    \shape #'((-1.5 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
    \override RepeatTie.X-extent = ##f
    \override StaffSymbol.color = #(x11-color 'grey50)
    \override StaffSymbol.layer = #-1
    tupletFullLength = ##t
    rehearsalMarkFormatter = #format-mark-box-letters
    \override RehearsalMark.font-size = #7

    \override VerticalAxisGroup.staff-staff-spacing = #'(
      (basic-distance . 8)
      (minimum-distance . 8)
      (padding . 4)
      (stretchability . 0)
    )
  }

  \context {
    \Staff
    \override NoteHead.extra-spacing-width = #'(-1 . 1.5)
    \override Rest.extra-spacing-width = #'(-1 . 1)
    % \override Flag.stencil = #modern-straight-flag
    \override Flag.stencil = #flat-flag
    \override Hairpin.to-barline = ##f
    \override Beam.damping = #+inf.0
  }
}

#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))

\paper {
  #(set-paper-size "my size")
  indent = 0
  top-margin = 0.75\in
  bottom-margin = 0.75\in
  left-margin = 1\in
  right-margin = 1\in
  system-system-spacing.minimum-distance = 20
  tagline = ##f
}
