clear all;
clc;
%this will plot  y(x)=x^2-5x+6

x1=linspace(0,10,51);
y1 = x1.^2-5*x1+6;

x2=linspace(0,2*pi,51);
y2 = sin(x2);

figure(1)
subplot(1,2,1)
plot(x1,y1)
grid on
xlabel('x')
ylabel('x^2-5x+6')
title('plot of Y(x)=x^2=5x+6')


subplot(1,2,2)
plot(x2,y2)
xlabel('x')
ylabel('sin(x)')
title('plot of y(x)=sin(x)')
grid on


% figure(2)
subplot(1,2,1)
plot(x1,y1)
grid on
xlabel('x')
ylabel('x^2-5x+6')
title('plot of Y(x)=x^2=5x+6')


subplot(1,2,2)
plot(x2,y2)
xlabel('x')
ylabel('sin(x)')
title('plot of y(x)=sin(x)')
grid on






