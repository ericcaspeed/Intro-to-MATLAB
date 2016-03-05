%% Homework 6

%% Problem 1
%User chooses a method to calculate value of pi
%See functions machin, leibniz, goodleibniz

x = 1; %loop condition
while x == 1
    choice = pimenu; %choose method
    %function [c] = pimenu
    %menu function asking how to calculate appx of pi
    %c = menu('Pi Approximations', 'Machin Formula', ...
    %    'Leibniz Formula with n terms',...
    %    'Good Leibniz Formula Approximation','Exit');
    %end
    switch choice
        case 1 %machin formula
            w = machin;
            %function [w] = machin
            %machin appx of pi
            %w = 16 * atan(1/5) - 4 * atan(1/129);
            %end
            fprintf('The Machin Formula approximation is %10.8f.\n', w);
        case 2 %leibniz formula with n terms
            n = input('Enter number of terms: ');
            p = leibniz(n);
            %function [sum] = leibniz(n)
            %leibniz appx of pi with n terms
            %i = 1;
            %sum = 0;
            %while i <= n
            %p =((-1)^(i+1)) * (4/(2*i-1)); %each term of formula
            %i = i+1; %next term
            %sum = sum + p; %add current term to sum
            %end
            %end
            fprintf('The Leibniz Formula approximation with %d terms' ...
                'is %10.8f.\n', n, p);
        case 3
            f=goodleibniz;
            %function [ sum ] = goodleibniz
            %good appx of pi using leibniz formula
            %error = 1; %initialize error
            %i = 0;
            %sum = 0;
            %while error > .0001 %while error is too high
                %i = i+1; %next term
                %p = ((-1)^(i+1))*(4/(2*i-1)); %each term
                %sum = sum + p; %add term to sum
                %error = abs(sum-pi) / pi; %update error
            %end 
            %end
            fprintf('A good approximation using the Leibniz Formula' ...
                'is %10.8f.\n', f);
        otherwise 
            x = 2; %if no choice is made exit the loop
    end 
end 

%% Problem 2
%User enters angle in degrees, converts to radian and prints both

p = input('Enter an angle in degrees: ');
r = degrad(p); %degrees to rad
    %function r = degrad(d)
    %changes value in degrees to value in radians
    %r = d * pi / 180;
    %end
fprintf('The angle %5.2f in degrees is %5.2f in radian.\n', p,r);
    
%% Problem 3
%Find area and volume of prism when user inputs
%Side length, number of sides, and height
%See function getprism

[n, h, s] = getprism;
    %function [n, h, s] = getprism
    %asks user for number sides n, height h, length of sides s of prism
    %n = input('Enter the number of sides: ');
    %h = input('Enter the height: ');
    %s = input('Enter the length of the sides: ');
    %end

v = (n/4)*h*s^(2*cot(pi/n)); %volume of prism
a = n*s*h+(n/2)*s^(2*cot(pi/n)); %surface area
fprintf('The volume of the prism is %4.1f.\n',v);
fprintf('The surface area of the prism is %4.1f.\n',a);
