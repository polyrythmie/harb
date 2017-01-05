% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 17d45de [develop] (2017-01-04 18:26:33)

\version "2.18.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    \new Score \with {
        currentBarNumber = #1
    } <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=60
                \time 3/4
                s1 * 15
            }
        }
        \tag #'perc
        \context TabStaff = "PerformerStaff" <<
            \set Staff.stringTunings = \stringTuning <b,,, ds,, cs, d,>
            \override Staff.StaffSymbol.staff-space = #3
            \tabFullNotation
            \set TabStaff.restrainOpenStrings = ##t
            \context TabVoice = "FingeringVoice" {
                {
                    % [FingeringVoice] Measure 1
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-positions = #'(0)
                        \startStaff
                        R1 * 15
                        \bar "|."
                    }
                }
            }
            \context TabVoice = "SpringVoice" {
                {
                    % [SpringVoice] Measure 1
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-positions = #'(0)
                        \startStaff
                        R1 * 15
                        \bar "|."
                    }
                }
            }
            \context TabVoice = "BrassVoice" {
                {
                    % [BrassVoice] Measure 1
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-positions = #'(0)
                        \startStaff
                        R1 * 15
                        \bar "|."
                    }
                }
            }
        >>
    >>
}