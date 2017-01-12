# -*- coding: utf-8 -*-
import abjad
import consort
import harb
from abjad.tools import indicatortools

segment_maker = harb.tools.HarbSegmentMaker(
    desired_duration_in_seconds=180,
    discard_final_silence=True,
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 48),
    )

segment_maker.add_setting(
    timespan_maker=harb.materials.deep_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 1, 1, 1, 1),
        parts=(0, 2, 4),
        ),
    finger=harb.materials.deep_pure_fingering,
    )
