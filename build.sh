#!/usr/bin/bash

export FILTER=$(pwd)/links.lua

echo $FILTER

find . -name \*.md -exec sh -c 'echo {}; pandoc -f markdown --to=html --lua-filter $FILTER -o $(basename {} .md).html {}' \;
