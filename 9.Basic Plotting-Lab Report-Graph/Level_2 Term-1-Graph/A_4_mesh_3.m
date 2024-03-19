clc;
clear all;

%  i1 = 4.92+j0.87
%  (-j8)*i1 + (3+j4)*i2 = -5+j8.66

R = [1 0;-8i 3+4i]
v = [4.92+0.87i; -5+8.66i];

disp('V = ')
disp(v);


i = R^-1*v;

disp('Solution of Equations are: ');

disp(i);