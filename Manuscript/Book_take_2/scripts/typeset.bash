#! /bin/bash

# This bash script will build the book
# _The_Metabolic_Economy_, including all 
# references, indexes, and nomenclature,
# on MacOSX.
# This script does multiple passes to capture all
# dependencies.
# Invoke the script by cd'ing into the directory that contains this file.
# Then, type "./typeset.bash"
# --Matthew Kuperus Heun, November 2013.

# Ensure a fresh build by deleting all auxiliary files created by LaTeX.
./clean.bash

# Move up one level and get started.
cd ..

# Use the pdflatex engine.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Make the bibliobraphy. Need to do each chapter individually.
cd Part_0; cd Chapter_Introduction; bibtex Chapter_Introduction;  cd ../..;
cd Part_1; cd Chapter_Materials;    bibtex Chapter_Materials;     cd ../..;
cd Part_1; cd Chapter_Energy;       bibtex Chapter_Energy;        cd ../..;
cd Part_1; cd Chapter_Embodied;     bibtex Chapter_Embodied;      cd ../..;
cd Part_2; cd Chapter_Values;       bibtex Chapter_Values;        cd ../..;
cd Part_2; cd Chapter_Intensity;    bibtex Chapter_Intensity;     cd ../..;
cd Part_3; cd Chapter_Implications; bibtex Chapter_Implications;  cd ../..;
cd Part_3; cd Chapter_Unfinished;   bibtex Chapter_Unfinished;    cd ../..;
cd Appendix_Infinite_Series;        bibtex Appendix_Derivation;   cd ..;
cd Appendix_Proof_1;                bibtex Appendix_Proof_1;      cd ..;
cd Appendix_Estimating_A;           bibtex Appendix_Estimating_A; cd ..;
cd Appendix_Casler;                 bibtex Appendix_Casler;       cd ..;

# Make the index section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling

# Make the nomenclature section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo -s nomencl.ist -o Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls

# Run again--thrice--to include all the index, toc, and nomenclature information
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

# Finally, run chktex to highlight any problems
chktex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex 

# Tell Skim to "revert" the file, thereby reloading the new version from disk.
# Doing this eliminates the need to close the file at the top of the script and re-open it here.
# Another benefit of this approach is that Skim does not lose your place in the file!
osascript -e 'tell application "Skim" to revert document named "Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf"'
# Now open the resulting .pdf file.
open -a Skim Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf
