clear all;

t = 0:.5:4*pi
T = 2*pi
y = zeros(1,length(t))
i = 0;
%j = ['or-' 'd-' 'dk-' 'og-' 'o-']
for m = 1:1:1000
    n = 2*m-1
    y0 = (4/(n*pi))*sin(2*pi*n*t/T)
    y = y+ y0
    i = i+1
    subplot(1,2,1)
    %plot(t,y0,j(i))
    plot(t,y0,'o-')
    grid on
    %xgrid(4,1,3)
    xlabel('All individual sine wave','fontsize',4)
end
subplot(1,2,2)
plot(t,y,'ok-')
grid on
%xgrid(4,1,3)
xlabel('sum','fontsize',4)