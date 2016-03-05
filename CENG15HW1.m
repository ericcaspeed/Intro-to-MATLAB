%% Homework 1
%% Question 1
%Store a number with a decimal place in a double variable (the default).
%Convert the variable to the type int32 and store the result in a new
%variable. Write in a comment describing the difference between a double 
%variable and an int32 variable. 
p = 3.9;
q = int32(p);
%A double variable stores a number with a decimal with high precision, 15
%digits after the decimal. An int32 variable stores an integer using 32
%bits.

%% Question 2a
%Using the colon operator, create the following row vectors:
[3:1:6] %3 4 5 6
[1.5:0.25:2.75] %1.5000 1.7500 2.0000 2.2500 2.5000 2.7500
[0.5:-0.1:0.2] %0.5 0.4 0.3 0. 2

%% Question 2b
%Using the linspace function, create the following row vectors:
linspace(3, 9, 3) %3 6 9
linspace(-3, -15, 5) %-3 -6 -9 -12 -15
linspace(9, 5, 3) %9 7 5

%% Question 3
%Generate a 4x3 matrix of random:
rand(4, 3); %(a) real numbers, each in the range from 0 to 1;
randi([0, 10], 4, 3); %(b) real numbers, each in the range from 0 to 10;
randi([5, 20], 4, 3); %(c) integers, each in the range from 5 to 20.

%% Question 4
%Find an efficient way (using ‘:’, instead of writing each number) to 
%generate the following matrix:
%mat =
%7 8 9 10
%12 10 8 6
mat=[7:10; 12:-2:6];
%Then, give expressions that will:
mat(1, 2); %(a) refer to the element in the first row, second column;
mat(2, :); %(b) refer to the entire second row;
mat(:, [3,4]); %(c) refer to the last two columns. 

%% Question 5
%Create a vector x that consists of 20 equally spaced points in the range 
%from -? to ?. Create a y vector that is cos(x).
x = linspace(-1*pi, pi, 20);
y = cos(x);