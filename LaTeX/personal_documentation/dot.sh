#!/bin/sh
printf \\033c;
#emacs "$1".dot;
dot -Tsvg "$1".dot -o "$1".svg;
inkscape -z -D --file="$1".svg --export-pdf="$1".pdf;
