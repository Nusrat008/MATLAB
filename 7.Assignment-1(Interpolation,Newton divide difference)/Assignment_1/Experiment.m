% Perform Newton Interpolation on function func
% evaluated at points x(1:n)
% function [c,err,NewtonTable] = NewtonInterp(func,x,plt)
%
% Inputs:
%  func = name of function to be interpolated
%  x = array of n points at which to perform interpolation
%  plt = 1 to produce graphics, 0 not to
%
% Outputs:
%  c = n+1 coefficients of interpolation polynomial 
%        p(x) = sum from i=0 to n c(i+1) * (x-x(1))*...*(x-x(i))
%  err = maximum  difference |p(x)-func(x)| at
%        1000 equally spaced points in interpolation interval
%  NewtonTable = divided difference table (see page 355 of text)
%  if plot = 1, plot of func(x), p(x) at 1000 equally space points
%               plot of |func(x)-p(x)| at 1000 equally space points
%
function [c,err,NewtonTable] = NewtonInterp(func,x,plt)
xmin = min(x);
xmax = max(x);
xx = xmin:(xmax-xmin)/999:xmax;
n = length(x);
%
% add points to xx near interpolation points
%
near = 1+(-10:10)*eps;
near0 = 10.^(-5:-5:-15);
for i=1:n,
  if (x(i) ~= 0)
     xx = [xx,near*x(i)];
  else
     xx = [xx,near0,-near0];
  end
end
xx = sort(xx);
%
% Compute Divided Difference Table
NewtonTable = zeros(n,n+1);
NewtonTableErr = zeros(n,n+1);
NewtonTable(1:n,1) = reshape(x,n,1);
NewtonTable(1:n,2) = eval([func,'(NewtonTable(1:n,1))']);
NewtonTableErr(1:n,2) = eps*abs(NewtonTable(1:n,2));
for j=1:n-1,
   NewtonTable(1:n-j,j+2) = ...
       (NewtonTable(2:n-j+1,j+1) - NewtonTable(1:n-j,j+1)) ./ ...
       (NewtonTable(j+1:n,1)   - NewtonTable(1:n-j,1));
   NewtonTableErr(1:n-j,j+2) = ...
       ( eps*abs(NewtonTable(2:n-j+1,j+1) - NewtonTable(1:n-j,j+1)) + ...
       NewtonTableErr(2:n-j+1,j+1) + NewtonTableErr(1:n-j,j+1) ) ./ ...
       (NewtonTable(j+1:n,1)   - NewtonTable(1:n-j,1));
end
c = NewtonTable(1,2:n+1);
cbnd = NewtonTableErr(1,2:n+1);
%
% Evaluate Newton Interpolation polynomial at xx, compute error, 
% bound error from roundoff in forming and evaluating the
% Newton polynomial
p = c(n)*ones(size(xx));
pbnd1 = eps*abs(p);
pbnd2 = cbnd(n);
for i = n:-1:2,
    p = p.*(xx-x(i-1)) + c(i-1);
    pbnd1 = pbnd1.*abs(xx-x(i-1)) + eps*abs(c(i-1));
    pbnd2 = pbnd2.*abs(xx-x(i-1)) + cbnd(i-1);
end
fxx = eval([func,'(xx)']);
fx = eval([func,'(x)']);
err = max(abs(fxx-p));
%
% Plot
if (plt == 1)
   figure(1)
   hold off, clf
   plot(xx,fxx,'b.',xx,p,'r',x,fx,'bx')
   grid
   title('f(x) = blue, (xi,f(xi)) = blue x, p(x) = red')
   xlabel(['Maximum error = ',num2str(err)])
   figure(2)
   hold off, clf
%  semilogy(xx,abs(fxx-p),'b',xx,pbnd1,'r.',xx,pbnd2,'g.'), grid
   semilogy(xx,abs(fxx-p),'b',xx,pbnd1,'r.'), grid
   title('|f(x) - p(x)| = blue, roundoff in p(x) = red')
   maxy = max(abs(fxx-p))
   lm = ceil(log10(maxy)/5)
   lmm = 10^(-5*lm)
   axis([min(xx)-.1*max(abs(xx)), max(xx)+.1*max(abs(xx)), ...
         1e-20*lmm, lmm]);
%  figure(3)
%  semilogy((1:n),abs(c),'bx',(1:n),cbnd,'rx'), grid
%  title('coeff = blue, bound on coeff = red')
end
