#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 12)

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
    }

    \context {
        \TabVoice
        \name FingeringVoice
        \type Engraver_group
        \alias TabVoice
    }

    \context {
        \TabVoice
        \name SpringVoice
        \type Engraver_group
        \alias TabVoice
    }

    \context {
        \TabVoice
        \name BrassVoice
        \type Engraver_group
        \alias TabVoice
    }

    \context {
        \TabStaff
        \name PerformerStaff
        \type Engraver_group
        \alias TabStaff
        \accepts FingeringVoice
        \accepts SpringVoice
        \remove Time_signature_engraver
        % \override StaffSymbol.staff-space = #4 % This will be overridden whenever string tunings is set.
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerStaff
        \remove Metronome_mark_engraver
    }
}
