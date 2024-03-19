function [ x] = HornerAlg( a,x0 )

%a = vector of polynomial coefficient listed as the coefficient of the
%highest degree term in polynomial

%   x0 - value that want the polynomial evaluated at
n = length(a);
xi = a(1);
for i = 2:n
    xi = xi*x0 + a(i)
    
end
x = xi;

