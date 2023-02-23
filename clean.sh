#!/usr/bin/bash

find . -name \*.html -and -not -name index.html -exec rm {} \;
find . -name \*.svg -and -not -name by-nc-nd.svg -exec rm {} \;
