%%%1
x=[0 1 2 3 4 5 6];
y=[0 .8415 .9093 .1411 -.7568 -.9589 -.2794];
sum=0;
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    term = p*y(i);
    sum= sum + term;
end
disp(sum);



%%%%%%2
function yi = lagrange(x,y,xi)
if nargin < 3
    x=input('x=');
    y=input('y=');
    xi=input('xi=');
end
n = length(x);
ni = length(xi);
L = ones(ni,n);
for j = 1:n
    for i = 1:n
        if (i ~= j)
            L(:,j) = L(:,j).*(xi' - x(i))/(x(j)-x(i));
        end
    end
end
yi = y*L';

%%%%Code for error
function [pl] = poly_lagrange(xnodi,ynodi)
%poly-lagrange: Lagrange Polynomial coefficients (order-n)
%
%pl = poly_lagrange (x,y)
%
%INPUT:     x = interpolation nodes;
%           y = values to be interpolated;
%
%OUTPUT:    pl = coefficents of Lagrange Polynomial Pn(x).
%
%   They are defined as:
%   pl = [pl(1), pl(2), ... , pl(n)]
%   -> Pn(x) = pl(1) + pl(2)*x + ... + pl(n)*x^n.
%
%This function compute the Lagrange Polynomial of order-n, given two
%couples of (column) vectors:
%x = [x(1),x(2), ... , x(n)] and y = [y(1), y(2), ... , y(n)].
%
%Differently from other similar functions, poly_lagrange does not need 
%points to directly evaluate the polynomial: it gives, as output, only the coefficients
%of Lagrange Polynomial to be evaluated using other built-in functions
%(e.g. polyval).
%
%EXAMPLE: Effect of Lagrange Interpolation of Runghe Function.
%
%x = linspace (-5,5,10);
%y = 1./(1+x.^2);
%
%pl = poly_lagrange(x,y);
%x_pl = linsplace (-5,5,1000);
%y_pl=polyval(pl,x_pl);
%
%plot(x,y,'o',x_pl,y_pl),legend('Points','Lagrange Polynomial');
%
%References: A. Quarteroni, R. Sacco, F. Saleri, Numerical Mathematics,
%Springer-Verlag (2000), pag. 328.
%
%Autor: Copyright © 2015, Marco Bilucaglia, B.Sc.Eng. (Electronics)
%       e-mail: m.bilucaglia@ieee.org
%
[rx,cx]=size(xnodi);
[ry,cy]=size(ynodi);
if rx>1 || ry>1 
    error('Error! No column-vectors as input!');
end
if cy~=cx;
    error('Error! Dimension of input vectors don''t agree!');
end
n=cx;
L=zeros(n,n);
h=waitbar(0,'Computing Coefficients. Waiting...');
for i=1:n
    waitbar(i/n,h,sprintf('\nCoeff. %.0d of %.0d',i,n));
    
    x_temp=xnodi;
    x_temp(i)=[]; 
    
    L(i,:)=poly_prod(-x_temp);
    L(i,:)=ynodi(i)*L(i,:)/poly_diff(xnodi(i),x_temp); 
   
end
close(h);
pl=sum(L,1); 
end
function [x_out] = poly_diff(x0,x)
[~,n]=size(x);
x_out=1;
for i=1:n
    
    x_out=x_out*(x0-x(i));
    
end
end
function [p] = poly_prod(p1)
[~,n]=size(p1);
p=zeros(1,n+1);
p(1)=1;
for j=1:n
    
    p=conv(p, [1, p1(j)]);
    
end
p(n+2:end)=[];
end
    
