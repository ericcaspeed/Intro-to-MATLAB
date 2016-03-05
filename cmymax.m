function max = cmymax(g)
%%maximum of given column
g = rot90(g); %make column a row
max = g(1); %initial max is first entry
    for i = 2:length(g) %test if other entries are greater
        if g(i) > max %if entry greater than the current entry, replace
        max = g(i);
        end
    end
end

