# -*- coding: utf-8 -*-
from abjad.tools import abctools
from abjad.tools import lilypondfiletools
from consort.tools import SegmentMaker
from harb.tools import HarbScoreTemplate


class HarbSegmentMaker(SegmentMaker):

    ### INITIALIZER ###

    def __init__(
        self,
        annotate_colors=None,
        annotate_phrasing=None,
        annotate_timespans=None,
        desired_duration_in_seconds=None,
        discard_final_silence=None,
        maximum_meter_run_length=None,
        name=None,
        omit_stylesheets=None,
        permitted_time_signatures=None,
        repeat=None,
        score_template=None,
        settings=None,
        tempo=None,
        timespan_quantization=None,
        ):
        permitted_time_signatures = (
            permitted_time_signatures or
            (
                (2, 4),
                (3, 4),
                (3, 8),
                (5, 8),
                )
            )
        score_template = (
            score_template or
            HarbScoreTemplate()
            )
        timespan_quantization = (
            timespan_quantization or
            (1, 8)
            )
        SegmentMaker.__init__(
            self,
            annotate_colors=annotate_colors,
            annotate_phrasing=annotate_phrasing,
            annotate_timespans=annotate_timespans,
            desired_duration_in_seconds=desired_duration_in_seconds,
            discard_final_silence=discard_final_silence,
            maximum_meter_run_length=maximum_meter_run_length,
            name=name,
            omit_stylesheets=omit_stylesheets,
            permitted_time_signatures=permitted_time_signatures,
            repeat=repeat,
            score_template=score_template,
            settings=settings,
            tempo=tempo,
            timespan_quantization=timespan_quantization,
            )

    def configure_score(self):
        # Score postprocessing here
        SegmentMaker.configure_score(self)


    ### PUBLIC PROPERTIES ###

    @property
    def score_package_name(self):
        return 'harb'
