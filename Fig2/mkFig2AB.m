function X=mkFig2AB
%Create figures 2AB *Oscillation curves*

%Load migration simulation results, one for each size 

load M30m2
load M70m2
load M150m2
load M300m2

%OSCILLATIONS

figure;
X30=smootherG(M30m2);
X70=smootherG(M70m2);
X150=smootherG(M150m2);
X300=smootherG(M300m2);

ss=size(X30,1);
M=X30(2000:ss,:); %ss=32000
lM=size(M,1);

subplot(4,1,1)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
%xlabel('time [min]')
set(gca,'XTick',[])
%set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
%xlim([0 ss-2000])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})


M=X70(2000:ss,:);
%lM=size(M,1);
subplot(4,1,2)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
% xlabel('time [min]')
 set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

M=X150(2000:ss,:);

subplot(4,1,3)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
% xlabel('time [min]')
set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

M=X300(2000:ss,:);

subplot(4,1,4)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
xlabel('time [min]')
set(gca,'XTick',[1,33750,67500])
set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})



%Load roosting site simulation results, one for each size

load M30h
load M70h1
load M150h
load M300h2

%OSCILLATIONS

figure;
X30=smootherG(M30h);
X70=smootherG(M70h1);
X150=smootherG(M150h);
X300=smootherG(M300h2);

ss=size(X30,1);
M=X30(2000:ss,:); %ss=32000
lM=size(M,1);

subplot(4,1,1)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
%xlabel('time [min]')
set(gca,'XTick',[])
%set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})
%xlim([0 ss-2000])


M=X70(2000:ss,:);
%lM=size(M,1);
subplot(4,1,2)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
% xlabel('time [min]')
 set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

M=X150(2000:ss,:);

subplot(4,1,3)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
% xlabel('time [min]')
set(gca,'XTick',[])
% set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

M=X300(2000:ss,:);

subplot(4,1,4)
plot(1:lM,M(:,1),'b','linewidth',2);
hold on
plot(1:lM,M(:,2),'r','linewidth',2);
xlabel('time [min]')
set(gca,'XTick',[1,33750,67500])
set(gca,'XTickLabel',{'0','7.5','15'})
xlim([0 67500])
ylim([0 1])
set(gca,'YTick',[0,0.5,1])
set(gca,'YTickLabel',{'0','0.5','1'})

