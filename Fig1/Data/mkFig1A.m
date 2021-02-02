function X=mkFig1A
%Function to create time series of polarization and rotation through
%simulation for Fig 1A

%load data 
load M302
load M703
load M1504
load M30011
load M30021

%Recombine the 300 particle simulation data
M300={M30011{1,1},M30011{1,2},M30021{1,1},M30021{1,2}};

figure;
X30=smoother(M302); %calculate measures from the simulation data and apply rolling average
X70=smoother(M703);
X150=smoother(M1504);
X300=smoother(M300);

ss=size(X30,1);
M=X30(2000:ss,:);
lM=size(M,1);

subplot(4,1,1)
plot(1:lM,M(:,1),'b','linewidth',4);
hold on
plot(1:lM,M(:,2),'r','linewidth',4);
%xlabel('time [min]')
set(gca,'XTick',[])
%set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
%xlim([0 ss-2000])


M=X70(2000:ss,:);
%lM=size(M,1);
subplot(4,1,2)
plot(1:lM,M(:,1),'b','linewidth',4);
hold on
plot(1:lM,M(:,2),'r','linewidth',4);
% xlabel('time [min]')
 set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])

M=X150(2000:ss,:);

subplot(4,1,3)
plot(1:lM,M(:,1),'b','linewidth',4);
hold on
plot(1:lM,M(:,2),'r','linewidth',4);
% xlabel('time [min]')
set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])

M=X300(2000:ss,:);

subplot(4,1,4)
plot(1:lM,M(:,1),'b','linewidth',4);
hold on
plot(1:lM,M(:,2),'r','linewidth',4);
xlabel('time [min]')
set(gca,'XTick',[1,33750,67500])
set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
