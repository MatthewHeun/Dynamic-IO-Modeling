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

cd Part_0; cd Chapter_Introduction; rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_1; cd Chapter_Materials;    rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_2; cd Chapter_Energy;       rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_2; cd Chapter_Embodied;     rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_3; cd Chapter_Values;       rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_3; cd Chapter_Intensity;    rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_4; cd Chapter_Implications; rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
# Delete Part 5's .aux files here, if we make a Part 5.
cd Appendix_Derivation; rm -f *.aux; cd ..
cd Appendix_Proof_1;    rm -f *.aux; cd ..
cd Appendix_Proof_2;    rm -f *.aux; cd ..

exit

# We'll use the pdflatex engine.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Make the bibliobraphy. Do each chapter individually.
cd Part_0; cd Chapter_Introduction; bibtex Chapter_Introduction; cd ../..;
cd Part_1; cd Chapter_Materials;    bibtex Chapter_Materials;    cd ../..;
cd Part_2; cd Chapter_Energy;       bibtex Chapter_Energy;       cd ../..;
cd Part_2; cd Chapter_Embodied;     bibtex Chapter_Embodied;     cd ../..;
cd Part_3; cd Chapter_Values;       bibtex Chapter_Values;       cd ../..;
cd Part_3; cd Chapter_Intensity;    bibtex Chapter_Intensity;    cd ../..;
cd Part_4; cd Chapter_Implications; bibtex Chapter_Implications; cd ../..;
# Appendices do not contain bibliographies.
# cd Appendix_Derivation; bibtex Appendix_Derivation; cd ..;
# cd Appendix_Proof_1;    bibtex Appendix_Proof_1;    cd ..;
# cd Appendix_Proof_2;    bibtex Appendix_Proof_2;    cd ..;

# Make the index section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling

# Make the nomenclature section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo -s nomencl.ist -o Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls

# Run again to include all the index, toc, and nomenclature information
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Now open the resulting .pdf file.
open -a Skim Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf