function X=measuresG(M)
%Function to calculate the time series of polarization values A and
%rotation values R of the largest subgroup over the simulation that 
%produced the result M={X,Y,Vx,Vy}

X=M{1,1};
Y=M{1,2};
Vx=M{1,3};
Vy=M{1,4};
%SP=M{1,5};

N=size(X,1);
t=size(X,2);

%For collecting the Alignment and Rotation
A=zeros(t,1);
R=zeros(t,1);
NN=zeros(t,1);

for k=1:t
    %Adjacency matrix
    N=size(X,1);
    Adj=zeros(N,N);
    for i=1:N
        for j=1:N
            if sqrt((X(i,k)-X(j,k))^2+(Y(i,k)-Y(j,k))^2)<6
                Adj(i,j)=1;
            end
        end
    end
    G=graph(Adj);
    [bin,binsize]=conncomp(G);
    idx = binsize(bin) == max(binsize);
    %SG = subgraph(G, idx);
    %plot(SG)

    X1=X(idx,k);
    Y1=Y(idx,k);
    Vx1=Vx(idx,k);
    Vy1=Vy(idx,k);

    P=[X1,Y1,Vx1,Vy1];
    N=size(P,1);
    %Polarization
    al=(1/N)*sqrt(sum(P(:,3))^2+sum(P(:,4))^2);

    CMx=mean(P(:,1));
    CMy=mean(P(:,2));

    rxU=P(:,1)-ones(N,1)*CMx;
    ryU=P(:,2)-ones(N,1)*CMy;

    r=zeros(N,2);

    for i=1:N
        n=1/sqrt(rxU(i,1)^2+ryU(i,1)^2);
        r(i,1)=n*rxU(i,1);
        r(i,2)=n*ryU(i,1);
    end

    %Rotation
    rot=(1/N)*sqrt(sum(P(:,3).*r(:,2)-P(:,4).*r(:,1))^2);
    
    A(k,1)=al;
    R(k,1)=rot;
    NN(k,1)=N/70;
end

X=[A,R];

% plot(1:t,A,'-r')
% hold on
% plot(1:t,R,'-g')
% hold on
% plot(1:t,NN,'-b')


