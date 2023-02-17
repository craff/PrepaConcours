#!/usr/bin/bash

export FILTER=$(pwd)/links.lua

echo $FILTER

find . -name \*.md -exec sh -c 'pandoc -f markdown --to=html --lua-filter $FILTER -o $(basename {} .md).html {}' \;
