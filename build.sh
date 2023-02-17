#!/usr/bin/bash

export FILTER=$(pwd)/filters.lua

echo $FILTER

find . -name \*.md -exec sh -c 'echo {}; cd $(dirname {}); pandoc --mathml -f markdown --to=html --lua-filter $FILTER -o $(basename {} .md).html $(basename {})' \;

if [ ! -f index.html ]; then ln -s README.html index.html; fi
