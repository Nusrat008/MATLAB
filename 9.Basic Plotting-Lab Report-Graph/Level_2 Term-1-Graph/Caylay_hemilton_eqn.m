clc;

A = [1 20 3;5 21 9;7 8 5];
b = [8 5 4]';

%using inverse operation
x1 = A^-1 *b

%display sum operation 
sum_Mat(A)

 %Maximum value of A:
 
 max(max(A))

poly(A);
c = A^-1

%inverse A using polynomial equation
inva = (A^2 -12*A - 62*eye(3))/28

x = inva*b;
disp(x)

%Find eigen vlaue of A:

eig_val_A = eig(A)

%Find eigen vectors of A:
[v d] = eig(A)


