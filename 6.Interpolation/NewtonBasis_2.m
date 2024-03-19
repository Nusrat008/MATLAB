x = linspace(-1,5,101);
f1 = 2.*x.^3 - 3.*x.^2 + 4;
xm = [0,1,3,4];
ym = [4,3,31,84];
plot(x,f1,xm,ym,'kx');
xlabel('x')
ylabel('f(x)')