# -*- coding: utf-8 -*-
import abjad
import consort

deep_pure_fingering = consort.MusicSpecifier(
    rhythm_maker=abjad.rhythmmakertools.TaleaRhythmMaker(
        extra_counts_per_division=[0, 0, 1, 0, 2],
        talea=abjad.rhythmmakertools.Talea(
            counts=[1, 1, 1, 2, 1, -1],
            denominator=4,
            ),
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        pitch_specifier=consort.PitchSpecifier(
            pitch_segments=(
                "b,, cs, b,, b, cs,",
                "b,, cs, b,, gs, cs,",
                "b,, f, cs,",
                ),
            ratio=(1, 1, 2),
            ),
        ),
    )
