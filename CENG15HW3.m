%% Homework 3

%% Problem 1
%In a script, prompt the user to enter ‘y’ for yes and ‘n’ for no. 
%Store the user’s response in a character variable called “letter.”
%If the user enters ‘y’ or ‘Y’, the script will print the user’s response and
%“OK, continuing.”
%If the user enters ‘n’ or ‘N’, the script will print the user’s response and
%“OK, halting.’
%If the user enters anything else, the script will print “Error.” 

letter = input('Enter y or n: ', 's');
if letter=='y' || letter=='Y'
    disp('OK, continuing.')
elseif letter=='n' || letter=='N'
    disp('OK, halting.')
else 
    disp('Error.')
end 

%% Problem 2
%Prompt user for base lengths and height of a trapezoid
%Calculate area of trapezoid if input is appropriate

b=input('Length of base 1: ');
c=input('Length of base 2: ');
h=input('Height: ');
%%function [T] = traparea(a,d,p)
%%%area of trap with bases a and d and height p
%%T=0.5*(a+d)*p;
%%end

if h<=0 || b<=0 || c<=0
    disp('Error. Values for Length are not negative or zero.')
else 
    fprintf('The area of the trapezoid is %3.1f inches cubed.\n', ...
        traparea(b,c,h))
end


%% Problem 3
%Chemicals in a lab are organized by concentration
%Print chemical name given a concentration

c=input('Concentration level: ');
if c>=0.1 && c<=8
    fprintf('Concentration value: %3.1f\nCategory 1: Hydrocholoric' ...
        'Acid in stock.\n', c)
elseif c>=9 && c<=20
    fprintf('Concentration value: %3.1f\nCategory 2: Ethanol' ...
        'in stock.\n', c)
elseif c>=21 && c<=70
    fprintf('Concentration value: %3.1f\nCategory 3: Melatonin' ...
        'in stock.\n', c)
elseif c>=71 && c<=85
    fprintf('Concentration value: %3.1f\nCategory 4: Sodium' ...
        'Hydroxide in stock.\n', c)
elseif c>=86 && c<=100
    fprintf('Concentration value: %3.1f\nCategory 5: Potassium' ...
        'Chloride in stock.\n', c)
else
    disp('Concentration not valid.')
end 

%% Problem 4
%Prompt user for letter and use ifelse statement to supply the listed
%response

letter=input('Input a letter: ', 's');
if letter=='x'
    disp('Carbon nano-tubes.')
elseif letter=='y' || letter=='Y'
    disp('Graphene.')
elseif letter=='Q'
    disp('Quit.')
else
    disp('Error.')
end

%% Problem 5
%Print area of chosen shape and given dimensions

shape = menu('Choose One', 'Rectangle', 'Circle', 'Cylinder')
if shape==1
        b=input('Enter the base: ');
        h=input('Enter the height; ');
        fprintf('The area of the rectangle with base %d inches and' ...
            'height %d inches is %3d inches squared.\n',b,h,b*h)
elseif shape==2
        r=input('Enter the radius: ');
        fprintf('The area of the circle with radius %d inches is' ...
            '%3.1f inches squared.\n',r,pi*r^2)
elseif shape==3
        p=input('Enter the radius: ');
        g=input('Enter the height: ');
        fprintf('The area of the cylinder with radius %d inches and' ...
            'height %d inches is %3.1f inches squared.\n',p,g,2*pi*p*g)
else
        disp('Error.')
end