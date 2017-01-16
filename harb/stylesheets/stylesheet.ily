#(set-default-paper-size "letter" 'landscape)
#(set-global-staff-size 11)

springStems =
#'((moveto 0 7)
   (lineto 0 15)
   (moveto 0 -10)
   (lineto 0 -7)
   (closepath))

\header {
}

\paper {
    evenFooterMarkup = \markup \fill-line { " " }
    evenHeaderMarkup = \markup \fill-line { " " }
    oddFooterMarkup = \markup \fill-line { " " }
    oddHeaderMarkup = \markup \fill-line { " " }
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 30)
        (padding . 0)
        (stretchability . 0)
    )
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
        \numericTimeSignature
        \override BarNumber.Y-extent = #'(0 . 0)
        \override BarNumber.Y-offset = 0
        \override BarNumber.extra-offset = #'(-1 . 3)
        \override BarNumber.font-size = 1
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.Y-offset = 0
        \override TimeSignature.extra-offset = #'(0 . 4)
        \override TimeSignature.font-size = 2
        \override TimeSignature.style = #'single-digit
    }

    \context {
        \TabVoice
        \type Engraver_group
        \alias TabVoice
        \remove Forbid_line_break_engraver
        \remove Multi_measure_rest_engraver
        \override Rest.Y-extent = #'(0 . 0)
        \override Rest.extra-offset = #'(0 . -2)
        \override Stem.direction = -1
        \override Stem.length = #3
        \override Beam.positions = #'(-2.75 . -2.75)
        \override Beam.beam-thickness = #0.15
        \override Tie.direction = 1
    }

    \context {
        \Voice
        \name BrassVoice
        \type Engraver_group
        \alias Voice
        \remove Forbid_line_break_engraver
        \remove Multi_measure_rest_engraver
        \override Rest.Y-extent = #'(0 . 0)
        \override Rest.extra-offset = #'(0 . 2)
        \override Stem.direction = 1
        \override Stem.length = #3
        \override Beam.positions = #'(2.75 . 2.75)
        \override Beam.beam-thickness = #0.15
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
        \remove Rest_collision_engraver
        \remove Multi_measure_rest_engraver
        \override StaffSymbol.staff-space = #5
        \tabFullNotation
        stringTunings = \stringTuning <b,,, ds,, cs, d,>
        restrainOpenStrings = ##t
        \override TupletBracket.edge-height = #'(0.25 . 0.25)
        \override TupletBracket.positions = #'(-15.5 . -15.5)
        \override Clef.font-size = #-12
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerStaff
        \remove Metronome_mark_engraver
        \remove Bar_number_engraver
        \override SpacingSpanner.uniform-stretching = ##t
        \override SpacingSpanner.strict-note-spacing = ##f
        proportionalNotationDuration = #(ly:make-moment 1/20)
        tupletFullLength = ##t
        \override Stem.stemlet-length = #2
        autoBeaming = ##f
    }
}
