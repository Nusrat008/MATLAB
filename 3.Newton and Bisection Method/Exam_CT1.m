
%sir er ta    f = 1/Z-sqrt(1/(R^2)+(x*C-1./(x*L)).^2);
 f = @(x)  1/100-sqrt(1/(225^2)+(x*0.6*(10^-6)-1./(x*0.5)).^2)

%amar  ager   f=@(x) 0.01- ((1.975308*10^-5)+((.6*10^-6*x)-(2/x)^2))^0.5

% porer ta   f=@(x) ((1.975308*10.^-5)+((.6*10.^-6*x)-(2./x)^2)).^0.5-0.01

%stuendt der ta 
%   f=@(x) 1/(((1/225^2)+((x*.6*10^-6)-(1/(x*.5)))^2)^.5)-100


fplot(f,[150,300])
grid on
a = 200;
b = 250;
n = 25;
tol = 0.01;
fa= f(a);
fb = f(b);
if fa*fb>0
    disp('Error: the function has the same sign a point a and b')
else
    disp('Iteration   a          b          p         tol       f[p)')
    for i = 1:n
        p = (a+b)/2;
        %toli = (b-a)/2;
        toli = abs(p-b);
        fp = f(p);
       % fprintf('%5i %13.6f  %9.6f %9.6f %10.6f\n',i ,a ,b,c,f(c))
        fprintf('%5i %13.6f  %9.6f %9.6f  %9.6f  %10.6f\n',i,a,b,p,toli,fp)
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

