%You are mixing numerical functions with symbolic tools. The two do not mix that well .
%So just pick ONE, and stay with it. For example ...

syms x
gx = ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x ));
dgdx = diff(gx )
% Now we can find the roots of the derivative function. The local maxima of the absolute value will lie at those roots .
groots = solve(dgdx,x,'maxdegree',3 )
%They are not very useful in that form, so convert them to floating point values
groots = vpa(groots )
%You can see tiny imaginary parts, but they are irrelevant. They are just floaitng point trash. Discard the imaginary parts .
groots = real(groots )
%Now, evaluate the function at those points, take the absolute value, and find the largest of the local maxima .
localmaxima = abs(subs(gx,x,groots ))
gmax = max(localmaxima )
%Is this consistent with what we see in a plot ?
gfun = matlabFunction(gx );
fplot(@(x) abs(gfun(x)),[0,1 ])
yline(double(gmax),'r ');
xline(double(groots),'g ');
axis([0 1 0 0.03 ])
%I never moved away from symbolic