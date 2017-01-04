# -*- coding: utf-8 -*-
from abjad import attach
from abjad import set_
from abjad import indicatortools
from abjad import instrumenttools
from abjad import scoretools
from consort import ScoreTemplate


class HarbScoreTemplate(ScoreTemplate):

    def __call__(self):
        fingering_voice = scoretools.Voice(
            context_name='TabVoice',
            name='FingeringVoice',
            )
        spring_voice = scoretools.Voice(
            context_name='TabVoice',
            name='SpringVoice',
            )
        performer_staff = scoretools.Staff(
            [
                fingering_voice,
                spring_voice,
                ],
            context_name='TabStaff',
            is_simultaneous=True,
            name='PerformerStaff',
            )
        perc_tag = indicatortools.LilyPondCommand(
            name="tag #'perc",
            format_slot='before',
            )
        attach(perc_tag, performer_staff)
        string_tunings = indicatortools.LilyPondCommand("set Staff.stringTunings = \\stringTuning <b,,, ds,, cs, d,>")
        attach(string_tunings, performer_staff)

        time_signature_context = scoretools.Context(
            context_name='TimeSignatureContext',
            name='Time Signature Context',
            )
        time_tag = indicatortools.LilyPondCommand(
            name="tag #'time",
            format_slot='before',
            )
        attach(time_tag, time_signature_context)

        score = scoretools.Score(
            [
                time_signature_context,
                performer_staff,
                ],
            )
        return score
