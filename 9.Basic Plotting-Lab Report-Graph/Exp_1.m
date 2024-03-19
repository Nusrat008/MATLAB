clear all;

x = [20 200 2000 5000 10000 15000 20000 25000 30000 50000 70000 100000 125000 150000 200000 ];
y = [10.663 9.617 9.39 8.25 7.835 6.845 5.94 5.035 4.13 0.82 0.368 0.339 0.316 0.315 0.313];
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