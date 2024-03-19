x = linspace(0,2,101);
f1 = exp(-1./x);
f2 = -0.145.*x.^2 + 0.6505.*x-0.1372;
xm = 1.1:0.1:1.3;
ym = exp(-1./xm);
plot(x,f1,x,f2,xm,ym,'kx');

xlabel('x')
ylabel('f(x)&P(x)')
legend('exp(-1/x)','-0.145 x^2 + 0.6505x-0.1372',...
    'Location','northwest')

