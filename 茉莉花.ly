\version "2.14.2"
\include "italiano.ly"

\pointAndClickOff

#(set-global-staff-size 20)

mBreak = {
  %	\break
}

global = {
  \key re \major
  \time 2/4
}

biwa = \relative do' {
  R2*7
  fad16 mi fad la si la re si
  la fad la4:32 si8:32
  re:32 mi16 fad mi re si re la4.:32 r8
  la16 fad la4:32 si8:32
  re8:32 mi16 fad re si la8:32
  la16 fad mi8:32 fad16 la fad mi re si re4:32 r8
  fad16 mi re fad mi8.:32 fad16 la8:32 si16 re si8 la8:32
  la8 mi:32 fad16 la fad mi
  re mi si4:32 re8:32
  mi8.:32 fad16
  re mi re si
  la4.:32 r8
  R2*1
  % Début de folie
  \time 3/2
  s1 s2
  \time 2/4
  % Fin de folie
  fad'16 mi re fad mi8.:32 fad16
  la8 si16 re si8 la:32
  la mi:32 fad16 la fad mi
  re mi si4:32 re8:32
  mi8.:32 fad16 re mi re si
  la4.:32 r8
  R2*1
}

upper = \relative do' {
  fad'16\( mi re fad\) mi8.\( fad16\)
  la8\( si16 re\) si8\( la\)
  la\( mi\) fad16\( la fad mi\)
  re\( mi si4 re8\)
  mi8.\( fad16\) re16\( mi re si					\mBreak
  la2\)
  r4 <re mi la>\arpeggio\fermata
  re,16 la re mi fad re la' fad
  re la re fad la fad re fad
  la re si re la fad re fad
  la fad re fad re si re fad						\mBreak
  re la re fad la fad re fad
  la re si re la fad re fad
  mi re la mi' fad re mi la,
  la mi' re fad la si re mi
  fad\( mi re fad\) mi8.\( fad16\)
  la8\( si16 re\) si8\( la\)						\mBreak
  la\( mi\) fad16\( la fad mi\)
  re\( mi si4 re8\)
  mi8.\( fad16\) re\( mi re si\)
  la2
  fad16 re mi si fad' la, re mi						\mBreak
  % Début de folie
  \time 3/2
  la32->
  \change Staff = "down" mi re la
  \change Staff = "up" mi'->
  \change Staff = "down" re la mi
  \change Staff = "up" \clef bass re'->
  \change Staff = "down" la mi re
  \change Staff = "up" la'->
  \change Staff = "down" mi re la
  \change Staff = "up" mi'->
  \change Staff = "down" re la mi
  \change Staff = "up" la->
  \change Staff = "down" mi re la
  re->
  \change Staff = "up" mi la] re
  \change Staff = "down" mi,->
  \change Staff = "up" la re mi
  \change Staff = "down" la,->
  \change Staff = "up" re mi la
  \change Staff = "down" re,->
  \change Staff = "up" mi la re
  \change Staff = "down" mi_>
  \change Staff = "up" \clef treble la re mi
  re la re, mi
  \time 2/4
  % Fin de folie
  fad'16\( mi re  fad\) mi8.\( fad16\)
  la8\( si16 re\) si8\( la\)
  la\( mi\) fad16\( la fad mi\)
  re16\( mi si4 re8\)
  mi8.\( fad16\) re\( mi re si\) la2
  r4 <re mi la>\fermata\arpeggio
}

