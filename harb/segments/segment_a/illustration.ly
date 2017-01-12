% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 9b01951 [develop] (2017-01-06 18:09:05)

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
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 15/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 63/8
            }
            {
                \time 3/4
                s1 * 3/4
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 3/2
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 69/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 15/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 3/8
            }
        }
        \tag #'perc
        \context PerformerStaff = "PerformerStaff" <<
            \set Staff.stringTunings = \stringTuning <b,,, ds,, cs, d,>
            \context TabVoice = "FingeringVoice" {
                \set minimumFret = #4
                \set restrainOpenStrings = ##t
                {
                    % [FingeringVoice] Measure 1
                    {
                        b,,4
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 2
                    {
                        b,,8 \repeatTie
                        b,4
                    }
                    % [FingeringVoice] Measure 3
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        b,4 \repeatTie
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 4
                    {
                        b,,8 \repeatTie
                        cs,4
                        b,,4
                    }
                }
                {
                    % [FingeringVoice] Measure 5
                    {
                        R1 * 15/8
                    }
                    % [FingeringVoice] Measure 10
                    {
                        R1 * 5/8
                    }
                }
                {
                    % [FingeringVoice] Measure 11
                    {
                        b,4
                        cs,8
                    }
                    % [FingeringVoice] Measure 12
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        cs,8 \repeatTie
                        b,,4
                        b,,4 \repeatTie
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 13
                    {
                        r4
                    }
                }
                {
                    {
                        b,,8
                    }
                }
                {
                    % [FingeringVoice] Measure 14
                    {
                        R1 * 15/2
                    }
                    % [FingeringVoice] Measure 34
                    {
                        R1 * 3/4
                    }
                }
                {
                    % [FingeringVoice] Measure 35
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        gs,4
                        cs,8
                        cs,4 \repeatTie
                        cs,8 \repeatTie [
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 36
                    {
                        b,,8 \repeatTie
                        r4
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 37
                    {
                        R1 * 3/2
                    }
                    % [FingeringVoice] Measure 41
                    {
                        R1 * 1/2
                    }
                }
                {
                    % [FingeringVoice] Measure 42
                    {
                        cs,4.
                    }
                    % [FingeringVoice] Measure 43
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9 {
                        cs,8 \repeatTie
                        b,,4
                        r4
                        f,8 [
                        f,8 \repeatTie ]
                        cs,4
                    }
                    % [FingeringVoice] Measure 44
                    {
                        b,,4
                        f,8
                    }
                    % [FingeringVoice] Measure 45
                    {
                        f,4. \repeatTie
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 46
                    {
                        R1 * 69/8
                    }
                    % [FingeringVoice] Measure 69
                    {
                        R1 * 1/2
                    }
                }
                {
                    % [FingeringVoice] Measure 70
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9 {
                        b,,4
                        r8 [
                        r8 ]
                        f,4
                        cs,4
                        b,,8
                    }
                    % [FingeringVoice] Measure 71
                    {
                        b,,8 \repeatTie
                        f,4
                    }
                    % [FingeringVoice] Measure 72
                    {
                        f,4 \repeatTie
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        cs,8 \repeatTie ]
                    }
                }
                {
                    {
                        r8
                    }
                }
                {
                    % [FingeringVoice] Measure 73
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5 {
                        r8
                        b,,4
                        f,4
                    }
                }
                {
                    % [FingeringVoice] Measure 74
                    {
                        R1 * 3/2
                    }
                    % [FingeringVoice] Measure 78
                    {
                        R1 * 1/2
                    }
                    % [FingeringVoice] Measure 79
                    {
                        r4
                    }
                }
                {
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 80
                    {
                        b,,8 \repeatTie
                        f,4
                        cs,4
                    }
                    % [FingeringVoice] Measure 81
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5 {
                        cs,4 \repeatTie
                        b,,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        r8 ]
                        \bar "|."
                    }
                }
            }
        >>
    >>
}