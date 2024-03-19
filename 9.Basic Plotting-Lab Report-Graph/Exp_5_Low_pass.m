clear all;

x = [20 100 500 1000 1200 1400 1500 1600 1700 2000 3500 5000 10000 50000 100000 200000];
y = [0.928 0.926 0.922 0.920 .907 0.901 0.897 0.893 0.890 0.876 0.809 0.716 0.435 0.0192 0.0112 0.0112];
%%y = [10.61 9.588 9.39 8.768 7.665 6.703 5.77 4.865 3.9597 .735 .0849 .034 0.034 .034 .011 ];

plot(x,y,'LineWidth',3.5)
p = polyfit(x,y)
grid on, axis equal
xlabel('Voltage,V_D(volt)'),ylabel('Current,I_f(mA)');
title('Voltage across vs Current through Diode')
axis([0 1.2 0 1.3])
