%% Homework 2

%% Problem 1
%On	average, people	in	a region spend 12%	to 15% of their
%income	on clothes. Write a script that will prompt	the	user
%for an	annual income. It will then	print the range that
%would typically be	spent on clothes annually.	
%Also, print a monthly range.

AnnualIncome= input('Enter Your Annual Income: ');
fprintf('You are likely to spend between $%8.2f \nand $%8.2f' ...
    'annually on clothing.\n\n', .12*AnnualIncome, .15*AnnualIncome);
fprintf('You are likely to spend between $%6.2f \nand $%7.2f' ...
    'monthly on clothing.\n', .01*AnnualIncome, .15*AnnualIncome/12);

%% Problem 2
%Plot cos(x) for x values ranging from -pi to pi 
%using 5 points in	this range and using a solid red line
%using 20 points in this range and using a dashed green	line
%using 50 points in	this range and using a dash-dotted black line
%Finally label your	axes and add a title to the	plot.	
x1= linspace(-pi, pi, 5);
y1= cos(x1);
x2 = linspace(-pi, pi, 20);
y2= cos(x2);
x3 = linspace(-pi, pi, 50);
y3= cos(x3);
plot(x1, y1, '-r', x2, y2, '--g', x3, y3, '-.k')
xlabel('x')
ylabel('y')
title('Plot of Cos')

%% Problem 3
%Create a 4x6 matrix of random integers ranging from 25 to 100.
%Write this to file randfile.dat and append 2x6 matrix of random integers
%ranging from 25 to 100.
%Read in the file to make sure the second matrix appended.
mat = randi([25,100],4,6);
save randfile.dat mat -ascii
matr = randi([25,100],2,6);
save randfile.dat matr -ascii -append
load randfile.dat

%% Problem 4
%Write a function called function1 that	will calculate y as a function of x
%y = x – 8x^2 + cos(x)
function1.m
%function [y] = function1(x)
%y= x - 8*x^2 + cos(x);
%end

%% Problem 5
%The volume V of a regular cone is given by V=(c*r^2*h) where c=pi/3, r is
%the radius and	h is the height. Write a program to calculate volume.	
r= input('Enter the radius: ');
h= input('Enter the height: ');
Volume=conevol(r,h);
fprintf('The volume of a regular cone with a radius of %2.1f\n' ...
    'and a height of %3.1f is %6.2f.\n', r, h, Volume)
%conevol.m
%function [Volume] = conevol(r,h)
%Volume =(pi/3*r^2*h);
%end