function X=mkFig1C
%Function to create the density plot 1C by combining the result of all 4
%simulations for each group size

%load the data 

load M301
load M701
load M1501
load M30011
load M30021
load M302
load M702
load M1502
load M30012
load M30022
load M303
load M703
load M1503
load M30013
load M30023
load M304
load M704
load M1504
load M30014
load M30024

%Combine all 4 simulation recordings for each group size into one cell array for analysis 
M30Tx=[M301{1,1},M302{1,1},M303{1,1},M304{1,1}];
M30Ty=[M301{1,2},M302{1,2},M303{1,2},M304{1,2}];
M30Tvx=[M301{1,3},M302{1,3},M303{1,3},M304{1,3}];
M30Tvy=[M301{1,4},M302{1,4},M303{1,4},M304{1,4}];
M30={M30Tx,M30Ty,M30Tvx,M30Tvy};

M70Tx=[M701{1,1},M702{1,1},M703{1,1},M704{1,1}];
M70Ty=[M701{1,2},M702{1,2},M703{1,2},M704{1,2}];
M70Tvx=[M701{1,3},M702{1,3},M703{1,3},M704{1,3}];
M70Tvy=[M701{1,4},M702{1,4},M703{1,4},M704{1,4}];
M70={M70Tx,M70Ty,M70Tvx,M70Tvy};

M150Tx=[M1501{1,1},M1502{1,1},M1503{1,1},M1504{1,1}];
M150Ty=[M1501{1,2},M1502{1,2},M1503{1,2},M1504{1,2}];
M150Tvx=[M1501{1,3},M1502{1,3},M1503{1,3},M1504{1,3}];
M150Tvy=[M1501{1,4},M1502{1,4},M1503{1,4},M1504{1,4}];
M150={M150Tx,M150Ty,M150Tvx,M150Tvy};

M300Tx=[M30011{1,1},M30012{1,1},M30013{1,1},M30014{1,1}];
M300Ty=[M30011{1,2},M30012{1,2},M30013{1,2},M30014{1,2}];
M300Tvx=[M30021{1,1},M30022{1,1},M30023{1,1},M30024{1,1}];
M300Tvy=[M30021{1,2},M30022{1,2},M30023{1,2},M30024{1,2}];
M300={M300Tx,M300Ty,M300Tvx,M300Tvy};

%Count measurements in each bin using the dplot function
H30=dplot(M30);
H70=dplot(M70);
H150=dplot(M150);
H300=dplot(M300);

%Create the density plot
figure;
subplot(2,2,1)
imagesc(H30);
ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

subplot(2,2,2)
imagesc(H70);
ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

subplot(2,2,3)
imagesc(H150);
ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

subplot(2,2,4)
imagesc(H300);
ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')
