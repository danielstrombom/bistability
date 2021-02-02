function X=LabShinersHM
%Function for running 3 simulations of the Roosting site model (ShinersH.m)
%and the Migration model (ShinersM.m), save the results of each
%simulation, and then create figures 2AB (mkFig2AB.m) and 2CD (mkFig2CD.m)


M30m=ShinersM(30);
save M30m M30m
M70m=ShinersM(70);
save M70m M70m
M150m=ShinersM(150);
save M150m M150m
M300m=ShinersM(300);
save M300m M300m

M30h=ShinersH(30);
save M30h M30h
M70h=ShinersH(70);
save M70h M70h
M150h=ShinersH(150);
save M150h M150h
M300h=ShinersH(300);
save M300h M300h


M30m1=ShinersM(30);
save M30m1 M30m1
M70m1=ShinersM(70);
save M70m1 M70m1
M150m1=ShinersM(150);
save M150m1 M150m1
M300m1=ShinersM(300);
save M300m1 M300m1

M30h1=ShinersH(30);
save M30h1 M30h1
M70h1=ShinersH(70);
save M70h1 M70h1
M150h1=ShinersH(150);
save M150h1 M150h1
M300h1=ShinersH(300);
save M300h1 M300h1


M30m2=ShinersM(30);
save M30m2 M30m2
M70m2=ShinersM(70);
save M70m2 M70m2
M150m2=ShinersM(150);
save M150m2 M150m2
M300m2=ShinersM(300);
save M300m2 M300m2


M30h2=ShinersH(30);
save M30h2 M30h2
M70h2=ShinersH(70);
save M70h2 M70h2
M150h2=ShinersH(150);
save M150h2 M150h2
M300h2=ShinersH(300);
save M300h2 M300h2


mkFig2AB

mkFig2CD




