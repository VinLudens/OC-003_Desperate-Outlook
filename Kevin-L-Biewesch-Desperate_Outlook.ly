\version "2.18.2"

\include "global.ly"
\include "left.ly"
\include "right.ly"
\include "dynamics.ly"

date = #(strftime "%B %d %Y" (localtime (current-time)))
\header {
  title = "Desperate Outlook"
  subtitle = "Original Composition No. 3"
  composer = "Kevin L. Biewesch"	
  % date = "29.8.2018"
  %meter = "67"
  tagline = \markup { \center-column {
    \with-url #"https://www.youtube.com/@VinLudens"
    \line { "Engraving with Lilypond" $(lilypond-version) \char ##x2014 "https://www.youtube.com/@VinLudens" }
    \line { \small \italic {  August 29 2018  } }
  } }
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  evenHeaderMarkup = \markup { \if \should-print-page-number { \fill-line { "" \fromproperty #'page:page-number-string } } }
  oddHeaderMarkup = \evenHeaderMarkup
}

\include "oll-core/package.ily"
\loadPackage edition-engraver
\include "editions.ly"

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Dynamics = "Dynamics" \dynamics
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    \context {
      \Score
      \editionID ##f music
    }
  }
  \midi {
    %\tempo 4=100
  }
}
