XA = [8.27
10.07
12.13
13.83
%15.39
16.47
%18.57
%20.45
%23.16
25
27.67
];

YA = [2.8792
3.047
3.1569
3.1872
%3.2568
3.1900
%3.2760
%3.272
%3.1709
3.0625
3.0129
];
x1 = [15.39 18.57 20.45 23.16];
y1 = [3.2568 3.2760 3.272 3.1709];
x = XA;
y = YA;
xi = linspace(min(x), max(x), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x, y, xi, 'spline', 'extrap');
figure(1)
plot(x, y, 'bp')

hold on
plot(xi, yi, '-b')

plot(x1,y1,'bp');
grid on
xlabel('X = R_L(ohms)')
ylabel('Y = P_L(W)')
%title(' 1. Plot P_L vs R_L graph')
title('P_L vs R_L graph')
 
%legend('Original Data', 'Interpolation', 'Location', 'NE')