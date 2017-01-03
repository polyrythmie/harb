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
        \Voice
        \type Engraver_group
        \alias Voice
        \remove Forbid_line_break_engraver
    }

    \context {
        \Staff
        \remove Time_signature_engraver
    }

    \context {
        \Staff
        \name StringAStaff
        \type Engraver_group
        \alias Staff
        \accepts Voice
    }

    \context {
        \Staff
        \name StringBStaff
        \type Engraver_group
        \alias Staff
        \accepts Voice
    }

    \context {
        \Staff
        \name StringCStaff
        \type Engraver_group
        \alias Staff
        \accepts Voice
    }

    \context {
        \Staff
        \name StringDStaff
        \type Engraver_group
        \alias Staff
        \accepts Voice
    }

    \context {
        \StaffGroup
        \name PerformerGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts StringAStaff
        \accepts StringBStaff
        \accepts StringCStaff
        \accepts StringDStaff
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerGroup
        \remove Metronome_mark_engraver
    }
}
