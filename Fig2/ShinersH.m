function M = ShinersH(N)
%Function to simulate the Roosting site model. On each time step of the
%simulation the position and velocity of each particle is recorded and at
%the end of the simulation this data is returned from the simulation as a
%cell array M={X,Y,Vx,Vy} where X is the x coordinates, Y is the y 
%coordinates, Vx is the x component of the velocity, and Vy is y component
%of the velocity for each particle over time.

rng('shuffle') %generate new random initial configuration for each simulation

%PARAMETERS
ts=1/75; %Timestep
delta=10*ts; %displacement per time step 
t=100000; %simulation length
c=1; %relative strength of local attraction
d=1; %relative tendency to proceed in previous direction
rr=1; %relative strength of local repulsion %rr=1.5 too stable
ah=0.0025; %Linear attraction to roosting site at origin.
ba=3.14; %blind angle
e=0.2; %noise intensity
R=6; %interaction radius  

kk=1; %animation index

%Initiate position/direction/speed collection matrices
X=zeros(N,t); Y=zeros(N,t); Vx=zeros(N,t); Vy=zeros(N,t);

%Initiate particle population
P=zeros(N,4); 
for i=1:N 
    P(i,1)=105*(0.5-rand); % Initiates x-coordinate.
    P(i,2)=50*(0.5-rand); % Initiates y-coordinate.
    P3=0.5-rand; P4=0.5-rand;
    Pdir=(1/sqrt(P3^2+P4^2))*[P3 P4];
    P(i,3)=Pdir(1,1); % Initiates x-dir.
    P(i,4)=Pdir(1,2); % Initiates y-dir.
end

for k=1:t %Simulate for t time steps
        GCM=[mean(P(:,1)),mean(P(:,2))]; %Global center of mass
        PP=zeros(N,4); %Initiate population matrix for synchronous update
        
        for i=1:N % Go through every particle.
            
            CMAL=nh2DGR(i,P,R,R,ba); %Call neighborhood and interaction calculator function
            C=CMAL(1,:); %Local attraction force
            F=CMAL(2,:); %Local repulsive force    
            
            E=[randn,randn]; %Directional error 
            E=(1/sqrt(E(1,1)^2+E(1,2)^2))*E; %Normalized directional error vector
            
            D=[P(i,3),P(i,4)]; %Current heading
            
            H=[-P(i,1),-P(i,2)]; %Direction to center of home range (Origin)

            Dir=d*D+c*C+rr*F+ah*H+e*E; %Heading update formula

            NH=(1/sqrt(Dir(1,1)^2+Dir(1,2)^2))*Dir; %New normalized Heading                       
            
            %New heading
            PP(i,3)=NH(1,1);
            PP(i,4)=NH(1,2);
            
            %Update position   
            PP(i,1)=P(i,1)+delta*NH(1,1); %New x-coordinate
            PP(i,2)=P(i,2)+delta*NH(1,2); %New y-coordinate        
      
 X(i,k)=P(i,1); %Record particle x coordinates in this time step
 Y(i,k)=P(i,2);  %Record particle y coordinates in this time step
 Vx(i,k)=P(i,3);  %Record particle Vx in this time step
 Vy(i,k)=P(i,4); %Record particle Vy in this time step
        end
    
      %-----------Plotting-------------------      
%        
% if mod(k,100)==0
%         hold off
%         plot(P(:,1),P(:,2),'k.','markersize',10);
% 
%        hold on
%         plot(0,0,'*g','markersize',10);
% %         hold on
% %         for r=1:N
% %             plot([P(r,1),P(r,1)+P(r,3)],[P(r,2),P(r,2)+P(r,4)],'r-');
% %         end    
%         
%         xlabel('X position')
%         ylabel('Y position')
%         axis manual
%         axis([min(P(:,1))-50 max(P(:,1))+50 min(P(:,2))-50 max(P(:,2))+50]);    
%        U(kk)=getframe;
%        
%        kk=kk+1;
% end
%        
% if mod(k,10000)==0
%     toc
%     [N,k]
%     tic
% end
        
        P=PP; %Update particle positions and velocities
end

M={X,Y,Vx,Vy};
