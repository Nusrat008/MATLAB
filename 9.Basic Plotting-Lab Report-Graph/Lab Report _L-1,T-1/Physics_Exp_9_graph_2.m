x =[60 104.5 147.5 250 284.3]
y =[0.2 0.2 0.32 0.5 0.6];

%%plot(x,y,'-o')
%%grid on
%%hold on

ph0p = plot([0,x],[0,y],'-o');
grid on 
i_xy = 3;
ph0p = plot([0,x(i_xy)],[0,y(i_xy)],'-o');
hold on
plot(x,y,'o')
grid on 