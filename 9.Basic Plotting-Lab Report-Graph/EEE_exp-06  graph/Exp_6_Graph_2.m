clc
clear all;
close all;
R_L = [9.26
10.54
11.91
13.32
15.12
16.78
18.74
20.8
23.24
24.82
26
27.61
];

P_L = [2.315
2.4288
2.5208
2.5784
2.667
2.684
2.7056
2.6964
2.686
2.7027
2.6624
2.6536
];
%x1 = [15.12 16.78 18.74 24.82];
%y1 = [2.667 2.684 2.7056 2.7027];
x = R_L;
y = P_L;
xi = linspace(min(x), max(x), 1000);                     
yi = interp1(x, y, xi, 'spline', 'extrap');
figure(1)
plot(x, y, 'o')

hold on
plot(xi, yi, '-b')

%plot(x1,y1,'o');
grid on
xlabel('R_L(ohms)')
ylabel('P_L(W)')
title('2.P_L vs R_L graph')
 
%legend('Original Data', 'Interpolation', 'Location', 'NE')