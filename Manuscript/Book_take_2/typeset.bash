#! /bin/bash

# This bash script will build the book, including all 
# references, indexes, and nomenclature,
# on MacOSX.
# This script does multiple passes to capture all
# dependencies.

# Invoke the script by cd'ing into the directory that contains this file.
# Then, type "./typeset.bash"

# Ensure a fresh build by deleting all auxiliary files
rm -f *.aux
rm -f *.bbl
rm -f *.blg
rm -f *.idx
rm -f *.ilg
rm -f *.ind
rm -f *.log
rm -f *.nlo
rm -f *.nls
rm -f *.pdf
rm -f *.synctex.gz
rm -f *.toc
rm -f *.lof
rm -f *.lot

cd Part_0; cd Chapter_Introduction; rm -f *.aux; cd ..; cd ..
cd Part_1; cd Chapter_Materials;    rm -f *.aux; cd ..; cd ..
cd Part_2; cd Chapter_Energy;       rm -f *.aux; cd ..; cd ..
cd Part_2; cd Chapter_Embodied;     rm -f *.aux; cd ..; cd ..
cd Part_3; cd Chapter_Values;       rm -f *.aux; cd ..; cd ..
cd Part_3; cd Chapter_Intensity;    rm -f *.aux; cd ..; cd ..
cd Part_4; cd Chapter_Implications; rm -f *.aux; cd ..; cd ..
# Add Chapter 5 stuff here.
cd Appendix_Derivation; rm -f *.aux; cd ..
cd Appendix_Proof_1;    rm -f *.aux; cd ..
cd Appendix_Proof_2;    rm -f *.aux; cd ..

# We'll use the pdflatex engine.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Make the index
makeindex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling

# Make the nomenclature section
makeindex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo -s nomencl.ist -o Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls

# Make the bibliobraphy
bibtex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.aux

# Run again to include all the index, toc, and nomenclature information
# Need to run 3 times to get index and nomenclature to appear.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Now open the resulting .pdf file.
open -a Skim Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf