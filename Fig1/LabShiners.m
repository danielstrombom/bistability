function X=LabShiners
%Function for running 4 simulations of the bounded region model (Shiners.m), save the results of each
%simulation, and then create Figs 1A (mkFig1A.m) and 1C (mkFig1C.m)



M301=Shiners(30);    
save M301 M301
M701=Shiners(70);
save M701 M701
M1501=Shiners(150);
save M1501 M1501
M300=Shiners(300);
%Separate M300 into two parts for saving 
M30011={M300{1,1},M300{1,2}};
save M30011 M30011
M30021={M300{1,3},M300{1,4}};
save M30021 M30021


M302=Shiners(30);    
save M302 M302
M702=Shiners(70);
save M702 M702
M1502=Shiners(150);
save M1502 M1502
M300=Shiners(300);
%Separate M300 into two parts for saving 
M30012={M300{1,1},M300{1,2}};
save M30012 M30012
M30022={M300{1,3},M300{1,4}};
save M30022 M30022

M303=Shiners(30);    
save M303 M303
M703=Shiners(70);
save M703 M703
M1503=Shiners(150);
save M1503 M1503
M300=Shiners(300);
%Separate M300 into two parts for saving 
M30013={M300{1,1},M300{1,2}};
save M30013 M30013
M30023={M300{1,3},M300{1,4}};
save M30023 M30023

M304=Shiners(30);    
save M304 M304
M704=Shiners(70);
save M704 M704
M1504=Shiners(150);
save M1504 M1504
M300=Shiners(300);
%Separate M300 into two parts for saving 
M30014={M300{1,1},M300{1,2}};
save M30014 M30014
M30024={M300{1,3},M300{1,4}};
save M30024 M30024

mkFig1A
mkFig1C
