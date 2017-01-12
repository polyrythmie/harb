% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 6f729d6 [develop] (2017-01-12 16:20:20)

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
                \time 4/4
                s1 * 1
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
                \time 4/4
                s1 * 1
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 3/8
                s1 * 15/2
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
                s1 * 9/8
            }
            {
                \time 3/4
                s1 * 3/4
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 33/4
            }
            {
                \time 3/4
                s1 * 3/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 3/8
                s1 * 9/8
            }
            {
                \time 3/4
                s1 * 3/2
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
        }
        \tag #'perc
        \context PerformerStaff = "PerformerStaff" <<
            \context TabVoice = "FingeringVoice" {
                \set minimumFret = #4
                {
                    % [FingeringVoice] Measure 1
                    {
                        b,,4
                        cs,4
                        b,,4
                        b,4
                    }
                    % [FingeringVoice] Measure 2
                    {
                        b,4 \repeatTie
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
                    % [FingeringVoice] Measure 3
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        r8
                        b,,4
                        cs,4
                        b,,4
                    }
                }
                {
                    % [FingeringVoice] Measure 4
                    {
                        R1 * 3/2
                    }
                    % [FingeringVoice] Measure 8
                    {
                        R1 * 1
                    }
                }
                {
                    % [FingeringVoice] Measure 9
                    {
                        b,4
                        cs,8
                    }
                    % [FingeringVoice] Measure 10
                    \times 4/5 {
                        cs,8 \repeatTie [
                        b,,8 ]
                        b,,4. \repeatTie
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
                }
                {
                    % [FingeringVoice] Measure 11
                    {
                        R1 * 15/2
                    }
                    % [FingeringVoice] Measure 31
                    {
                        R1 * 3/4
                    }
                }
                {
                    % [FingeringVoice] Measure 32
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        gs,4
                        cs,8
                        cs,4 \repeatTie
                        cs,8 \repeatTie [
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 33
                    {
                        b,,8 \repeatTie
                        r4
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 34
                    {
                        R1 * 9/8
                    }
                    % [FingeringVoice] Measure 37
                    {
                        R1 * 3/4
                    }
                    % [FingeringVoice] Measure 38
                    {
                        r8
                    }
                }
                {
                    {
                        cs,8
                        cs,4 \repeatTie
                    }
                    % [FingeringVoice] Measure 39
                    \times 2/3 {
                        cs,8 \repeatTie [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                    % [FingeringVoice] Measure 40
                    {
                        f,4. \repeatTie
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 41
                    {
                        R1 * 33/4
                    }
                    % [FingeringVoice] Measure 63
                    {
                        R1 * 3/4
                    }
                    % [FingeringVoice] Measure 64
                    {
                        r8
                    }
                }
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9 {
                        b,,4
                        r8 [
                        r8 ]
                        f,4
                        cs,4
                        b,,8
                    }
                    % [FingeringVoice] Measure 65
                    {
                        b,,8 \repeatTie
                        f,4
                    }
                    % [FingeringVoice] Measure 66
                    {
                        f,4 \repeatTie
                        cs,4
                        r4
                        b,,4
                    }
                }
                {
                    % [FingeringVoice] Measure 67
                    {
                        R1 * 9/8
                    }
                    % [FingeringVoice] Measure 70
                    {
                        R1 * 3/4
                    }
                    % [FingeringVoice] Measure 71
                    {
                        r4.
                    }
                }
                {
                    {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        cs,8 ]
                    }
                    % [FingeringVoice] Measure 72
                    {
                        cs,8 \repeatTie
                        b,,4
                        f,4
                    }
                    % [FingeringVoice] Measure 73
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5 {
                        f,4 \repeatTie
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 \repeatTie
                        \set stemLeftBeamCount = 1
                        r8 ]
                        \bar "|."
                    }
                }
            }
        >>
    >>
}