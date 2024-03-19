t= 0:pi/50:10*pi;
subplot(1,2,1);plot(sin(t),cos(t))
axis square
title('(a)')
subplot(1,2,2);plot3(sin(t),cos(t),t)
title('b')


