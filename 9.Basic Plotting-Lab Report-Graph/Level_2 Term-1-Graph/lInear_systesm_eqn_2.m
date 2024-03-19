clc;
A = [2 1 -1; 1 -2 5;3 5 -4];
b = [7; 2; 5];

Ab = [A b];

if rank(A) == rank(Ab)
    disp('Unique solutions')
else
    disp('Unique solutions does not exits')
end
  
x_inv = inv(A)*b
% x_blsah= A\b

    
    