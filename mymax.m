function max = mymax(g)
%max element of a vector
max = g(1); %initialize max as first element
    for i = 2:length(g) %over length of vector
        if g(i) > max %if current calure greater than max, replace max
        max = g(i);
        end
    end
end
