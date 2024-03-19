function [ xi ] =Newton_2( f,g,x0 )
%f = (1/2*x) - 1
%g = -1/2*x*x
%
%   Detailed explanation goes here

n = 5;
for i = 1:n
xi = x0 - f(x0)/g(x0);
x0 = xi;
end

end

