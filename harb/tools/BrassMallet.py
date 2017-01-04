# -*- coding: utf-8 -*-
from abjad.tools.spannertools.Spanner import Spanner

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
        pass

    def _get_lilypond_format_bundle(self, leaf):
        pass
