#!/bin/bash

if [ -f ~/Downloads/*.bib ]; then
    cat ~/Downloads/*.bib >> ./src/bibliography.bib
    rm -f ~/Downloads/*.bib
    echo "" >> ./src/bibliography.bib
fi
if [ -f ~/Downloads/*.bibtex ]; then
    cat ~/Downloads/*.bibtex >> ./src/bibliography.bib
    rm -f ~/Downloads/*.bibtex
    echo "" >> ./src/bibliography.bib
fi
