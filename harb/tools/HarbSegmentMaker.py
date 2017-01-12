# -*- coding: utf-8 -*-
from abjad import inspect_
from abjad.tools import abctools
from abjad.tools import lilypondfiletools
from abjad.tools import systemtools
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

    @staticmethod
    def rewrite_meters(
        demultiplexed_maquette,
        meters,
        score,
        verbose=True,
        ):
        import consort
        meter_timespans = SegmentMaker.meters_to_timespans(meters)
        cache = {}
        template = '        rewriting {}: {}'
        for context_name in sorted(demultiplexed_maquette):
            inscribed_timespans = demultiplexed_maquette[context_name]
            consort.debug('CONTEXT: {}'.format(context_name))
            context = score[context_name]
            forbid_staff_lines_spanner = context.context_name == 'Dynamics' or 'TabVoice' #added
            count = 0
            for inscribed_timespan in inscribed_timespans:
                consort.debug('\t{!s} {!s} {!r}'.format(
                    inscribed_timespan.start_offset,
                    inscribed_timespan.stop_offset,
                    inscribed_timespan.music,
                    ))
                if not SegmentMaker.can_rewrite_meter(inscribed_timespan):
                    continue
                with systemtools.ForbidUpdate(
                    inscribed_timespan.music,
                    update_on_exit=True,
                    ):
                    for i, container in enumerate(inscribed_timespan.music):
                        container_timespan = inspect_(container).get_timespan()
                        container_timespan = container_timespan.translate(
                            inscribed_timespan.start_offset)
                        if i == 0:
                            assert container_timespan.start_offset == \
                                inscribed_timespan.start_offset
                        if i == (len(inscribed_timespan.music) - 1):
                            assert container_timespan.stop_offset == \
                                inscribed_timespan.stop_offset
                        if container_timespan in cache:
                            intersecting_meters = cache[container_timespan]
                        else:
                            intersecting_meters = \
                                meter_timespans.find_timespans_intersecting_timespan(
                                    container_timespan)
                            cache[container_timespan] = intersecting_meters
                        shifted_intersecting_meters = [
                            _.translate(-1 * inscribed_timespan.start_offset)
                            for _ in intersecting_meters
                            ]
                        consort.debug('\t\t{!r} {!r}'.format(
                            container,
                            container_timespan,
                            ))
                        for intersecting_meter in intersecting_meters:
                            consort.debug('\t\t\t' + repr(intersecting_meter))
                        SegmentMaker.rewrite_container_meter(
                            container,
                            shifted_intersecting_meters,
                            forbid_staff_lines_spanner,
                            )
                        SegmentMaker.cleanup_logical_ties(container)
                        count += 1
            if verbose:
                message = template.format(context_name, count)
                print(message)
