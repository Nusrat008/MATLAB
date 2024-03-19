%x=input('Enter list of abscissas: ');

%f=input('Enter list of ordinates: ');
x=[1;1.1;1.3;1.4]
n = length(x);
f = zeros(1,n);
L = zeros(n,n);
for i=1:n
    f(1,i)=log(x(i));
end

for i=1:n %for making L_n *f(x_n)
    v=1;
    for j=1:n  %for making L_0,L_1,L_2 ....
        if i~=j
            v=conv(v,poly(x(j)))/(x(i)-x(j));
        end
    end
    L(i,:)= v*f(i);
end
L;
p = sum(L)

pow = n-1;
%Couldn't understand below
%F = flip(p);
disp('The polynomial is:')
for k=1:n-1
    fprintf('+(%.2fx^%d)',p(k),pow)
    pow = pow-1;
end
fprintf('+(%.2f)',p(n))
%matlabFunction(p)
%expand(p)



