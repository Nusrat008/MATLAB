clear all;
clc;
% format long


b = input('Enter b:');
a = input('Enter a:');
% n=input('Enter n:');
%a=1; b = 2; n = 4;

h = 0.25;


x =a:h:b;
f = x.^2.*log(x.^2+1);

N = length(x);

%h = x(2)-x(1);
%f(end) or f(N)
trapezoidal = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

% trapz(x,f)
sympson = (h/3)*(f(1)+f(N)+4*sum(f(2:2:N-1))...
    + 2*sum(f(3:2:N-2)))




