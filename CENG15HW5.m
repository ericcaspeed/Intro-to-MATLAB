%% Homework 5

%% Problem 1
%write a function called geomser that takes values r and n
%where r is the base and n is the largest exponent value
%find sum of the geometric series
% See function geomser

%function gs = geomser(a,b)
%calculates geometric series
%base is a, n is b
%gs = 0;
%for n = 0:b; %each power n
%    p = a^n; %term is base to n power
%    gs = gs + p; %add term to sum
%end
%end  

%% Problem 2
%Verify Euler's definition of pi^2/6 as a geometric series
%of 1/n2
% See function oneoversum

p = 0; %initialize sum
g = 0; %loop condition
while p < ((pi^2)/6)-((.001)*((pi^2)/6))
    %runs again and again if sum not within .1% of exact answer
    n = input('Enter an n: ');
    p = oneoversum(n); 
end

%function m = oneoversum(a)
%calculates geometric series with 1/n squared
%a is largest n value for 1/n squared
%m = 0; %initialize sum
%    for n = 1:a; %for each denominator
%        p = (1/n)^2; %each term
%        m = m + p; %add to sum
%    end
%end 

%% Problem 3
%Calculate carnot efficiency given hot and cold temps

Tc = input('Enter absolute temperature of cold reservoir: ');
Th = input('Enter absolute temperature of hot reservoir: ');
if Tc > 0 && Th > 0 && Th > Tc 
    %temps in kelvin must be + and hot larger than cold
    E = 1 - Tc / Th;
    fprintf('Carnot efficiency is %4.3f.\n', E)

elseif Tc > Th 
    %if cold larger than hot, swap
    temp = Tc;
    Tc = Th;
    Th = temp;
    E = 1- Tc / Th;
    fprintf('Carnot efficiency is %4.3f.\n', E)
else 
    disp('Error, no negative temperatures.')
end


%% Problem 4
%Approximation of the constant 1/e

n = 1;
g =(1-(1/n))^n; %initial approximation of 1/e
while g <= 0.3678 %while not within .01% of 1/e actual value
    n = n+1; %changes n for another approximation
    g = (1-(1/n))^n;
end

fprintf('The value of n is %4d.\n', n)
fprintf('The actual value of 1/e is %6.4f.\n', 1/exp(1))
fprintf('The approximated value of 1/e is %6.4f.\n', g)