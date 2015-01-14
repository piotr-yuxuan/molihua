% http://www.amazon.com/Preludes-Books-1-2-Debussy/dp/B000002RZU/ref=lh_di_t
\version "2.14.2"
\include "italiano.ly"

% Penser à rajouter :
%	→ des vérifications d'octave pour contrôler la hauteur absolue de la note : do=''.
%	→ des vérifications de mesure : time 4/4 do4 re mi fa | sol la si do.

#(set-global-staff-size 20)

mBreak = {
%	\break
}

noir = {
%	\override NoteHead #'color = #black
}

global = {
	\key re \major
}

hautUn = \relative do' { \override NoteHead #'color = #red \noir
	\clef treble
		
	re16 la re mi fad re la' fad
	re la re fad la fad re fad
	la re si re la fad re fad
	la fad re fad re si re fad						\mBreak
	re la re fad la fad re fad
	la re si re la fad re fad
	mi re la mi' fad re mi la,
	la mi' re fad la si re mi
%	fad\( mi re fad\) mi8.\( fad16\)
%	la8\( si16 re\) si8\( la\)						\mBreak
%	la\( mi\) fad16\( la fad mi\)
%	re\( mi si4 re8\)
%	mi8.\( fad16\) re\( mi re si\)
%	la2
%	s2 s2 s2 s2 s2 s2
%	s2						\mBreak
%	fad16\( mi re  fad\) mi8.\( fad16\)
%	la8\( si16 re\) si8\( la\)
%	la\( mi\) fad16\( la fad mi\)
%	re16\( mi si4 re8\)
%	mi8.\( fad16\) re\( mi re si\) la2
%	r4 <re mi la>\fermata\arpeggio
}

hautDeux = \relative do' { \override NoteHead #'color = #green \noir

	fad16 mi fad la si la re si
	la fad la4 si8
	si mi16 fad mi re si re la4. r8
	la16 fa la4 si8
	si8 re16 fad re si la8
	la16 fad mi8 fad16 la fad mi re si re4 r8
%	<fad fad'>16 <mi mi'> <re re'> <fad fad'> < mi mi'>8. <fad fad'>16 <la la'>8 <si si'>16 <re re'> <si si'>8 <la la'>8
%	<la la'>8 <mi mi'> <fad fad'>16 <la la'> <fad fad'> <mi mi'>
%	<re re'> <mi mi'> <si si'>4 <re re'>8
%	<mi mi'>8. <fad fad'>16
%	<re re'> <mi mi'> <re re'> <si si'>
%	<la la'>4. r8
%	fad'16 re mi si re la re mi % s2
%	fad16 mi re fad mi8. fad16
%	la8 si16 re si8 la
%	la mi fad16 la fad mi
%	re mi si4 re8
%	mi8. fad16 re mi re si
%	la4. r8
}

hautTrois = \relative do' { \override NoteHead #'color = #blue \noir
}

hautQuatre = \relative do' { \override NoteHead #'color = #grey \noir
}

basUn = \relative do { \override NoteHead #'color = #cyan \noir
	<re la' re>\arpeggio
}

basDeux = \relative do { \override NoteHead #'color = #darkmagenta \noir
}

basTrois = \relative do { \override NoteHead #'color = #magenta \noir
}

basQuatre = \relative do { \override NoteHead #'color = #darkgreen \noir
}

upper = \relative do' {
	\clef treble
	fad'16\( mi re fad\) mi8.\( fad16\)
	la8\( si16 re\) si8\( la\)
	la\( mi\) fad16\( la fad mi\)
	re\( mi si4 re8\)
	mi8.\( fad16\) re16\( mi re si					\mBreak
	la2\)
	r4 <re mi la>\arpeggio\fermata
	<< {
		\hautUn
	} \\ {
		\hautDeux
	} >>
	<fad, fad'>16 <mi mi'> <re re'> <fad fad'> < mi mi'>8. <fad fad'>16 <la la'>8 <si si'>16 <re re'> <si si'>8 <la la'>8
	<la la'>8 <mi mi'> <fad fad'>16 <la la'> <fad fad'> <mi mi'>
	<re re'> <mi mi'> <si si'>4 <re re'>8
	<mi mi'>8. <fad fad'>16
	<re re'> <mi mi'> <re re'> <si si'>
	<la la'>4. r8
	fad'16 re mi si re la re mi % s2
	fad16 mi re fad mi8. fad16
	la8 si16 re si8 la
	la mi fad16 la fad mi
	re mi si4 re8
	mi8. fad16 re mi re si
	la4. r8
	
	r4 <re' mi la>\fermata\arpeggio
}

lower = \relative do {
	\clef bass
	<re la' re>4\arpeggio <la re la'>\arpeggio
	<si fad' si>\arpeggio <fad' si re>\arpeggio
	<mi la dod>\arpeggio <la, mi' la>\arpeggio
	<si fad' si>4. \arpeggio la'8
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
	s2												\mBreak
	
	<re, la' re>4\arpeggio <la re la'>\arpeggio
	<si fad' si>\arpeggio <fad' si re>\arpeggio
	<mi la dod>\arpeggio <la, mi' la>\arpeggio
	<si fad' si>4. \arpeggio la'8
	mi,16\( si' re mi sold si re mi\)
	la,,\( si re mi la si re mi la4\) <la, re mi>\arpeggio
}

dynamics = {
	\time 2/4
	s2 s2 s2 s2 s2 s2 s2 \bar "|:"
	s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar ":|"
	s2 s2 s2 s2 s2 s2 s2 \bar "|."
}

pedal = {
	%s2\sustainOn s4\sustainOff
}

\book{
	\header {
%		dedication = "dedicated to me"
%		title = \markup \center-column { "Title first line" "Title second line, longer" }
%		subtitle = "the subtitle,"
%		subsubtitle = #(string-append "subsubtitle LilyPond version " (lilypond-version))
%		poet = "Poet"
%		composer =  \markup \center-column { "composer" \small "(1847-1973)" }
%		texttranslator = "Pierre de B."
%		meter = \markup { \teeny "m" \tiny "e" \normalsize "t" \large "e" \huge "r" }
%		arranger = \markup { \fontsize #8.5 "a" \fontsize #2.5 "r" \fontsize #-2.5 "r" \fontsize #-5.3 "a" \fontsize #7.5 "nger" }
%		instrument = \markup \bold \italic "piano"
%		piece = "Piece"
%		tagline = "" % Music engraving by LilyPond 2.14.2—www.lilypond.org (lilypond-version)
	}
  
	\score {
		\new PianoStaff = "PianoStaff_pf" {
			\set PianoStaff.connectArpeggios = ##t
			<<
				\new Staff = "up" << \global \upper >>
				\new Dynamics = "Dynamics_pf" \dynamics
				\new Staff = "down" << \global \lower >>
%				\new Dynamics = "pedal" \pedal
			>>
		}

		\header {
			piece = "Fleur de jasmin"
%			opus = "opus1"
	    }
	    
		\layout {
			\context {
		    	\Score
%				\remove "Bar_number_engraver"
			}
%			make-footer=##t
%			ragged-last=##t
		}
	}
}