#!/usr/bin/env python
import setuptools


if __name__ == '__main__':
    setuptools.setup(
        author='Full Name',
        author_email='first.last@domain.com',
        install_requires = (
            'abjad',
            'consort',
            ),
        name='harb',
        packages=(
            'harb',
            ),
        url='https://github.com/username/harb',
        version='0.1',
        zip_safe=False,
        )
