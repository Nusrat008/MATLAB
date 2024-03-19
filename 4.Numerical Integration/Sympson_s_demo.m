clear all;

N = 101;
x = linspace(0,pi/2,N);
f = sin(x);
h = x(2)-x(1);

% trap = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

simpson = (h/3)*(f(1)+f(N)+4*sum(f(2:2:N-2))...
    + 2*sum(f(3:2:N-3)))

