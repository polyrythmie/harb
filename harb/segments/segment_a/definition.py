# -*- coding: utf-8 -*-
import harb
from abjad.tools import indicatortools

segment_maker = harb.tools.HarbSegmentMaker(
    desired_duration_in_seconds=60,
    discard_final_silence=True,
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 60),
    )
