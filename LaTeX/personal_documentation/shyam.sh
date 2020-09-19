#!/bin/bash
printf \\ec;
emacs htm.sh;
./dot.sh;
emacs shyam.tex;
./bash-latex.sh -f=shyam.tex;
rm shyam.svg dot.pdf .log;
./htm.sh;
# EDIT: added `./dot.sh`, and the `rm`s; changed "$1".tex to shyam.tex; renamed from `./latex.sh` to `./shyam.sh`
