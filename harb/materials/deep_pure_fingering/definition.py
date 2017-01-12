# -*- coding: utf-8 -*-
import abjad
import consort

deep_pure_fingering = consort.MusicSpecifier(
    rhythm_maker=abjad.rhythmmakertools.TaleaRhythmMaker(
        beam_specifier=abjad.rhythmmakertools.BeamSpecifier(
            beam_each_division=True,
            beam_divisions_together=True,
            beam_rests=True,
            ),
        duration_spelling_specifier=abjad.rhythmmakertools.DurationSpellingSpecifier(
            forbidden_written_duration=abjad.durationtools.Duration(1, 4),
            ),
        extra_counts_per_division=[0, 0, 1, 0, 2],
        talea=abjad.rhythmmakertools.Talea(
            counts=[1, 1, 1, 2, 1, -1],
            denominator=8,
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
