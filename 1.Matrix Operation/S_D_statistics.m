clc;
clear all;


A = randi([150,250],10,10)
%sum
sum_Mat(A,1);
sum_row = sum(A,2)

max_A = max(max(A));k

disp('max of A: ')
disp(max_A)


min_A = min(min(A));
disp('min of A: ')
disp(min_A)


sd_col = std(A);
disp('SD of column: ')
disp(sd_col)

sd_row = std(A,[],2);
disp('sd of row: ')
disp(sd_row)



