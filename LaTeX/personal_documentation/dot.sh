#!/bin/sh
printf \\033c;
emacs shyam.dot;
dot -Tsvg shyam.dot -o shyam.svg;
inkscape -z -D --file=shyam.svg --export-pdf=dot.pdf;
