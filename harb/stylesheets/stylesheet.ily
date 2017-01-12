#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 12)

springStems =
#'((moveto 0 7)
   (lineto 0 15)
   (moveto 0 -10)
   (lineto 0 -7)
   (closepath))

\header {
}

\paper {
}

\layout {
    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Mark_engraver
        \consists Metronome_mark_engraver
        \consists Script_engraver
        \consists Text_engraver
        \consists Text_spanner_engraver
        \consists Time_signature_engraver
    }

    \context {
        \TabVoice
        \type Engraver_group
        \alias TabVoice
        \remove Forbid_line_break_engraver
        \override Stem.direction = -1
        \override Stem.length = #3
        \override Beam.positions = #'(-3 . -3)
        \override Beam.beam-thickness = #0.2
    }

    \context {
        \Voice
        \type Engraver_group
        \alias Voice
        \remove Forbid_line_break_engraver
    }

    \context {
        \TabVoice
        \name FingeringVoice
        \type Engraver_group
        \alias TabVoice
        \remove Forbid_line_break_engraver
    }

    \context {
        \Voice
        \name SpringVoice
        \type Engraver_group
        \alias Voice
        \remove Rest_engraver
        % Note heads
        % Stem
        % Beams, slurs, accents
        % accidentals, bar lines
		%{\override Beam.positions = #'(3 . 3)
		\override NoteHead.Y-offset = -10
		\override NoteHead.no-ledgers = ##t
        \override NoteHead.stem-attachment = #'(0 . 0)
		\override Stem.direction = 1
        \override Stem.thickness = #0.5%}
        %\override Stem.stencil = #ly:text-interface::print
        %\override Stem.text = \markup { \path #0.1 #springStems }
    }

    \context {
        \Voice
        \name BrassVoice
        \type Engraver_group
        \alias Voice
    }

    \context {
        \TabStaff
        \name PerformerStaff
        \type Engraver_group
        \alias TabStaff
        \accepts FingeringVoice
        \accepts SpringVoice
        \accepts BrassVoice
        \remove Time_signature_engraver
        \override StaffSymbol.staff-space = #5
        \tabFullNotation
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerStaff
        \remove Metronome_mark_engraver
        \remove Bar_number_engraver
    }
}
