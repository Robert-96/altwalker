#!/bin/sh -l

ALTWALKER_VERSION=$1

echo "Installing AltWalker..."

pip install --upgrade setuptools wheel
pip install altwalker==$ALTWALKER_VERSION

echo "AltWalker is installed."
