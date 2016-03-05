function [ array ] = getvalues
array=[];
while length(array)<10
    n=input('Give me number: ');
    if n<0
       disp('Nope, positive plz');
    else 
        array=[array n];
    end
end 


end

