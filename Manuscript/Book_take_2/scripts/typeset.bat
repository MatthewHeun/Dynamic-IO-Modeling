REM This bash script will build the book
REM _The_Metabolic_Economy_, including all 
REM references, indexes, and nomenclature,
REM on MacOSX.
REM This script does multiple passes to capture all
REM dependencies.
REM Invoke the script bycd'ing into the directory that contains this file.
REM Then, type ".\typeset.bash"
REM --Matthew Kuperus Heun, November 2013.

REM Ensure a fresh build by deleting all auxiliary files created by LaTeX.
cd ..
./clean.bat

REM Use the pdflatex engine.
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex


REM Make the bibliobraphy. Need to do each chapter individually.
cd Part_0
cd Chapter_Introduction
bibtex Chapter_Introduction
cd ..\..

cd Part_1
cd Chapter_Materials
bibtex Chapter_Materials
cd ..\..

cd Part_1
cd Chapter_Energy
bibtex Chapter_Energy
cd ..\..

cd Part_1
cd Chapter_Embodied
bibtex Chapter_Embodied
cd ..\..

cd Part_2
cd Chapter_Values
bibtex Chapter_Values
cd ..\..

cd Part_2
cd Chapter_Intensity
bibtex Chapter_Intensity
cd ..\..

cd Part_3
cd Chapter_Implications
bibtex Chapter_Implications
cd ..\..

cd Appendix_Casler
bibtex Appendix_Casler
cd ..

REM These appendices do not contain any references.
cd Appendix_Proof_1
bibtex Appendix_Proof_1
cd ..

cd Appendix_Infinite_Series
bibtex Appendix_Infinite_Series
cd ..

cd Appendix_Estimating_A
bibtex Appendix_Estimating_A
cd ..


REM Make the index section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling

REM Make the nomenclature section.
makeindex -s svind.ist Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nlo -s nomencl.ist -o Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.nls

REM Run again--twice--to include all the index, toc, and nomenclature information
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex
pdflatex -halt-on-error Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex

REM Finally, run chktex to highlight any problems
REM chktex Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.tex 

REM Tell Skim to "revert" the file, thereby reloading the new version from disk.
REM Doing this eliminates the need to close the file at the top of the script and re-open it here.
REM Another benefit of this approach is that Skim does not lose your place in the file!
REM osascript -e 'tell application "Skim" to revert document named "Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf"'
REM Now open the resulting .pdf file.
REM open -a Skim Heun_Dale_Haney_A_dynamic_approach_to_input_output_modeling.pdf
