clear all;
clc;

%x = linspace(0,pi/2,N);
%f = sin(x);

x=[0 6 12 18 24 30 36 42 48 54 60 66 72 78 84];
f =[124 134 148 156 147 133 121 109 99 85 78 89 104 116 123];
N=length(x);

h = 6;

% trap = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

simpson = (h/3)*(f(1)+f(N)+4*sum(f(2:2:N-1))...
    + 2*sum(f(3:2:N-2)))
trapezoidal = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

