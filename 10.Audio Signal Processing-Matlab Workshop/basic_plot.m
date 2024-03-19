clc;
clear all;
% 
% x=[10:15]; %x data
% y1=[15,14,7,20,15,5]; %y1 data
% y2=[20,0,19,15,18,19];%y2 data
% 
% subplot(2,1,1);
% plot(x,y1)
% title('xy plot');
% xlabel('xlabel');
% ylabel('ylabel');
% 
% %hold on
% subplot(2,1,2);
% plot(x,y2);

%x=-10:0.1:10;
% x=linspace(-10,10,500);
% 
% y=sin(x);
% plot(x,y,'g')

a = 10;
t = 0 : 0.01 : 10;
A = a*sin(t);

subplot(121),plot(t,A);
title('1')
B = a*cos(t);
subplot(122),plot(t,B);
title('2')
