# -*- coding: utf-8 -*-
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools
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
                    harb.tools.BrassMalletContactPoint(5),
                    harb.tools.BrassMalletContactPoint(10),
                    harb.tools.BrassMalletContactPoint(15),
                    harb.tools.BrassMalletContactPoint(21),
                    harb.tools.BrassMalletContactPoint(8),
                    ),
                selector=selectortools.Selector().by_leaf().flatten(),
                ),
            brass_mallet_spanner=harb.tools.BrassMallet(),
            ),
        rhythm_maker=consort.CompositeRhythmMaker(
            last=rhythmmakertools.IncisedRhythmMaker(
                incise_specifier=rhythmmakertools.InciseSpecifier(
                    prefix_counts=[0],
                    suffix_talea=[1],
                    suffix_counts=[1],
                    talea_denominator=4,
                    ),
                ),
            default=rhythmmakertools.NoteRhythmMaker(),
            ),
        ),
    )
