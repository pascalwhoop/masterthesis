#!/bin/bash
echo "Watching file tree for changed files. Running tests when it occurs"
pkill pdflatex
pkill latexmk
./clean_tex.sh
makepdf() {
    cd src/
    ./compile.sh
    cd ../
}

#zathura src/main.pdf &

inotifywait -rm --exclude "aux|bib~|tex~|toc|log|bbl|blg|fdb_latexmk|fls|glo|ist|out|pdf|swp|git\/" -e modify ./src | while read change; do
    makepdf 
    echo "change detected"
    echo $change
done

