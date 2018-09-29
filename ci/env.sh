#!/bin/bash
set -ex

if [[ $TRAVIS_OS_NAME == 'linux' ]]; then
    echo "Nothing to do on Linux"
    exit 0;
fi


if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
    echo "Use praekeltorg's setup-pyenv."
    export PYENV_RELEASE="v1.2.7"
    wget https://raw.githubusercontent.com/jgehrcke/travis-pyenv/develop/setup-pyenv.sh
    source setup-pyenv.sh
fi



