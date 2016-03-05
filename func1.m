function [Y, Z] = func1(X)
%Y = X's rows in acending order
%Z is X with columns sorted in acending order
[row, col] = size(X);
Y = zeros(size(X)); %empty matrix where output will go with rows sorted
for i = 1:row %cycle thru rows of input matrix
        for j = 1:(col) %cycle thru columns of input matrix
           l = 0; % counts how many times an element is greater than another element in its row
           p = 0; %counts how many times an element occurs in a row
           f = X(i,j); %element in X
           for a = 1:col %cycle thru columns to compare element to others
               q = X(i, a); %element in X for comparison
               if f > q; 
                   l = l + 1; %counts higher for everytime a lesser value is encountered, will determine place of value
               elseif q == f;
                   p = p+1; %counts higher for each time an element appears
               end 
           end 
               if p == 1; %element only appears once
                   Y(i, l+1) = f; %element placed in output matrix
               elseif p ~= 1 %element occurs mult times
                   Y(i, l+1:l+p) = f; %element placed in output matrix
               end 
        end 
end  
clear f q l p i j a %clears variables to begin working on Z
Z = zeros(size(X)); %will have col sorted in decending order
for j = 1:col %cycle thru columns of input matrix
        for i = 1:row %cycle thru rows of input matrix
           l = 0; % counts how many times an element is less than another element in its col
           p = 0; %counts how many times an element occurs in a col
           f = X(i, j); %element in X
           for a = 1:row %cycle thru rows to compare element to others
               q = X(a,j); %element in X for comparison
               if f < q; 
                   l = l + 1; %counts higher for everytime a greater value is encountered, will determine place of value
               elseif q == f;
                   p = p + 1; %counts higher for each time an element appears
               end 
           end 
               if p == 1; %element only appears once
                   Z(l+1, j) = f; %element sorted into place in Z
               elseif p ~= 1 %element occurs mult times
                   Z(l+1:l+p,j) = f;  %element sorted into place in Z
               end 
        end 
end  
end 