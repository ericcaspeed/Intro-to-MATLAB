function m = oneoversum(a)
%calculates geometric series with 1/n squared
%a is largest n value for 1/n squared
m = 0; %initialize sum
    for n = 1:a; %for each denominator
        p = (1/n)^2; %each term
        m = m + p; %add to sum
    end
end 
