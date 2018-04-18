function PageRank(G)
V = zeros(5,5);
for i = 1:240
    % When the first one is HC%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(3,1) = 1;
                V(3,2) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,2) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            end
        elseif G(i,2) == 'JK,'
            V(2,1)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,3) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,1) = 1;
                V(4,3) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(4,1) = 1;
                V(4,3) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            end
        elseif G(i,2) == 'TC,'
            V(2,1)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,4) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,4) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,4) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            end
        elseif G(i,2) == 'DT,'
            V(5,1)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,5) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,1) = 1;
                V(4,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            end
        end
        
    %When the first one is BS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    elseif G(i,1) == 'BS,'
        V(:,2) = 1;
        V(2,:) = 0;
        if G(i,2) == 'HC,'
            V(1,2)= 1;
            if G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,2) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(3,1) = 1;
                V(3,2) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,2) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            end
        elseif G(i,2) == 'JK,'
            V(2,1)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,3) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,1) = 1;
                V(4,3) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,3) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'TC,'
            V(2,1)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,4) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,2) = 1;
                V(3,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,2) = 1;
                V(5,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'DT,'
            V(5,1)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,5) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,2) = 1;
                V(4,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        end
        
    % When the first one is JK%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    elseif G(i,1) == 'JK,'
        V(:,3) = 1;
        V(3,:) = 0;
        if G(i,2) == 'HC,'
            V(1,3)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,3) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,1) = 1;
                V(4,3) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,3) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            end
        elseif G(i,2) == 'BS,'
            V(2,3)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,3) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,2) = 1;
                V(4,3) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,2) = 1;
                V(5,3) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'TC,'
            V(4,3)= 1;
            if G(i,3) == 'HC,'
                V(1,3) = 1;
                V(1,4) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,3) = 1;
                V(2,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,3) = 1;
                V(5,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'DT,'
            V(5,3)= 1;
            if G(i,3) == 'HC,'
                V(1,3) = 1;
                V(1,5) = 1;
                if G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,3) = 1;
                V(2,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,3) = 1;
                V(4,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        end
    % When the first one is TC%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%
    elseif G(i,1) == 'TC,'
        V(:,4) = 1;
        V(4,:) = 0;
        if G(i,2) == 'HC,'
            V(1,4)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,4) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,4) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,1) = 1;
                V(5,4) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            end
        elseif G(i,2) == 'BS,'
            V(2,4)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,4) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,2) = 1;
                    V(5,4) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,2) = 1;
                V(3,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,2) = 1;
                V(5,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'JK,'
            V(3,4)= 1;
            if G(i,3) == 'HC,'
                V(1,3) = 1;
                V(1,4) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,1) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,3) = 1;
                V(2,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(5,:) = 1;
                    V(5,5) = 0;
                elseif G(i,4) == 'DT,'
                    V(5,2) = 1;
                    V(5,3) = 1;
                    V(5,4) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'DT,'
                V(5,3) = 1;
                V(5,4) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'DT,'
            V(5,4)= 1;
            if G(i,3) == 'HC,'
                V(1,4) = 1;
                V(1,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,4) = 1;
                V(2,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,4) = 1;
                V(3,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        end
        
    % When the first one is DT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    elseif G(i,1) == 'DT,'
        V(:,5) = 1;
        V(5,:) = 0;
        if G(i,2) == 'HC,'
            V(1,5)= 1;
            if G(i,3) == 'BS,'
                V(2,1) = 1;
                V(2,5) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,1) = 1;
                V(3,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,1) = 1;
                V(4,5) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            end
        elseif G(i,2) == 'BS,'
            V(2,4)= 1;
            if G(i,3) == 'HC,'
                V(1,2) = 1;
                V(1,5) = 1;
                if G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,2) = 1;
                    V(3,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,2) = 1;
                    V(4,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,2) = 1;
                V(3,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,2) = 1;
                V(4,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'JK,'
            V(3,5)= 1;
            if G(i,3) == 'HC,'
                V(1,3) = 1;
                V(1,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,3) = 1;
                    V(2,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,1) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,3) = 1;
                V(2,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,3) = 1;
                    V(1,5) = 1;
                    V(4,:) = 1;
                    V(4,4) = 0;
                elseif G(i,4) == 'TC,'
                    V(4,2) = 1;
                    V(4,3) = 1;
                    V(4,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'TC,'
                V(4,3) = 1;
                V(4,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        elseif G(i,2) == 'TC,'
            V(4,5)= 1;
            if G(i,3) == 'HC,'
                V(1,4) = 1;
                V(1,5) = 1;
                if G(i,4) == 'BS,'
                    V(2,1) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,1) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                end
            elseif G(i,3) == 'BS,'
                V(2,4) = 1;
                V(2,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,2) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(3,:) = 1;
                    V(3,3) = 0;
                elseif G(i,4) == 'JK,'
                    V(3,2) = 1;
                    V(3,4) = 1;
                    V(3,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            elseif G(i,3) == 'JK,'
                V(3,4) = 1;
                V(3,5) = 1;
                if G(i,4) == 'HC,'
                    V(1,3) = 1;
                    V(1,4) = 1;
                    V(1,5) = 1;
                    V(2,:) = 1;
                    V(2,2) = 0;
                elseif G(i,4) == 'BS,'
                    V(2,3) = 1;
                    V(2,4) = 1;
                    V(2,5) = 1;
                    V(1,:) = 1;
                    V(1,1) = 0;
                end
            end
        end
    end
    Sum = Sum + V;
end
