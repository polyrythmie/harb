% package "abjad" @ f44f42d [master] (2016-11-18 15:44:14)
% package "ide" @ 0e44714 [master] (2016-12-11 13:26:38)
% package "consort" @ 75ef8a8 [master] (2016-12-01 23:41:14)
% package "harb" @ 3322574 [develop] (2017-01-02 23:11:49)

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
        \context PerformerGroup = "Performer Group" <<
            \context StringAStaff = "String A Staff" {
                \set Staff.instrumentName = \markup { I }
                \set Staff.shortInstrumentName = \markup { I }
                \context Voice = "String A Voice" {
                    \clef "bass"
                    {
                        % [String A Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \bar "|."
                        }
                    }
                }
            }
            \context StringBStaff = "String B Staff" {
                \set Staff.instrumentName = \markup { II }
                \set Staff.shortInstrumentName = \markup { II }
                \context Voice = "String B Voice" {
                    \clef "bass"
                    {
                        % [String B Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \bar "|."
                        }
                    }
                }
            }
            \context StringCStaff = "String C Staff" {
                \set Staff.instrumentName = \markup { III }
                \set Staff.shortInstrumentName = \markup { III }
                \context Voice = "String C Voice" {
                    \clef "bass"
                    {
                        % [String C Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \bar "|."
                        }
                    }
                }
            }
            \context StringDStaff = "String D Staff" {
                \set Staff.instrumentName = \markup { IV }
                \set Staff.shortInstrumentName = \markup { IV }
                \context Voice = "String D Voice" {
                    \clef "bass"
                    {
                        % [String D Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \bar "|."
                        }
                    }
                }
            }
        >>
    >>
}