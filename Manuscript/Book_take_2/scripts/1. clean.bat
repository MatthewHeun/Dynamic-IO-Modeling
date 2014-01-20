REM This bash script cleans all the auxiliary files created by LaTex,
REM thereby ensuring a fresh build of the book.

REM Invoke the script by cd'ing into the directory that contains this file.
REM Then, type "./clean.bash"

REM Ensure a fresh build by deleting all auxiliary files created by LaTeX.
cd ..
erase *.aux
erase *.bbl
erase *.blg
erase *.idx
erase *.ilg
erase *.ind
erase *.log
erase *.nlo
erase *.nls
erase *.pdf
erase *.synctex.gz
erase *.toc
erase *.lof
erase *.lot

cd Part_0\Chapter_Introduction 
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
