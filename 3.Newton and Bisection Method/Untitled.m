x =linspace(-1,10)
y = (log10(x.^2+1)-(exp(0.4*x).*cos(pi.*x)))
plot(x,y)
grid on

