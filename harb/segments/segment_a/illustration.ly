% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 0455755 [develop] (2017-01-16 18:50:38)

\version "2.18.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    \new Score \with {
        currentBarNumber = #1
    } <<
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
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 3/4
            }
            {
                \time 8/8
                s1 * 3
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
                \time 8/8
                s1 * 1
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 4/8
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 8/8
                s1 * 1
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 8/8
                s1 * 1
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 5/8
                s1 * 5/4
            }
        }
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
                        R1 * 7/8
                    }
                    % [FingeringVoice] Measure 5
                    {
                        R1 * 3/4
                    }
                    % [FingeringVoice] Measure 7
                    {
                        R1 * 3
                    }
                    % [FingeringVoice] Measure 10
                    {
                        R1 * 3/8
                    }
                }
                {
                    % [FingeringVoice] Measure 11
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
                    % [FingeringVoice] Measure 12
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
                        r8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        gs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        b,,8 ]
                        cs,4
                    }
                }
                {
                    % [FingeringVoice] Measure 13
                    {
                        R1 * 1
                    }
                }
                {
                    % [FingeringVoice] Measure 14
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/4 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                }
                {
                    % [FingeringVoice] Measure 15
                    {
                        R1 * 7/8
                    }
                    % [FingeringVoice] Measure 16
                    {
                        R1 * 1/2
                    }
                    % [FingeringVoice] Measure 17
                    {
                        R1 * 3/8
                    }
                    % [FingeringVoice] Measure 18
                    {
                        R1 * 1
                    }
                    % [FingeringVoice] Measure 19
                    {
                        R1 * 7/8
                    }
                    % [FingeringVoice] Measure 20
                    {
                        R1 * 5/8
                    }
                    % [FingeringVoice] Measure 21
                    {
                        r4
                    }
                }
                {
                    {
                        f,8 ~ [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        b,,8 ]
                    }
                    % [FingeringVoice] Measure 22
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8 ~
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        \set stemLeftBeamCount = 1
                        f,8 ]
                    }
                }
                {
                    % [FingeringVoice] Measure 23
                    {
                        r8
                    }
                }
                {
                    {
                        cs,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        f,8 ]
                        cs,4
                        b,,8
                    }
                }
                {
                    {
                        r8
                    }
                    % [FingeringVoice] Measure 24
                    {
                        R1 * 3/8
                    }
                    % [FingeringVoice] Measure 25
                    {
                        R1 * 5/8
                    }
                }
                {
                    % [FingeringVoice] Measure 26
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7 {
                        f,8 [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs,8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        b,,8
                        f,8 ]
                        cs,4
                        \bar "|."
                    }
                }
            }
            \context BrassVoice = "BrassVoice" {
                {
                    % [BrassVoice] Measure 1
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'1 \glissando
                    }
                    % [BrassVoice] Measure 2
                    {
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'4. ~
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'8 \glissando [
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                    % [BrassVoice] Measure 3
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4. ~ \glissando
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 \glissando [
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                }
                {
                    % [BrassVoice] Measure 4
                    {
                        R1 * 7/8
                    }
                    % [BrassVoice] Measure 5
                    {
                        R1 * 3/8
                    }
                }
                {
                    % [BrassVoice] Measure 6
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4. \glissando
                    }
                    % [BrassVoice] Measure 7
                    {
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'1
                    }
                }
                {
                    % [BrassVoice] Measure 8
                    {
                        R1 * 1
                    }
                }
                {
                    % [BrassVoice] Measure 9
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        c'2
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'8 \glissando
                    }
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 ~ \glissando
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'4
                    }
                    % [BrassVoice] Measure 10
                    {
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'4 \glissando
                    }
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        c'8
                    }
                    % [BrassVoice] Measure 11
                    {
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4
                    }
                }
                {
                    {
                        r8
                        r4
                    }
                    % [BrassVoice] Measure 12
                    {
                        R1 * 5/8
                    }
                }
                {
                    % [BrassVoice] Measure 13
                    {
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'1 \glissando
                    }
                    % [BrassVoice] Measure 14
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        c'4.
                    }
                    % [BrassVoice] Measure 15
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4 \glissando
                    }
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 ~ \glissando
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'4 ~
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'8 \glissando [
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                }
                {
                    % [BrassVoice] Measure 16
                    {
                        R1 * 1/2
                    }
                }
                {
                    % [BrassVoice] Measure 17
                    {
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'4.
                    }
                    % [BrassVoice] Measure 18
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'1
                    }
                }
                {
                    % [BrassVoice] Measure 19
                    {
                        r4
                    }
                }
                {
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 ~ \glissando
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'4 ~
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'8 \glissando [
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                    % [BrassVoice] Measure 20
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4. ~ \glissando
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 \glissando [
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                    % [BrassVoice] Measure 21
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'4.
                    }
                }
                {
                    {
                        r2
                    }
                    % [BrassVoice] Measure 22
                    {
                        R1 * 3/8
                    }
                    % [BrassVoice] Measure 23
                    {
                        r4
                        r8
                    }
                }
                {
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'8 ~ \glissando
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'4 ~ \glissando
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        c'8 [
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ] \glissando
                    }
                    % [BrassVoice] Measure 24
                    {
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        c'4.
                    }
                    % [BrassVoice] Measure 25
                    {
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        c'4. ~ \glissando
                        \once \override Glissando.bound-details.left.Y = 5
                        \once \override Glissando.bound-details.right.Y = 5
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        5
                            }
                        c'8 \glissando [
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        10
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                    }
                    % [BrassVoice] Measure 26
                    {
                        \once \override Glissando.bound-details.left.Y = 0
                        \once \override Glissando.bound-details.right.Y = 0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        15
                            }
                        c'4. ~ \glissando
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-4
                                        21
                            }
                        c'8 [
                        \once \override NoteHead.Y-offset = 5
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \whiteout
                                \circle
                                    \fontsize
                                        #-3
                                        8
                            }
                        \set stemLeftBeamCount = 1
                        c'8 ]
                        \bar "|."
                    }
                }
            }
        >>
    >>
}