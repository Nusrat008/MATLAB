clear all;
clc;
 format long

b = input('Enter b:');
a = input('Enter a:');
n =input('Enter n:');
%a=1; b = 2; n = 4;

h = (b-a)/n;


x =a:h:b;
f = (cos(x)).^2;

N = n+1;

%h = x(2)-x(1);
%f(end) or f(N)
trapezoidal = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

% trapz(x,f)




