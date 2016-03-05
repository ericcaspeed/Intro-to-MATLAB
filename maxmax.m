function max = maxmax(g, p, q)
%max element of a matrix g of demensions pxq
max = g(1); %max is first element initially
    for i = 2:(p*q) %over whole matrix
        if g(i) > max %if entry greater than max, replace max
        max = g(i);
        end
    end
end

