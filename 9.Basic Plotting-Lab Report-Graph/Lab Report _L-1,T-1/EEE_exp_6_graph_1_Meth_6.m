x =[8.8
10
12
13.5
15.5
16.4
18.3
20.5
22.6
24.3
26.6];
y = [2.8792
3.047
3.1569
3.1872
3.2568
3.1900
3.2760
3.272
3.1709
3.0625
3.0129
];


p = polyfit(x, y, 1);
v = polyval(p, x);
figure(1)
plot(x,y,'x','MarkerEdgeColor','black')
hold on
plot(x, v)
hold off
grid on;
xlabel('Protein standard concentration (µg/µl)');