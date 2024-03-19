f =@(x) 6 - 2*(x-cos(x));
a = 2;
b = 3;
n =20;
tol = 0.001;
if f(a) * f(b)>0
    disp('Error:The function has the same sign at points a and b.')
else disp('Iteration a      b       c       f(c)')
    for i=1:n
        c = (a*f(b) - b*f(a))/(f(b)-f(a));
        toli= abs(c-b);
        fc = f(c);
        fprintf('%5i %13.6f  %9.6f %9.6f %10.6f\n',i ,a ,b,c,f(c))
        if fc==0
            fprinf('An exact solution x=%11.6f was found',c)
            break
        end
        if toli<tol
            break
        end
        if i==n
            fprintf('Solution was not %i in iteration',n)
            break
        end
        if f(a)*fc<0
            b = c;
        else a=c;
        end
    end
end