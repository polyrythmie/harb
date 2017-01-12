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
        # spring_voice = scoretools.Voice(
        #     context_name='SpringVoice',
        #     name='SpringVoice',
        #     )
        # brass_voice = scoretools.Voice(
        #     context_name='BrassVoice',
        #     name='BrassVoice',
        #     )
        performer_staff = scoretools.Staff(
            [
                fingering_voice,
                # spring_voice,
                # brass_voice,
                ],
            context_name='PerformerStaff',
            is_simultaneous=True,
            name='PerformerStaff',
            )
        perc_tag = indicatortools.LilyPondCommand(
            name="tag #'perc",
            format_slot='before',
            )
        attach(perc_tag, performer_staff)
        attach(
            indicatortools.Clef('moderntab'),
            performer_staff,
            )
        minimumFret = indicatortools.LilyPondCommand("set minimumFret = #4")
        attach(minimumFret, fingering_voice)

        self._context_name_abbreviations['finger'] = fingering_voice.name
        # self._context_name_abbreviations['spring'] = spring_voice.name
        # self._context_name_abbreviations['brass'] = brass_voice.name

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
