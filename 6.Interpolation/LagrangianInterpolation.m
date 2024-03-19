function yi = LagrangianInterpolation(x,y,xi)
% x,y - row-vectors of (n+1) data values (x,y)
% xi - a row-vector of x-values
% yi - a row-vector of interpolated y-values
n = length(x);
for i=1:n
    L(i)=1;
    for j=1:n
        if j~=i
            L(i)=L(i)*(xi-x(j))/(x(i)-x(j));
        end
    end
end
yi=sum(y .* L);