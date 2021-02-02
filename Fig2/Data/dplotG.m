function H=dplotG(M)
%Function to count polarization and rotation values belonging to each bin in the
%30x30 grid used to make Figs 2CD. Returns matrix H containing the count
%for each bin through the simulation that M={X,Y,Vx,Vy} was returned from

MM=measuresG(M); 
H=zeros(30,30);
lMM=size(MM,1);
for k=1:lMM 
    for i=1:30
        for j=1:30
            if MM(k,1)>(i-1)/30 && MM(k,1)<i/30 
                if MM(k,2)>(j-1)/30 && MM(k,2)<j/30
                    H(i,j)=H(i,j)+1;                    
                end
            end
        end
    end
end