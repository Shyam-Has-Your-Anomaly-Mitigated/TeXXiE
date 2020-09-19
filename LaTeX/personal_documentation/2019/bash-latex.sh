#!/bin/bash
printf \\ec;

:<<DOCS
PDF --by-default

USAGE:
    bash-latex.sh -f=file.tex
    bash-latex.sh --png -f=file.tex

https://en.wikipedia.org/wiki/TeX
https://en.wikipedia.org/wiki/Donald_Knuth
    At the TUG 2010 Conference, Knuth announced an XML-based successor to TeX, titled "iTeX" (pronounced [iː˨˩˦tɛks˧˥], with a bell ringing), which would support features such as arbitrarily scaled irrational units, 3D printing, animation, and stereophonic sound.[29][30][31]
http://www.cultdeadcow.com/cowfeed/

http://detexify.kirelabs.org/classify.html
DOCS

for i in "$@"; do case $i in
    -f=*|--file=*)
    FILE="${i#*=}"
    shift # past argument=value
    ;;
    --png)
    PNG=1
    shift # past argument=value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;
    *)
            # unknown option
    ;;
esac; done;

# check .tex in $FILE
if [[ "${FILE##*.}" != "tex" ]]; then echo "ERR: INVALID FILETYPE!"; exit 1; fi;

pdflatex "$FILE";
pdflatex "$FILE"; #TIC TOC, TEX TOC
#rm "${FILE%.*}.aux" "${FILE%.*}.log" "${FILE%.*}.out";
rm *.aux *.log *.out *.toc;

if [[ $PNG == 1 ]]; then convert -flatten "${FILE%.*}.pdf" "${FILE%.*}.png"; rm "${FILE%.*}.pdf"; fi;

#pdflatex file.tex; convert -flatten file.pdf file.png; rm file.pdf file.aux file.log
#pdflatex file.tex; rm file.aux file.log

exit 0;########################################################################
# EDIT: removed...stuff... (it looked similar to what's above though...)
