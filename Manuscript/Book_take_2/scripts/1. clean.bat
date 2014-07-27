REM This bash script cleans all the auxiliary files created by LaTex,
REM thereby ensuring a fresh build of the book.

REM Invoke the script by cd'ing into the directory that contains this file.
REM Then, type "./clean.bash"

REM Ensure a fresh build by deleting all auxiliary files created by LaTeX.
cd ..
erase *.acn
erase *.acr
erase *.acrin
erase *.acrout
erase *.aux
erase *.alg
erase *.bbl
erase *.blg
erase *.gidx
erase *.gind
erase *.glg
erase *.gloin
erase *.gloout
erase *.idx
erase *.ilg
erase *.ind
erase *.Heun_Dale_Haney*.ist
erase *.lof
erase *.log
erase *.lot
erase *.nlo
erase *.nls
erase *.nomin
erase *.nomout
erase *.pdf
erase *.synctex.gz
erase *.toc
erase *.out

cd Part_0\Chapter_Acknowledgements
erase *.aux
erase *.bbl
erase *.blg
cd Part_0\Chapter_Acct_For_WoN
erase *.aux
erase *.bbl
erase *.blg
cd Part_0\Chapter_Preface
erase *.aux
erase *.bbl
erase *.blg
cd Part_0\Chapter_Prologue
erase *.aux
erase *.bbl
erase *.blg
cd Part_0\Chapter_Epigraph
erase *.aux
erase *.bbl
erase *.blg
cd ..\Part_0\Chapter_Introduction 
erase *.aux
erase *.bbl
erase *.blg
cd ..\..\Part_1\Chapter_Materials
erase *.aux
erase *.bbl
erase *.blg    
cd ..\..\Part_1\Chapter_Energy
erase *.aux
erase *.bbl
erase *.blg          
cd ..\..\Part_1\Chapter_Embodied 
erase *.aux
erase *.bbl
erase *.blg 
   
cd ..\..\Part_2\Chapter_Values
erase *.aux
erase *.bbl
erase *.blg  
  
cd ..\..\Part_2\Chapter_Intensity
erase *.aux
erase *.bbl
erase *.blg 
  
cd ..\..\Part_3\Chapter_Implications
erase *.aux
erase *.bbl
erase *.blg    

cd ..\..\Part_3\Chapter_Unfinished
erase *.aux
erase *.bbl
erase *.blg    

cd ..\..\Part_3\Chapter_Summary
erase *.aux
erase *.bbl
erase *.blg    

cd ..\..\Appendix_Auto
erase *.aux
erase *.bbl
erase *.blg   

cd ..\..\Appendix_Casler
erase *.aux
erase *.bbl
erase *.blg   
 
cd ..\Appendix_Estimating_A
erase *.aux
erase *.bbl
erase *.blg 
   
cd ..\Appendix_Infinite_Series
erase *.aux
erase *.bbl
erase *.blg  
  
cd ..\Appendix_Proof_1
erase *.aux
erase *.bbl
erase *.blg    

cd ..
