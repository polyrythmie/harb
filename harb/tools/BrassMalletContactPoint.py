# -*- coding: utf-8 -*-
from abjad.tools import markuptools
from abjad.tools.abctools import AbjadValueObject

class BrassMalletContactPoint(AbjadValueObject):
    r'''Brass Mallet Contact Point.
    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_contact_point',
        '_default_scope',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        contact_point,
        ):
        assert 1 <= contact_point <= 24 # number of bass frets is variable.
        self._contact_point = contact_point
        self._default_scope = None

    ### PUBLIC PROPERTIES

    @property
    def contact_point(self):
        return self._contact_point

    @property
    def markup(self):
        markup = markuptools.Markup(self.contact_point)
        if len(str(self.contact_point)) == 1:
            markup = markup.fontsize(-2)
            markup = markup.circle()
            markup = markup.override(('circle-padding', 0.4))
        else:
            markup = markup.fontsize(-3)
            markup = markup.circle()
        return markup
