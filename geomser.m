function gs = geomser(a,b)
%calculates geometric series
%base is a, n is b
gs = 0;
for n = 0:b; %for each value of n
    p=a^n; %term is base to power n
    gs = gs+p; %add term to sum
end
end 
