#! /bin/bash

# This bash script will build the book, including all 
# references, indexes, and nomenclature,
# on MacOSX.
# This script does multiple passes to capture all
# dependencies.

# Ensure a fresh build by deleting all auxiliary files
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.aux
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.bbl
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.blg
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.idx
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.ilg
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.ind
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.log
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.synctex.gz
rm -f Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.toc

# We'll use the pdflatex engine.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Make the table of contents

# Make the index
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Make the nomenclature section
makeindex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo -o Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls

# Make the bibliobraphy
bibtex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.aux

# Run again to include all the index, toc, and nomenclature information
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Now open the resulting .pdf file.
open -a Skim Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf