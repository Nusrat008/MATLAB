XA = [8.8
10
12
13.5
15.5
16.4
18.3
20.5
22.6
24.3
26.6
];
YA = [2.8792
3.047
3.1569
3.1872
3.2568
3.1900
3.2760
3.272
3.1709
3.0625
3.0129];
x = XA;
y = YA;
xi = linspace(min(x), max(x), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x, y, xi, 'spline', 'extrap');
figure(1)
plot(x, y, 'bp')

hold on
plot(xi, yi, '-r')
hold off
grid
xlabel('X')
ylabel('Y')
legend('Original Data', 'Interpolation', 'Location', 'NE')