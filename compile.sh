#!/bin/bash
cd src
pdflatex -draftmode -shell-escape main.tex
bibtex main # or biber
makeindex main.idx # if needed
#makeindex -s style.gls ...# for glossary if needed
pdflatex -draftmode -shell-escape main.tex
pdflatex -shell-escape  main.tex
#latexmk -shell-escape -bibtex main.tex

cd ../
