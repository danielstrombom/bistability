# bistability

INSTRUCTIONS FOR (RE)GENERATING FIGURES 1AC and 2A-D VIA NEW SIMULATIONS.

Download the folders Fig1 and Fig2 to your computer.

(RE)GENERATE FIG 1A and 1C

Set Fig1 as Current Folder in Matlab.

To run a complete set of new simulations and generate new Fig 1A and 1C run the script LabShiners.m. This script calls the main simulation function (Shiners.m) 4 times for each group size (30,70,150,300) and the plots Fig 1A using mkPlot1A.m and 1C using mkPlot1C.m. Note that these simulations may take a very long time and will create files that are several gb large.


(RE)GENERATE FIG 2A-D

Set Fig2 as Current Folder in Matlab.

To run a complete set of new simulations and generate new Fig 2 run the script LabShinersHM.m. This script calls the main simulation functions for the roosting site model (ShinersH.m) and the migration model (ShinersM.m) 3 times for each group size (30,70,150,300) and plots Fig 2AB using mkPlot2AB.m and 2CD using mkPlot2CD.m. Note that these simulations may take a very long time and will create files that are several gb large.

IMPORTANT! Please use Matlab 2018b or higher, for some older versions the plotting functions will crash.

