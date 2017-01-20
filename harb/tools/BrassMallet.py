# -*- coding: utf-8 -*-
from abjad import inspect_
from abjad.tools.spannertools.Spanner import Spanner
from abjad.tools import lilypondnametools
from abjad.tools import schemetools
from abjad.tools import scoretools
from abjad.tools import markuptools #unnecessary
from harb.tools.BrassMalletContactPoint import BrassMalletContactPoint

class BrassMallet(Spanner):
    r'''Brass mallet spanner.

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### INITIALIZER ###

    def __init__(self, overrides=None):
        Spanner.__init__(self, overrides=overrides)

    ### PRIVATE METHODS ###

    def _get_annotations(self, leaf):
        inspector = inspect_(leaf)
        brass_mallet_contact_point = None
        prototype = BrassMalletContactPoint
        if inspector.has_indicator(prototype):
            brass_mallet_contact_point = inspector.get_indicator(prototype)
        return brass_mallet_contact_point

    def _get_lilypond_format_bundle(self, leaf):
        lilypond_format_bundle = self._get_basic_lilypond_format_bundle(leaf)
        brass_mallet_contact_point = self._get_annotations(leaf)
        if brass_mallet_contact_point is None:
            return lilypond_format_bundle
        self._make_brass_mallet_contact_point_overrides(
            brass_mallet_contact_point=brass_mallet_contact_point,
            lilypond_format_bundle=lilypond_format_bundle,
            )
        if self._gliss_to_next_brass_mallet_contact_point(leaf):
            self._make_brass_mallet_glissando_overrides(
                brass_mallet_contact_point=brass_mallet_contact_point,
                lilypond_format_bundle=lilypond_format_bundle,
                )
        return lilypond_format_bundle

    def _make_brass_mallet_contact_point_overrides(
        self,
        brass_mallet_contact_point,
        lilypond_format_bundle=None,
        ):
        if brass_mallet_contact_point.string_space != 2:
            y_offset = brass_mallet_contact_point.string_space * 5 - 10
            override_ = lilypondnametools.LilyPondGrobOverride(
                grob_name='NoteHead',
                is_once=True,
                property_path='Y-offset',
                value=y_offset,
                )
            string = override_.override_string
            lilypond_format_bundle.grob_overrides.append(string)
        override_ = lilypondnametools.LilyPondGrobOverride(
            grob_name='NoteHead',
            is_once=True,
            property_path='stencil',
            value=schemetools.Scheme('ly:text-interface::print'),
            )
        string = override_.override_string
        lilypond_format_bundle.grob_overrides.append(string)
        override_ = lilypondnametools.LilyPondGrobOverride(
            grob_name='NoteHead',
            is_once=True,
            property_path='text',
            value=brass_mallet_contact_point.markup,
            )
        string = override_.override_string
        lilypond_format_bundle.grob_overrides.append(string)

    def _make_brass_mallet_glissando_overrides(
        self,
        brass_mallet_contact_point,
        lilypond_format_bundle=None,
        ):
        value = brass_mallet_contact_point.string_space * 5 - 10
        override_ = lilypondnametools.LilyPondGrobOverride(
            grob_name='Glissando',
            is_once=True,
            property_path='bound-details.left.Y',
            value=value,
            )
        string = override_.override_string
        lilypond_format_bundle.grob_overrides.append(string)
        override_ = lilypondnametools.LilyPondGrobOverride(
            grob_name='Glissando',
            is_once=True,
            property_path='bound-details.right.Y',
            value=value,
            )
        string = override_.override_string
        lilypond_format_bundle.grob_overrides.append(string)
        lilypond_format_bundle.right.spanner_starts.append(r'\glissando')

    def _gliss_to_next_brass_mallet_contact_point(self, leaf):
        if self._is_my_last_leaf(leaf):
            return False
        prototype = (
            scoretools.MultimeasureRest,
            scoretools.Rest,
            scoretools.Skip,
            )
        next_leaf = inspect_(leaf).get_leaf(1)
        if next_leaf is None or isinstance(next_leaf, prototype):
            return False
        next_contact_point = inspect_(next_leaf).get_indicator(BrassMalletContactPoint)
        if next_contact_point is None:
            return False
        current_contact_point = inspect_(leaf).get_indicator(BrassMalletContactPoint)
        if next_contact_point.string_space == current_contact_point.string_space:
            return True
        return False
