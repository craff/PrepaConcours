#!/usr/bin/bash

find . -name \*.html -and -not -name index.html -exec rm {} \;
