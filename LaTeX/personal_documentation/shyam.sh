#!/bin/bash
printf \\ec;
./dot.sh
vim shyam.tex;
./bash-latex.sh -f=shyam.tex;
rm shyam.svg  dot.pdf .log;
# EDIT: added `./dot.sh`, and the `rm`s; changed "$1".tex to shyam.tex; renamed from `./latex.sh` to `./shyam.sh`
