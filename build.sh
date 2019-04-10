#!/bin/bash
rm *.log
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
makeglossaries main.tex
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
biber main.tex
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
sh clean.sh

