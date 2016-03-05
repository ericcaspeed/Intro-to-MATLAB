function number=mysum(r,n)
number=0;
    for i=0:n
        term=(1/r)^i;
        number=number+term;
    end 
end 