clear all;clc;
eps = 1e-4;

a = 1;b = 2;
i = 1;
p_old = a;
p = 0.5 *(a+b);

while abs(p-p_old)>eps
    
if(Fun(p) * Fun(a) > 0)
    a = p;
   
else
    b = p;
end
i = i +1;
p_old = p;
fprintf('%d \t %f\t %f\t %.10f\n',i,a,b,p)
p = 0.5 *(a+b);
end
%fprintf('%d \t  %.10f\n',i,p)
%disp(p)


