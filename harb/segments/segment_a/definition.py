# -*- coding: utf-8 -*-
import abjad
import consort
import harb
from abjad.tools import indicatortools

segment_maker = harb.tools.HarbSegmentMaker(
    desired_duration_in_seconds=60,
    discard_final_silence=True,
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 48),
    )

pitches = consort.PitchSpecifier(
    pitch_segments=(
        "b,, cs, b,",
        "b,, cs, gs,",
        "b,, f, cs, b,,",
        "cs, f,",
        ),
    ratio=(1, 2, 3, 1),
    )

segment_maker.add_setting(
    timespan_maker=consort.TaleaTimespanMaker(
        playing_talea=abjad.rhythmmakertools.Talea(
            counts=(2, 3),
            denominator=4,
            ),
        silence_talea=abjad.rhythmmakertools.Talea(
            counts=(1, 2),
            denominator=16,
            ),
        ),
    finger=consort.MusicSpecifier(
        rhythm_maker=abjad.rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=(4, 2, 8),
            duration_spelling_specifier=abjad.rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbid_meter_rewriting=False,
                ),
            ),
        pitch_handler=consort.AbsolutePitchHandler(
            pitch_specifier=pitches,
            ),
        ),
    )
