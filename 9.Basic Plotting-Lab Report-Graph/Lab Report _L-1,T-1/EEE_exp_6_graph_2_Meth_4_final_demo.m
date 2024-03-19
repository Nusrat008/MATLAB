XA = [9.8
10.5
11.5
%13.2
15.1
%16.2
%18
20.1
23.2
%24.2
25
27

];

YA = [2.315
2.4288
2.5208
%2.5784
2.667
%2.684
%2.7056
2.6964
2.686
%2.7027
2.6624
2.6536
];
x1 = [13.32 16.78 18.74 23.82];
y1 = [2.5784 2.684 2.7056 2.7027];
x = XA;
y = YA;
xi = linspace(min(x), max(x), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x, y, xi, 'spline', 'extrap');
figure(1)
plot(x, y, 'bp')

hold on
plot(xi, yi, '-r')

plot(x1,y1,'bp');
grid on
xlabel('X = R_L(ohms)')
ylabel('Y = P_L(W)')
 title('Plot P_L vs R_L(actual) graph')
 
legend('Original Data', 'Interpolation', 'Location', 'NE')