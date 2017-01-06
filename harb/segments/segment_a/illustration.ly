% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 4a31c86 [develop] (2017-01-04 19:08:06)

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
                \tempo 4=48
                \time 2/4
                s1 * 1/2
            }
            {
                \time 3/4
                s1 * 9/4
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 9/4
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 9/4
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 9/4
            }
            {
                \time 5/8
                s1 * 5/8
            }
        }
        \tag #'perc
        \context PerformerStaff = "PerformerStaff" <<
            \set Staff.stringTunings = \stringTuning <b,,, ds,, cs, d,>
            \override Staff.StaffSymbol.staff-space = #3
            \tabFullNotation
            \context TabVoice = "FingeringVoice" {
                \set minimumFret = #3
                \set restrainOpenStrings = ##t
                {
                    % [FingeringVoice] Measure 1
                    {
                        b,,4
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 2
                    {
                        r16
                    }
                }
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 11/10 {
                        b,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 3
                    {
                        cs,16
                    }
                }
                {
                    {
                        r16
                        r16
                    }
                }
                {
                    {
                        b,16
                        b,4.. \repeatTie
                    }
                }
                {
                    {
                        r16
                    }
                }
                {
                    % [FingeringVoice] Measure 4
                    {
                        b,,4
                        cs,4
                        gs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 5
                    {
                        r8
                    }
                }
                {
                    {
                        b,,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        gs,8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                }
                {
                    % [FingeringVoice] Measure 6
                    {
                        r16
                    }
                }
                {
                    {
                        cs,8.
                        cs,2 \repeatTie
                    }
                    % [FingeringVoice] Measure 7
                    {
                        gs,16
                    }
                }
                {
                    {
                        r16
                        r16
                    }
                }
                {
                    {
                        b,,16 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8. \repeatTie
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs,16
                        \set stemLeftBeamCount = 1
                        cs,8. \repeatTie ]
                    }
                }
                {
                    {
                        r16
                    }
                }
                {
                    % [FingeringVoice] Measure 8
                    {
                        gs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                }
                {
                    % [FingeringVoice] Measure 9
                    {
                        r8
                    }
                }
                {
                    {
                        cs,4
                        cs,4 \repeatTie
                    }
                }
                {
                    % [FingeringVoice] Measure 10
                    {
                        r16
                    }
                }
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 11/8 {
                        b,,4
                        b,,4
                    }
                    % [FingeringVoice] Measure 11
                    {
                        f,16
                    }
                }
                {
                    {
                        r16
                        r16
                    }
                }
                {
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                }
                {
                    {
                        r16
                    }
                }
                {
                    % [FingeringVoice] Measure 12
                    {
                        cs,2.
                    }
                }
                {
                    % [FingeringVoice] Measure 13
                    {
                        r8
                    }
                }
                {
                    {
                        b,,4
                        b,,4
                    }
                }
                {
                    % [FingeringVoice] Measure 14
                    {
                        r16
                    }
                }
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 11/10 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                    % [FingeringVoice] Measure 15
                    {
                        cs,16
                    }
                }
                {
                    {
                        r16
                        r16
                    }
                }
                {
                    {
                        b,,16
                        b,,4.. \repeatTie
                    }
                }
                {
                    {
                        r16
                    }
                }
                {
                    % [FingeringVoice] Measure 16
                    {
                        cs,4
                        f,4
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 17
                    {
                        r8
                    }
                }
                {
                    {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8
                        \set stemLeftBeamCount = 1
                        cs,8 ]
                        \bar "|."
                    }
                }
            }
        >>
    >>
}