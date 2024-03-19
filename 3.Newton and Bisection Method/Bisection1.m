f= @(x) 6- 2*(x-cos(x));
%fplot(f,[-5,5]
fplot(f,[-5,5])
grid
%plot shows that the solution between a,b
a = 2;
b = 3;
n = 20;
tol = 0.001;
fa= f(a);
fb = f(b);
if fa*fb>0
    disp('Error: the function has the same sign a point a and b')
else
    disp('Iteration   a          b          p         f[p)')
    for i = 1:n
        p = (a+b)/2;
        toli = (b-a)/2;
        fp = f(p);
       % fprintf('%5i %13.6f  %9.6f %9.6f %10.6f\n',i ,a ,b,c,f(c))
        fprintf('%5i %13.6f  %9.6f %9.6f %10.6f\n',i,a,b,p,fp)
        if fp ==0
            fprintf('An exact solution x = %11.6f was found',p);
            break
        end
        if toli<tol
            break;
        end
        if i==n
            fprinf('Solution was not obtained in %i iterations',n);
            break
        end
        if f(a)*fp<0
            b = p;
        else a = p;
        end
    end
end

