#!/bin/bash
printf \\ec;
vim htm.sh;
./dot.sh;
vim shyam.tex;
./bash-latex.sh -f=shyam.tex;
rm shyam.svg  dot.pdf .log;
./htm.sh;
# EDIT: added `./dot.sh`, and the `rm`s; changed "$1".tex to shyam.tex; renamed from `./latex.sh` to `./shyam.sh`
