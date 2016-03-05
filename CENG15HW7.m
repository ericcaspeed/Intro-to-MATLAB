%% Homework 7

%% Problem 1
%Create function that takes an input matrix then outputs two matrices.
%First output will have rows sorted in ascending order
%Second output will have columns sorted descending order
%See func1

%function [Y,Z] = func1(X)
%Y = X's rows in acending order
%Z is X with columns sorted in acending order
%[row, col] = size(X);
%Y = zeros(size(X)); %empty matrix where output will go with rows sorted
%for i = 1:row %cycle thru rows of input matrix
%        for j = 1:(col) %cycle thru columns of input matrix
%           l = 0; % counts how many times an element is greater than another element in its row
%           p = 0; %counts how many times an element occurs in a row
%           f = X(i, j); %element in X
%           for a = 1:col %cycle thru columns to compare element to others
%               q = X(i,a); %element in X for comparison
%               if f > q; 
%                   l = l+1; %counts higher for everytime a lesser value is encountered, will determine place of value
%               elseif q == f;
%                   p = p + 1; %counts higher for each time an element appears
%               end 
%           end 
%               if p == 1; %element only appears once
%                   Y(i, l + 1) = f; %element placed in output matrix
%               elseif p ~= 1 %element occurs mult times
%                   Y(i, l+1:l+p) = f; %element placed in output matrix
%               end 
%        end 
%end  
%clear f q l p i j a %clears variables to begin working on Z
%Z = zeros(size(X)); %will have col sorted in decending order
%for j = 1:col %cycle thru columns of input matrix
%        for i = 1:row %cycle thru rows of input matrix
%           l = 0; %counts how many times an element is less than another element in its col
%           p = 0; %counts how many times an element occurs in a col
%           f = X(i,j); %element in X
%           for a = 1:row %cycle thru rows to compare element to others
%               q = X(a,j); %element in X for comparison
%               if f < q; 
%                   l = l + 1; %counts higher for everytime a greater value is encountered, will determine place of value
%               elseif q == f;
%                   p = p + 1; %counts higher for each time an element appears
%               end 
%           end 
%               if p == 1; %element only appears once
%                   Z(l+1, j) = f; %element sorted into place in Z
%               elseif p ~= 1 %element occurs mult times
%                   Z(l+1:l+p, j) = f;  %element sorted into place in Z
%               end 
%        end 
%end  
%end 

A = randi(50, 5, 5)
[B, C] = func1(A)


%% Problem 2
%Test how random the random integer function is
%Generates a random integer and sorts it into one of three categories
%If a category is entered too many times the loop will stop

%question allows for you to enter a case 3 times after initial time, then
%loop ends
%loop also ends if each case is entered
%lets you know what case you entered each time and if first or invalid
p = 0; %how many times case a entered
i = 0; %how many times case b entered
j = 0;%how many times case c entered
 while i <= 3 && j <= 3 && p <= 3;
        k = randi([0,20]);
        if k >= 0 && k <= 7
            p = p + 1; %how many times entered A
            if p > 1 %case entered more than once
                fprintf('Invalid, Case A has already been entered.\n');
            elseif p == 1;
                fprintf('Congratulations, you entered Case A.\n') 
            end
        elseif k >= 8 && k <= 14
            i = i + 1; %how many times entered B
            if i > 1 %case entered more than once
                fprintf('Invalid, Case B has already been entered.\n');
            elseif i == 1
                fprintf('Congratulations, you entered Case B.\n');
            end 
        elseif k >= 15 && k <= 20
            j = j + 1; %how many times entered C
            if j > 1 %case entered more than once
            fprintf('Invalid, Case C has already been entered.\n');
            elseif j == 1;
                fprintf('Congratulations, you entered Case C.\n')
            end 
        end
        if p==4 || j==4 || i==4 %a case was entered 3 times after first entrance 
            fprintf('That random generator wasn’t random enough.\n');
        elseif p >= 1 && i >= 1 && j >= 1
            fprintf('Good job, you have entered all cases.\n');
            p=10; %terminates while loop
        end
end
