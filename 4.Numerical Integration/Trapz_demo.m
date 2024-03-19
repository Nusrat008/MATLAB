clear all;
clc;
% format long

% Integral of sin(x) [0,pi/2=3.1416/2]
x = linspace(0,pi/2,100);
f = sin(x);

N = 100;

h = x(2)-x(1);
%f(end) or f(N)
integral = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

% trapz(x,f)




