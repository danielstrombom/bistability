function X=smootherG(M)
%Function to smooth the time series curves of the rotation and polarization
%via a rolling average

M=measuresG(M);
lM=size(M,1);
 
X=zeros(lM,2);

L=38; %half length of averaging interval 1s=75 reg ts 

X(1:L,:)=M(1:L,:);
X((lM-L):lM,:)=M((lM-L):lM,:);

for i=(L+1):1:(lM-L-1)
    Mp=[M(i-L:i+L,1)];
    Mr=[M(i-L:i+L,2)];
    X(i,1)=mean(Mp);
    X(i,2)=mean(Mr);
end

