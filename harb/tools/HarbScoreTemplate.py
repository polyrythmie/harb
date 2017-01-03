# -*- coding: utf-8 -*-
from abjad import attach
from abjad import set_
from abjad import indicatortools
from abjad import instrumenttools
from abjad import scoretools
from consort import ScoreTemplate


class HarbScoreTemplate(ScoreTemplate):

    def __call__(self):
        performer_group = scoretools.StaffGroup(
            context_name='PerformerStaff',
            name='Percussion Performer Group',
            )
        performer_group.is_simultaneous = True
        perc_tag = indicatortools.LilyPondCommand(
            name="tag #'perc",
            format_slot='before',
            )
        attach(perc_tag, performer_group)
        instrument = instrumenttools.Percussion()
        attach(
            instrument,
            performer_group,
            scope='PerformerGroup',
            is_annotation=True,
            )
        string_a_voice = scoretools.Voice(
            name='Percussion String A Voice',
            )
        string_a_staff = scoretools.Staff(
            [string_a_voice],
            context_name='PercussionStringAStaff',
            name='Percussion String A Staff',
            )
        string_b_voice = scoretools.Voice(
            name='Percussion String B Voice',
            )
        string_b_staff = scoretools.Staff(
            [string_b_voice],
            context_name='PercussionStringBStaff',
            name='Percussion String B Staff',
            )
        string_c_voice = scoretools.Voice(
            name='Percussion String C Voice',
            )
        string_c_staff = scoretools.Staff(
            [string_c_voice],
            context_name='PercussionStringCStaff',
            name='Percussion String C Staff',
            )
        string_d_voice = scoretools.Voice(
            name='Percussion String D Voice',
            )
        string_d_staff = scoretools.Staff(
            [string_d_voice],
            context_name='PercussionStringDStaff',
            name='Percussion String D Staff',
            )
        performer_group.extend((
            string_a_staff,
            string_b_staff,
            string_c_staff,
            string_d_staff,
            ))
        attach(indicatortools.Clef('bass'), string_a_voice)
        attach(indicatortools.Clef('bass'), string_b_voice)
        attach(indicatortools.Clef('bass'), string_c_voice)
        attach(indicatortools.Clef('bass'), string_d_voice)
        self._context_name_abbreviations.update(
            string_a=string_a_voice.name,
            string_b=string_b_voice.name,
            string_c=string_c_voice.name,
            string_d=string_d_voice.name,
            )

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
                performer_group,
                ],
            )
        return score
