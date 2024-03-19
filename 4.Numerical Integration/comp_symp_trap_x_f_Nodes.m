clear all;
%clc;

%x = linspace(0,pi/2,N);
%f = sin(x);

x=[0.7 0.95 1.2];
f =[ 0.4966 0.3867 0.3012];
N=length(x);

h = 0.25;

% trap = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

simpson = (h/3)*(f(1)+f(N)+4*sum(f(2:2:N-1))...
    + 2*sum(f(3:2:N-2)))
trapezoidal = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

