\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
% \addEdition fingering
% \addEdition dynamics

\editionMod tweaks 4 0/8 music.Dynamics \once\override DynamicText.X-offset = #-0.6
\editionMod tweaks 55 0/8 music.Dynamics \once\override DynamicText.X-offset = #-0.6
