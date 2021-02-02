function X=measures(M)
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

for k=1:t
    P=[X(:,k),Y(:,k),Vx(:,k),Vy(:,k)];
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
end

X=[A,R];

