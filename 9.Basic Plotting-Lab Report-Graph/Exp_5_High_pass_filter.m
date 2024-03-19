clear all;

x = [20 100 500 1000 1200 1400 1500 1600 1700 2000 3500 5000 10000 50000 100000 200000];

y = [0.047 0.059 0.291 0.509 0.568 0.616 0.636 0.656 0.670 0.704 .744 0.690 .469 0.0226 .0113 .0113];
%%y = [10.61 9.588 9.39 8.768 7.665 6.703 5.77 4.865 3.9597 .735 .0849 .034 0.034 .034 .011 ];

plot(x,y,'LineWidth',3.5)
p = polyfit(x,y)
grid on, axis equal
xlabel('Voltage,V_D(volt)'),ylabel('Current,I_f(mA)');
title('Voltage across vs Current through Diode')
axis([0 1.2 0 1.3])
%axis([0 5 -1 3])
% x = [0:0.01:10];
% y = sin(x);
% plot(x, y), xlabel('x'), ylabel('Sin(x)'), title('Sin(x) Graph'),
% grid on, axis equal