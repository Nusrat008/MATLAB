clear all;clc;

a =0;b = 1;

n = 3;
i = 1;
p_old = a;
p = .5*(a + b);

while i<=n
    fprintf('%d %f\n',i,p);
    if fun1(p_old)*fun1(p) >0
        a = p;
    else
        b = p;
    end
    i = i + 1;
    p_old = p;
    p = .5*(a + b);
    
end


