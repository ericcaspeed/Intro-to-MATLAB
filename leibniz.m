function [sum] = leibniz(n)
%leibniz appx of pi with n terms
i = 1;
sum = 0;
while i <= n
    p =((-1)^(i+1)) * (4/(2*i-1)); %each term of formula
    i = i+1; %next term
    sum = sum + p; %add current term to sum
end
end 

