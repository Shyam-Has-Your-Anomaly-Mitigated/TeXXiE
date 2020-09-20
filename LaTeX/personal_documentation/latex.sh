#!/bin/bash
printf \\ec;
#emacs "$1".tex;
pdflatex "$1".tex;
pdflatex "$1".tex; #TIC TOC, TEX TOC
rm *.aux *.log *.out *.toc;
