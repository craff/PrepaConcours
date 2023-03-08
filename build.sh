#!/usr/bin/bash

export FILTER=$(pwd)/filters.lua
export STYLE=$(pwd)/style.txt
export INPUT="markdown+grid_tables"
export OPTIONS="--pdf-engine=xelatex --mathjax --lua-filter $FILTER -f $INPUT"

find . -name \*.md -exec sh -c 'echo {}; cd $(dirname {}); pandoc $OPTIONS --to=html  -o $(basename {} .md).html $STYLE $(basename {})' \;

#find . -name \*.md -exec sh -c 'echo {}; cd $(dirname {}); pandoc --verbose $OPTIONS --to=pdf - -o $(basename {} .md).pdf $(basename {})' \;
