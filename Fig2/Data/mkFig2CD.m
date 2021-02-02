function X=mkFig2CD
%Create density plots by combining all 3 migration and roosting site
%simulations respectively.

%Load all simulation data 

load M30h
load M30h1
load M30h2
load M30m
load M30m1
load M30m2

load M70h
load M70h1
load M70h2
load M70m
load M70m1
load M70m2

load M150h
load M150h1
load M150h2
load M150m
load M150m1
load M150m2

load M300h
load M300h1
load M300h2
load M300m
load M300m1
load M300m2

%Combine the component for all 3 simulations to create one Total cell array
%containing everything
M30Tx=[M30m{1,1},M30m1{1,1},M30m2{1,1}];
M30Ty=[M30m{1,2},M30m1{1,2},M30m2{1,2}];
M30Tvx=[M30m{1,3},M30m1{1,3},M30m2{1,3}];
M30Tvy=[M30m{1,4},M30m1{1,4},M30m2{1,4}];
M30={M30Tx,M30Ty,M30Tvx,M30Tvy};


M70Tx=[M70m{1,1},M70m1{1,1},M70m2{1,1}];
M70Ty=[M70m{1,2},M70m1{1,2},M70m2{1,2}];
M70Tvx=[M70m{1,3},M70m1{1,3},M70m2{1,3}];
M70Tvy=[M70m{1,4},M70m1{1,4},M70m2{1,4}];
M70={M70Tx,M70Ty,M70Tvx,M70Tvy};


M150Tx=[M150m{1,1},M150m1{1,1},M150m2{1,1}];
M150Ty=[M150m{1,2},M150m1{1,2},M150m2{1,2}];
M150Tvx=[M150m{1,3},M150m1{1,3},M150m2{1,3}];
M150Tvy=[M150m{1,4},M150m1{1,4},M150m2{1,4}];
M150={M150Tx,M150Ty,M150Tvx,M150Tvy};

M300Tx=[M300m{1,1},M300m1{1,1},M300m2{1,1}];
M300Ty=[M300m{1,2},M300m1{1,2},M300m2{1,2}];
M300Tvx=[M300m{1,3},M300m1{1,3},M300m2{1,3}];
M300Tvy=[M300m{1,4},M300m1{1,4},M300m2{1,4}];
M300={M300Tx,M300Ty,M300Tvx,M300Tvy};

%Count recorded polarization and rotation values in each bin over all
%simulations using dplotG
H30=dplotG(M30);
H70=dplotG(M70);
H150=dplotG(M150);
H300=dplotG(M300);


figure;
subplot(2,2,1)
imagesc(H30);
ylabel('Polarization')
%xlabel('Rotation')
%set(gca,'XTick',[0.5,15,30])
%set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

subplot(2,2,2)
imagesc(H70);
%ylabel('Polarization')
%xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
%set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
%set(gca,'YTickLabel',{'0','0.5','1'})
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
%ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
%set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')



M30Tx=[M30h{1,1},M30h1{1,1},M30h2{1,1}];
M30Ty=[M30h{1,2},M30h1{1,2},M30h2{1,2}];
M30Tvx=[M30h{1,3},M30h1{1,3},M30h2{1,3}];
M30Tvy=[M30h{1,4},M30h1{1,4},M30h2{1,4}];
M30={M30Tx,M30Ty,M30Tvx,M30Tvy};

M70Tx=[M70h{1,1},M70h1{1,1},M70h2{1,1}];
M70Ty=[M70h{1,2},M70h1{1,2},M70h2{1,2}];
M70Tvx=[M70h{1,3},M70h1{1,3},M70h2{1,3}];
M70Tvy=[M70h{1,4},M70h1{1,4},M70h2{1,4}];
M70={M70Tx,M70Ty,M70Tvx,M70Tvy};

M150Tx=[M150h{1,1},M150h1{1,1},M150h2{1,1}];
M150Ty=[M150h{1,2},M150h1{1,2},M150h2{1,2}];
M150Tvx=[M150h{1,3},M150h1{1,3},M150h2{1,3}];
M150Tvy=[M150h{1,4},M150h1{1,4},M150h2{1,4}];
M150={M150Tx,M150Ty,M150Tvx,M150Tvy};

M300Tx=[M300h{1,1},M300h1{1,1},M300h2{1,1}];
M300Ty=[M300h{1,2},M300h1{1,2},M300h2{1,2}];
M300Tvx=[M300h{1,3},M300h1{1,3},M300h2{1,3}];
M300Tvy=[M300h{1,4},M300h1{1,4},M300h2{1,4}];
M300={M300Tx,M300Ty,M300Tvx,M300Tvy};

%Count recorded polarization and rotation values in each bin over all
%simulations using dplotG
H30=dplotG(M30);
H70=dplotG(M70);
H150=dplotG(M150);
H300=dplotG(M300);


figure;
subplot(2,2,1)
imagesc(H30);
ylabel('Polarization')
%xlabel('Rotation')
%set(gca,'XTick',[0.5,15,30])
%set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

subplot(2,2,2)
imagesc(H70);
%ylabel('Polarization')
%xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
%set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
%set(gca,'YTickLabel',{'0','0.5','1'})
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
%ylabel('Polarization')
xlabel('Rotation')
set(gca,'XTick',[0.5,15,30])
set(gca,'XTickLabel',{'0','0.5','1'})
set(gca,'YTick',[0.5,15,30])
%set(gca,'YTickLabel',{'0','0.5','1'})
set(gca,'XDir','normal','YDir','normal')

