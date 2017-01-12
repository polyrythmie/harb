% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ e75f276 [develop] (2017-01-12 17:26:34)

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
                \tempo 8=48
                \time 8/8
                s1 * 1
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 33/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 39/8
            }
            {
                \time 8/8
                s1 * 1
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
                \time 8/8
                s1 * 1
            }
        }
        \tag #'perc
        \context PerformerStaff = "PerformerStaff" <<
            \clef "moderntab"
            \context TabVoice = "FingeringVoice" {
                \set minimumFret = #4
                {
                    % [FingeringVoice] Measure 1
                    {
                        b,,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 2
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,8
                        \set stemLeftBeamCount = 1
                        cs,8 ]
                    }
                    % [FingeringVoice] Measure 3
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
                        r8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        b,,8 ]
                        b,4
                    }
                }
                {
                    % [FingeringVoice] Measure 4
                    {
                        R1 * 33/8
                    }
                    % [FingeringVoice] Measure 15
                    {
                        R1 * 7/8
                    }
                }
                {
                    % [FingeringVoice] Measure 16
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 17
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
                        r8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        gs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        cs,8 ]
                        b,,4
                    }
                }
                {
                    % [FingeringVoice] Measure 18
                    {
                        R1 * 39/8
                    }
                    % [FingeringVoice] Measure 31
                    {
                        R1 * 1
                    }
                }
                {
                    % [FingeringVoice] Measure 32
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                    % [FingeringVoice] Measure 33
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        f,8 ~ ]
                    }
                    % [FingeringVoice] Measure 34
                    \times 4/5 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8
                        cs,8 ]
                        b,,4
                        f,8 [
                        \set stemLeftBeamCount = 1
                        r8 ]
                        \bar "|."
                    }
                }
            }
        >>
    >>
}