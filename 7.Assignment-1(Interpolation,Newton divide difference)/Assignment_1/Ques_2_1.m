X=[0;0.25;0.5;1];
y=[1;1.2163;1.357;1.38177];

n = length(y);
syms x;

S=0;
for i=1:n
    L=1;
    for j =1:n
        if j~=i
            L =L*(x-X(j))/(X(i)-X(j));
        end
    end
    S = S + y(i)*L;
end
S;
expand(S)