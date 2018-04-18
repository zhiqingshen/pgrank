function PageRank(G)
V = zeros(5,5);
for i = 1:240
    if G(i,1) == 'HC,'
        V(:,1) = 1;
        V(1,:) = 0;
        if G(i,2) == 'BS,'
            V(2,1)= 1;
            if G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,2) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                end
            elseif G(i,3) == 'TC,'
                V(3,1) = 1;
                V(3,2) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
            elseif G(i,3) == 'DT,'
            end
        elseif G(i,2) == 'JK,'
        elseif G(i,2) == 'TC,'
        elseif G(i,2) == 'DT,'
        end
    elseif G(i,1) == 'BS,'
        V(:,2) = 1;
        V(2,:) = 0;
    elseif G(i,1) == 'JK,'
        V(:,3) = 1;
        V(3,:) = 0;
    elseif G(i,1) == 'TC,'
        V(:,4) = 1;
        V(4,:) = 0;
    elseif G(i,1) == 'DT,'
        V(:,5) = 1;
        V(5,:) = 0;
    end
    
end

end