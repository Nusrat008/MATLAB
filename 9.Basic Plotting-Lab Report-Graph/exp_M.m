clear all;

x = [20 200 2000 5000 10000 15000 20000 25000 30000 50000 70000 100000 125000 150000 175000 200000 ];
y = [20.45 15.30 13.12 12.94 11.59 11.39 10.78 10.38 9.68 8.8 8.34 5.3 6.19 5.6 4.84 4.32];
%%y =[10.61 9.588 9.39 8.768 7.665 6.703 5.77 4.865 3.9597 .735 .0849 .034 0.034 .034 .011 ];

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