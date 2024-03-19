x=input('Enter list of abscissas: ');
f=input('Enter list of ordinates: ');

n = length(x);
L = zeros(n,n);

for i=1:n %for making L_n *f(x_n)
    v=1;
    for j=1:n  %for making L_0,L_1,L_2 ....
        if i~=j
            v=conv(v,poly(x(j)))/(x(i)-x(j))
        end
    end
    L(i,:)= v*f(i);
end
L