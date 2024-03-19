clear all;


x = [2 2.75 4]; % Here you can set all given x values
f = 1./x; % Here goes the given function values




N = length(x);


P = 0; % Lagrange Polynomial
for k = 1:N
    L = 1; % initialize Lagrange polynomial for each data point
    for i=1:N
        if i~=k
            L = conv(L, [1 -x(i)])/(x(k)-x(i));
        end
    end
    P = P + f(k)*L;
end


xj = input('Enter x: ');
display(polyval(P, xj))