%% Homework 4

%% Problem 1
%Load and display data from given file
%Each row in a separate figure

load matdata.dat
[m n]=size(matdata);
for p = 1:m %for each row
    figure(p)
    x = 1:n; %all entries in row
    y = matdata(p, x);
    plot(x, y, '-k') %plot data from current row
end 

%% Problem 2
%From random matrix find max of each row and column and overall max
%See included functions mymax, cmymax, maxmax

m = input('Please enter number of rows: ');
n = input('Please enter number of columns: ');
mat = randi(50, m, n);

for p = 1:m; %over each row
    v = mat(p,:); %the whole row
    fprintf('The max of row %2.0f is %2.0f.\n', p, mymax(v))
end

for f = 1:n; %over each column
    d = mat(:, f); %whole column
    fprintf('The max of column %2.0f is %2d.\n', f, cmymax(d))
end

fprintf('The overall max is %2d.\n', maxmax(mat,m,n))

%% Problem 3
%Create a table of values calculated from coulombs law
%Distance in m
%First charge is electron, second is variable charge
%See function coulomblaw

%function Force = coulomblaw(p,r)
%calculates force for charge p with radius r from electron
%Force = 8.98*(10^9)*abs(1.6*(10^-19)*p)/(r^2);
%end

fprintf('Electrostatic Forces\n')
fprintf('Distance: ') %table headers

for t = 1:4;
    fprintf('%8d', t); %distance btwn charges
end

fprintf('\n')
fprintf('Charge: \n')

for q2 = 0:(10^-19):(10^-18); %variable charges
    fprintf('%.1e', q2)
    
    for radius = 1:4
        fprintf('%10.2e', coulomblaw(q2,radius)) %force at each distance
    end
    
    fprintf('\n\n')
end