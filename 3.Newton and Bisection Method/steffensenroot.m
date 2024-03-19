function [ yi ] = steffensenroot(f,x0)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


for i=1:100
    yi = x0-(f(x0)^2)/(f(x0+f(x0))-f(x0))
    if abs((yi-x0)/x0)<10^-6
        break;
    end
    x0 = yi;
end
if abs((yi - x0)/x0)>10^-6
    error('Failed to converge in 100 iterations.')
end

end

