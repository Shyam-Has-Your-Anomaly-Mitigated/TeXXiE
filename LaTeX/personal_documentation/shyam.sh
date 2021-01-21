#!/bin/bash
printf \\ec;
emacs shyam.tex;
./dot.sh bit;
./dot.sh mit;
./latex.sh shyam;
rm bit.svg bit.pdf mit.svg mit.pdf;
