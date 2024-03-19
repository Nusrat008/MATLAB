x =[50.2 100.3 150.2 200.25 250.7]
y = [1 2 3 4 5];

%%plot(x,y,'-o')
%%grid on
%%hold on

ph0p = plot([0,x],[0,y],'-o');
grid on 
i_xy = 8;
ph0p = plot([0,x(i_xy)],[0,y(i_xy)],'-o');
hold on
plot(x,y,'o')
grid on 