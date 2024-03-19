x = [0 2 5]; % same data as for lagrangian
f = [1 10 4];
xi = 10;

n = length(x);
Q = zeros(n,n);
for i = 1:n
    Q(i,1) = f(i);
end
for i = 2:n
    for j = 2:i-1
        Q(i,j) = ((xi-x(i-j+1))*Q(i,j-1) - (xi-x(i))*Q(i-1,j-1))/...
            (x(i)-x(i-j+1));
    end
    Q(i,i) = ((xi-x(1))*Q(i,i-1) - (xi-x(i))*Q(i-1,i-1))/(x(i)-x(1));
end
forma  t long;
disp(Q);