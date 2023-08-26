%% Generated by lilypond-book
%% Options: [fragment,indent=0\mm,line-width=345\pt,quote,staffsize=26]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(ly:set-option 'eps-box-padding 3.000000)

#(set-global-staff-size 26)

\paper {
  indent = 0\mm
  line-width = 345\pt
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 345\pt - 2.0 * 0.4\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}



{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 16

\relative {
  c'2 e2 \tuplet 3/2 { f8 a b } a2 e4
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}
