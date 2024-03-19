clear all;
 
x = [2 2.75 4];
f = 1./x;

plot(x,f,'bo');

xx = linspace(1,5,100);
ff= 1./xx;
hold on;
plot(xx,ff,'b-');

L = (1/22)*xx.^2-(35/88)*xx + 49/44;
plot(xx,L,'r-');