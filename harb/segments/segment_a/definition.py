# -*- coding: utf-8 -*-
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools
from abjad.tools import scoretools
import consort
import harb
from abjad.tools import indicatortools

segment_maker = harb.tools.HarbSegmentMaker(
    desired_duration_in_seconds=180,
    discard_final_silence=True,
    repeat=False,
    tempo=indicatortools.Tempo((1, 8), 48),
    )

segment_maker.add_setting(
    timespan_maker=harb.materials.deep_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 1, 1, 1, 1),
        parts=(0, 2, 4),
        ),
    finger=harb.materials.deep_pure_fingering,
    )

segment_maker.add_setting(
    timespan_maker=harb.materials.deep_timespan_maker,
    brass=consort.MusicSpecifier(
        attachment_handler=consort.AttachmentHandler(
            brass_contact_points=consort.AttachmentExpression(
                attachments=(
                    harb.tools.BrassMalletContactPoint(5, 3),
                    harb.tools.BrassMalletContactPoint(10, 3),
                    harb.tools.BrassMalletContactPoint(15, 2),
                    harb.tools.BrassMalletContactPoint(21, 2),
                    harb.tools.BrassMalletContactPoint(8, 3),
                    ),
                selector=selectortools.Selector().by_class(prototype=scoretools.Note, flatten=True),
                ),
            brass_mallet_spanner=harb.tools.BrassMallet(),
            ),
        rhythm_maker=consort.CompositeRhythmMaker(
            # last=rhythmmakertools.IncisedRhythmMaker(
            #     incise_specifier=rhythmmakertools.InciseSpecifier(
            #         prefix_counts=[0],
            #         suffix_talea=[1],
            #         suffix_counts=[1],
            #         talea_denominator=4,
            #         ),
            #     beam_specifier=rhythmmakertools.BeamSpecifier(
            #         beam_divisions_together=False,
            #         beam_each_division=False,
            #         ),
            #     duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            #         spell_metrically=False,
            #         ),
            #     tie_specifier=rhythmmakertools.TieSpecifier(
            #         strip_ties=True,
            #         ),
            #     ),
            default=rhythmmakertools.NoteRhythmMaker(
                beam_specifier=rhythmmakertools.BeamSpecifier(
                    beam_divisions_together=False,
                    beam_each_division=False,
                    ),
                duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                    spell_metrically=False,
                    ),
                tie_specifier=rhythmmakertools.TieSpecifier(
                    strip_ties=True,
                    ),
                ),
            ),
        ),
    )
