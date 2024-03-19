clear all;
close all;
V=[4.63
5.06
5.48
5.86
6.35
6.71
7.12
7.49
7.9
8.19
8.32
8.56];
I=[0.5
0.48
0.46
0.44
0.42
0.4
0.38
0.36
0.34
0.33
0.32
0.31];
P=V.*I;
R=[9.26
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
27.61];
t=R;
y=P;


hold on;

y_when_t_is_4 = interp1(t,y,4);
xx=linspace(t(1),t(end),1000);
yy=interp1(t,y,xx,'spline');  % use whatever method suits you the best

x=xx
y4=max(yy);
line([x(1) x(end)],[y4 y4],'LineWidth',1)
plot(t,y,'o',xx,yy);








