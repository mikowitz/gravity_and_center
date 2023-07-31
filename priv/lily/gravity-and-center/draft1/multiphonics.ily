\version "2.24.1"
\language "english"

#(define-markup-command (sax-multi layout props number initial keys) (markup? markup? list?)
#:properties ((x-padding 2)
                (font-size -1)
                (diagram-scale 0.75))
  (interpret-markup layout props
                    #{\markup {
                      \rounded-box \pad-x #`,x-padding {
                      \center-column {
                        \rounded-box { \line { \override #`(font-size . ,font-size) { #number \hspace #-0.5 \sub #initial } } }
                        \vspace #.5
                        \override #'(graphical . #f) { \override #`(size . ,diagram-scale) {
                          \woodwind-diagram
                          #'saxophone
                          #keys
                        }}
                      }
                      }
                    } #}))

multiSop = \markup \sax-multi 27 "S" #'((cc . (one two four five six)) (lh . ()) (rh . (ees)))
multiAlto = \markup \sax-multi 86 "A" #'((cc . (two three four five six)) (lh . (ees)) (rh . (low-c)))
multiTenor = \markup \sax-multi 33 "T" #'((cc . (one two three four six)) (lh . (d)) (rh . ()))
multiBari = \markup \sax-multi 21 "B" #'((cc . (one two three five six)) (lh . ()) (rh . ()))
