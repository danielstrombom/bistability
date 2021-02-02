function M = Shiners(N)
%Function to simulate the model in the bounded rectangualr region. On each time step of the
%simulation the position and velocity of each particle is recorded and at
%the end of the simulation this data is returned from the simulation as a
%cell array M={X,Y,Vx,Vy} where X is the x coordinates, Y is the y 
%coordinates, Vx is the x component of the velocity, and Vy is the y component
%of the velocity for each particle over time.

rng('shuffle') %generate new random initial configuration each time

%PARAMETERS
ts=1/75; %Timestep
delta=10*ts; %displacement per time step 
xL=105; %Region length
yL=60; %Region height
t=252000; %simulation time
c=1; %relative strength of local attraction
d=1; %relative tendency to proceed in previous direction
rr=1; %relative strength of local repulsion
ba=3.14; %blind angle
e=0.2; %noise intensity
R=6; %interaction radius  

kk=1; %Animation index

%Initiate position/direction/speed collection matrices
X=zeros(N,t); Y=zeros(N,t); Vx=zeros(N,t); Vy=zeros(N,t); SP=zeros(N,t);

%Initiate particle population
P=zeros(N,4); 
for i=1:N 
    P(i,1)=xL/2+0.5*(0.5-rand)*xL/2; % Initiates x-coordinate.
    P(i,2)=yL/2+0.5*(0.5-rand)*yL/2; % Initiates y-coordinate.
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
            C=CMAL(1,:); %Direction toward the LCM
            F=CMAL(2,:); %Local repulsive force            
            
            E=[randn,randn]; %Directional error 
            E=(1/sqrt(E(1,1)^2+E(1,2)^2))*E; %Normalized directional error vector
            
            D=[P(i,3),P(i,4)]; %Current heading

            Dir=d*D+c*C+rr*F+e*E; %Heading update formula

            NH=(1/sqrt(Dir(1,1)^2+Dir(1,2)^2))*Dir; %New normalized Heading                       
            
            %New heading
            PP(i,3)=NH(1,1);
            PP(i,4)=NH(1,2);
          

            %Update position   
            PP(i,1)=P(i,1)+delta*NH(1,1); %New x-coordinate
            PP(i,2)=P(i,2)+delta*NH(1,2); %New y-coordinate         
          
            %Check for boundary interactions and if so slip boundary
            %conditions
            if PP(i,1)-1.5*delta<0 || PP(i,1)+1.5*delta>xL || PP(i,2)-1.5*delta<0 || PP(i,2)+1.5*delta>yL
                %save NH NH
                tt=atan2(real(NH(1,2)),real(NH(1,1))); %Put real here because on rare occasions (<1M ts it fails here because stuff like -0.9272 + 0.0000i  -0.3745 - 0.0000i)
                ttt=tt;
                w=1;
                while PP(i,1)-1.5*delta<0 || PP(i,1)+1.5*delta>xL || PP(i,2)-1.5*delta<0 || PP(i,2)+1.5*delta>yL
                    if mod(w,2)==1
                        PP(i,1)=P(i,1)+delta*cos(tt); %New x-coordinate
                        PP(i,2)=P(i,2)+delta*sin(tt); %New y-coordinate
                        tt=tt+0.001;
                        w=w+1;
                        PP(i,3)=cos(tt);
                        PP(i,4)=sin(tt);
                    else
                        PP(i,1)=P(i,1)+delta*cos(ttt); %New x-coordinate
                        PP(i,2)=P(i,2)+delta*sin(ttt); %New y-coordinate
                        ttt=ttt-0.001;
                        w=w+1;
                        PP(i,3)=cos(ttt);
                        PP(i,4)=sin(ttt);
                    end 
                end
            end
       
 X(i,k)=P(i,1); %Record particle x coordinates in this time step
 Y(i,k)=P(i,2); %Record particle y coordinates in this time step
 Vx(i,k)=P(i,3); %Record particle Vx in this time step
 Vy(i,k)=P(i,4); %Record particle Vy in this time step
        end
    
      %-----------Plotting-------------------      
       
% if mod(k,1000)==0
%         hold off
%         plot(P(:,1),P(:,2),'k.','markersize',10);
% 
%        hold on
%         plot(P(i,1),P(i,2),'.g','markersize',10);
%         hold on
%         for r=1:N
%             plot([P(r,1),P(r,1)+P(r,3)],[P(r,2),P(r,2)+P(r,4)],'r-');
%         end    
%         hold on
%         plot([0,0],[0,yL],'-r');
%         plot([0,0],[xL,0],'-r');
%         plot([0,yL],[xL,yL],'-r');
%        plot(GCM(1,1),GCM(1,2),'*g');
%         xlabel('X position')
%         ylabel('Y position')
%         axis manual
%         axis([0 xL 0 yL]);    
%        U(kk)=getframe;
%        
%        kk=kk+1;
% end
    
        P=PP; %Update particle positions and velocities
end

M={X,Y,Vx,Vy};
