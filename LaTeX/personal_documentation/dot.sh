#!/bin/sh
printf \\033c;
vim shyam.dot;
dot -Tsvg shyam.dot -o shyam.svg;
inkscape -z -D --file=shyam.svg --export-pdf=dot.pdf;
