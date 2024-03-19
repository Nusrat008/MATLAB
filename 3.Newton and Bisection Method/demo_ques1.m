a = 0;b =1;

p_old=a;
p = 0.5 * (a+b);

n = 10;
i = 1;
while i<=n
    fprintf('%d  %f\n',i,p)
    if fun1(p)* fun1(p_old)>0
     a = p;
    else 
        b = p;
    end
    
    p_old = p;
    p = 0.5 * (a+b);
    i = i+1;
end
