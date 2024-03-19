clear all;
clc;

%x = linspace(0,pi/2,N);
%f = sin(x);

x=[1.8 2 2.2 2.4 2.6];
f =[3.12014 4.42569 6.04241 8.03014 10.46675];
n=length(f);
N=4;

h = x(2)-x(1)

% trap = 0.5*h*(f(1)+f(N)+2*sum(f(2:N-1)))

simpson_3_8 = (3*h/8)*(f(1)+f(N)+3*sum(f(2:1:N-1)))


y = [2.4 2.6];
fy=[8.03014 10.46675];

trap = trapz(y,fy)


integral = simpson_3_8 + trap


