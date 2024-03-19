x =3:1:18;
y = [.0615 .09 .1149 .1288 .1459 .173 .1927 .2246 .2672 .3058 .3364 .378 .4914 .495 .5184 .5098];

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