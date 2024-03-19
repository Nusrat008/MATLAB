clc;
A = [2 4 6; 3 -2 1;1 2 3];
b = [7; 2; 5];

ab = [A b];

if rank(A) == rank(Ab)
    disp('Unique solutions')
else
    disp('Unique solutions does not exits')
end
  
x_inv = inv(A)*b
x_blsah= A\b

    
    