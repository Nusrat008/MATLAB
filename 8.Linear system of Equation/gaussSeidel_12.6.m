clc;
clear all;
A = [-8 1 -2;2 -6 -1;-3 -1 7];
b = [-20 -38 -34];
es = 0.00001;
maxit = 5;

x = GaussSeidel(A,b,es,maxit)
%GaussSeidel: Gauss Seidel method
% x = GaussSeidel(A,b): Gauss Seidel without relaxation
% input:
% A = coefficient matrix
% b = right hand side vector
% es = stop criterion (default = 0.00001%)
% maxit = max iterations (default = 50)
% output:
% x = solution vector

 %{
while k<=N
 
     for i=1:4
         
         
     end
        norm(x-xo,inf)<Tol;
     k = k +1;
     end
 %}
 
