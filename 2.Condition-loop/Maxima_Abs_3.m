syms x
gx = ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x));
dgdx = diff(gx)
groots = solve(dgdx,x)
groots = vpa(groots)
groots = real(groots)
localmaxima = abs(subs(gx,x,groots))
%gmax = max(localmaxima)
gmax=0.027
gfun = matlabFunction(gx);
fplot(@(x) abs(gfun(x)),[0,1])
yline(double(gmax),'r');
xline(double(groots),'g');
axis([0 1 0 0.03])