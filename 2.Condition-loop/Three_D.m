

u=-5:.2:5;
[x,y]=meshgrid(u,u);
Z= cos(x).*cos(Y).*exp(-sqrt(x.^2+y.^2)./4);
surf(x,y,Z)




view(-37.5,20)
axis('off')

hold on

%A unit sphere 
hold off
[x,y,z]=sphere(20);
surf(x,y,z)

%error bar
%fapprox = x ? x3
%3! , 0 ? x ? 2
% error = fapprox ? sin x
hold off
x=0:.1:2;
aprx2=x-x.^3/6;
er=aprx2-sin(x);
errorbar(x,aprx2,er)

% Error bound of polynomial and function
hold off
x_nodes = linspace(0.5,3,100);
fx =  log(x_nodes);
polynomial = (0.1970056*x_nodes.^3)-(1.06529*x_nodes.^2)...
    +(2.5324*x_nodes.^1)-(1.66686);
err = polynomial - fx;
errorbar(x_nodes,polynomial,err)

hold off
% contour 
%z = ?2x2 + xy + y2    |x| ? 5, |y| ? 5.
r=-5:.2:5;
[X,Y]=meshgrid(r,r);
Z=-.5*X.^2 + X.*Y + Y.^2;
cs=contour(X,Y,Z);
clabel(cs)

% z = ? 5
%  1 + x2 + y2
% |x| ? 3, |y| ? 3
x = linspace(-3,3,50);
y = x;
[x,y] = meshgrid(x,y);
z=-5./(1+x.^2+y.^2);
waterfall(z)
hidden off

% A unit sphere centered at the
% origin and generated by 3 matrices
% x, y, and z of size 21 � 21 each.

%sphere(20)
%or
[x,y,z]=sphere(20);
surf(x,y,z)

hold off
%An ellipsoid of radii rx = 1, ry = 2
%and rz = 0.5, centered at the origin.
cx=0; cy=0; cz=0;
rx=1; ry=2; rz=0.5;
ellipsoid(cx,cy,cz,rx,ry,rz)

hold off
%A cylinder generated by
%r = sin(3? z)+2    0 ? z ? 1, 0 ? ? ? 2?.
z= 0:.02:1;
r=sin(3*pi*z)+2;
cylinder(r)



% Slices of the volumetric function
% f(x, y, z) = x2 + y2 ? z2
% |x| ? 3, |y| ? 3, |z| ? 3 at x = ?2
% and 2.5, y = 2.5, and z = 0.
v = [-3:.2:3];
[x,y,z]=meshgrid(v,v,v);
f=(x.^2+y.^2-z.^2);
xv=[-2 2.5]; yv=2.5; zv=0;
slice(x,y,z,f,xv,yv,zv);
view([-30 30])
%The value of the function is indicated by the color intensity


