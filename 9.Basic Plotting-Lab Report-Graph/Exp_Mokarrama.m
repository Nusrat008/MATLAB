clear all;

x = [20 200 2000 5000 10000 15000 20000 25000 30000 50000 70000 100000 125000 150000 175000 200000];
y = [2.15 2.02 1.96 1.85 1.65 1.45 1.33 1.10 1.07 0.85 0.35 0.24 0.16 0.09 0.06 0.03];
plot(x,y)
grid on, axis equal

axis([0 1.2 0 1.3])

%axis([0 5 -1 3])
% x = [0:0.01:10];
% y = sin(x);
% plot(x, y), xlabel('x'), ylabel('Sin(x)'), title('Sin(x) Graph'),
% grid on, axis equal