lower = \relative do {
  <re la' re>4\arpeggio <la re la'>\arpeggio
  <si fad' si>\arpeggio <fad' si re>\arpeggio
  <mi la dod>\arpeggio <la, mi' la>\arpeggio
  <si fad' si>4.\arpeggio la'8
  mi,16\( si' re mi sold si re mi\)				\mBreak
  la,,\( si re mi la si re mi
  la4\) <la, re mi>\arpeggio
  
  re,16 fad la si re si re la
  re, fad la si re si la si
  re, fad la si re si re la
  re, fad la si re la si la						\mBreak
  re, fad la si re la si la
  re, fad la si re si re la
  la, re mi la si la fad mi
  re, re' mi fad la si re mi
  <re, la' re>4\arpeggio <la mi' la>\arpeggio
  <si fad' si>\arpeggio <fad' si re>\arpeggio		\mBreak
  <mi la dod>\arpeggio <la, mi' la>\arpeggio
  <si fad' si>4.\arpeggio la'8
  mi,16\( si' re mi sold si re mi\)
  la,,\( si re mi la si re mi\)
  R2*1											\mBreak
  % Début de folie
  \time 3/2
  s1 s2
  \time 2/4
  % Fin de folie
  <re, la' re>4\arpeggio <la re la'>\arpeggio
  <si fad' si>\arpeggio <fad' si re>\arpeggio
  <mi la dod>\arpeggio <la, mi' la>\arpeggio
  <si fad' si>4. \arpeggio la'8
  mi,16\( si' re mi sold si re mi\)
  la,,\( si re mi la si re mi la4\) <la, re mi>\arpeggio
}

dynamics = {
  \time 2/4
  s2 s2 s2 s2 s2 \mBreak
  s2 s2 \bar "|:"	s2 s2 s2 s2 \mBreak
  s2 s2 s2 s2 s2 s2 \mBreak
  s2 s2 s2 s2 s2 \bar ":|:" \mBreak
  % Début de folie
  \time 3/2
  s1 s2
  \time 2/4
  % Fin de folie	
  \mBreak \bar ":|"
  s2 s2 s2 s2 s2 s2 s2 \bar "|."
}

pedal = {
  s4\sustainOn s4\sustainOn
  s4.\sustainOn s8\sustainOff
  s4\sustainOn s4\sustainOn
  s4.\sustainOn s8\sustainOff
  s4\sustainOn s8 s16 s16\sustainOff % 5
  s2\sustainOn s4 s8 s16 s16\sustainOff
  s2\sustainOn s4\sustainOn s8 s16 s16\sustainOff
  s2\sustainOn s4\sustainOn s8 s16 s16\sustainOff
  s2\sustainOn
  s4\sustainOn s8 s16 s16\sustainOff
  s4\sustainOn s8 s16 s16\sustainOff
  s4\sustainOn s8 s16 s16\sustainOff % 15
  s4\sustainOn s4\sustainOn
  s4\sustainOn s8 s16 s16\sustainOff
  s4\sustainOn s4\sustainOn
  s4\sustainOn s8 s16\sustainOff s16
  s4\sustainOn s8 s16 s16\sustainOff
  s4\sustainOn s4
  s4 s8 s16 s16\sustainOff
  % Début de folie
  \time 3/2
  s1\sustainOn s4 s8 s16 s32 s64\sustainOff s64
  \time 2/4
  % Fin de folie
  s4\sustainOn s4\sustainOn
  s4\sustainOn s4\sustainOff
  s4\sustainOn s4\sustainOn
  s4\sustainOn s4\sustainOff
  s4\sustainOn s8 s16 s16\sustainOff
  s4\sustainOn s4
  s4 s8 s8\sustainOff
}


\book{
  \score {	
    <<
      \new Staff = "Staff_Biwa" {
        \set Staff.instrumentName = \markup { \hcenter-in #10
                                              \center-column { "琵琶"
                                                               \line { (Biwa) } } }
        { \global \clef treble \biwa }
      }
      \new PianoStaff {
        \set PianoStaff.instrumentName = \markup { \hcenter-in #10
                                                   \center-column { "鋼琴"
                                                                    \line { (Piano) } } }
        \set PianoStaff.connectArpeggios = ##t
        <<
          \new Staff = "up" { \global \clef treble \upper }
          \new Dynamics = "Dynamics_pf" \dynamics
          \new Staff = "down" { \global \clef bass \lower }
          \new Dynamics = "pedal" \pedal
        >>
      }
    >>
    \header {
      piece = "茉莉花 (Fleur de jasmin)"
    }
    
    \layout {
      \context {
        \Score
        %				\remove "Bar_number_engraver"
      }
      make-footer=##t
      ragged-last=##f
    }
  }
}