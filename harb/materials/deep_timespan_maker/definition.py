# -*- coding: utf-8 -*-
import abjad
import consort

deep_timespan_maker = consort.TaleaTimespanMaker(
    playing_talea=abjad.rhythmmakertools.Talea(
        counts=(8, 5, 5, 3),
        denominator=8,
        ),
    playing_groupings=(3, 2, 3),
    silence_talea=abjad.rhythmmakertools.Talea(
        counts=(10, 8, 8, 4, 2),
        denominator=8,
        ),
    )
