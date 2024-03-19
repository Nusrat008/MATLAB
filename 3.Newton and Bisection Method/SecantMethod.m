f = @(x) 6-2*(x-cos(x));
x0=2;
x1=3;
n=20;
err =0.001;
disp('Iteratioin      x0     x1       xi        yi')

for i = 1:n
    xi = (x1*f(x0) - x0*f(x1))/(f(x0) - f(x1));
    yi = f(xi);x
    fprintf('%5i %13.6f  %9.6f %9.6f %10.6f\n',i ,x0,x1,xi,yi)
    if yi ==0
        fprintf('An exact solution x=%11.6f was found',xi)
        break
    end
    if abs((xi - x1)/x1) < err
        break
    end
    x0=x1;
    x1 = xi;
end
if i==n
    fprintf('Solution was not obtained in %i iteration',n)
end
        