#! /bin/bash

# This bash script cleans all the auxiliary files created by LaTex,
# thereby ensureing a fresh build of the book.

# Invoke the script by cd'ing into the directory that contains this file.
# Then, type "./clean.bash"

# Ensure a fresh build by deleting all auxiliary files created by LaTeX.
cd .. # Move up one level from the scripts folder to begin the cleaning process.
rm -f *.acn;   rm -f *.acr
rm -f *.acrin; rm -f *.acrout
rm -f *.aux
rm -f *.alg
rm -f *.bbl
rm -f *.blg
rm -f *.gidx; rm -f *.gind
rm -f *.glg
rm -f *.gloin; rm -f *.gloout
rm -f *.idx
rm -f *.ilg
rm -f *.ind
rm -f Heun_Dale_Haney*.ist
rm -f *.lof
rm -f *.log
rm -f *.lot
rm -f *.nlo
rm -f *.nls
rm -f *.nomin; rm -f *.nomout
rm -f *.out
rm -f *.pdf
rm -f *.synctex.gz
rm -f *.toc

cd Part_0; cd Chapter_Acknowledgements; rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_0; cd Chapter_Preface;          rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_0; cd Chapter_Prologue;         rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_0; cd Chapter_Epigraph;                 rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_0; cd Chapter_Introduction;     rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_1; cd Chapter_Materials;        rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_1; cd Chapter_Energy;           rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_1; cd Chapter_Embodied;         rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_2; cd Chapter_Values;           rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_2; cd Chapter_Intensity;        rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_3; cd Chapter_Implications;     rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_3; cd Chapter_Unfinished;       rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
cd Part_3; cd Chapter_Summary;          rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..; cd ..
# Delete Part 4's .aux files here, if we make a Part 4.
# Delete Part 5's .aux files here, if we make a Part 5.
cd Appendix_Auto;                   rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..
cd Appendix_Infinite_Series;        rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..
cd Appendix_Proof_1;                rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..
cd Appendix_Estimating_A;           rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..
cd Appendix_Casler;                 rm -f *.aux; rm -f *.bbl; rm -f *.blg; cd ..
