\version "2.24.0"
\language "english"

\include "sop.ily"
\include "alto.ily"
\include "tenor.ily"
\include "bari.ily"

#(set-global-staff-size 12)

\score {
  \context StaffGroup = "Saxophone Quartet" <<
    \context Staff = "Soprano" { \sop }
    \context Staff = "Alto" { \alto }
    \context Staff = "Tenor" { \tenor }
    \context Staff = "Baritone" { \bari }
  >>
  % \midi {}
}

\layout {
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1/16)
    \override SpacingSpanner.uniform-stretching = ##t
    \shape #'((-1.5 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
    \override RepeatTie.X-extent = ##f
    \override StaffSymbol.color = #(x11-color 'grey50)
    tupletFullLength = ##t

    \override VerticalAxisGroup.staff-staff-spacing = #'(
      (basic-distance . 8)
      (minimum-distance . 20)
      (padding . 4)
      (stretchability . 0)
    )
  }

  \context {
    \Staff
    \override NoteHead.extra-spacing-width = #'(-1.5 . 1.5)
    \override Rest.extra-spacing-width = #'(-1.5 . 1.5)
    % \override Flag.stencil = #modern-straight-flag
    \override Flag.stencil = #flat-flag
  }
}

#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))

\paper {
  #(set-paper-size "my size")
  tagline = ##f
  indent = 0
  top-margin = 0.75\in
  bottom-margin = 0.75\in
  left-margin = 1\in
  right-margin = 1\in
  system-system-spacing.minimum-distance = 15
}