function [ sum ] = goodleibniz
%good appx of pi using leibniz formula
error = 1; %initialize error
i = 0;
sum = 0;
while error > .0001 %while error is too high
    i = i+1; %next term
    p = ((-1)^(i+1))*(4/(2*i-1)); %each term
    sum = sum + p; %add term to sum
    error = abs(sum-pi) / pi; %update error
end 
end

