clc;
clear all;
disp('enter irr filter spcification')
rp = input('enter passband ripple: ');
rs = input('enter stopband ripple: ');
wp = input('enter passband freq: ');
ws = input('enter stopband freq: ');
fs = input('enter sample frequecy: ');

w1 = (2*wp)/fs
w2 = (2*ws)/fs
[n,wn] = buttord(w1,w2,rp,rs,'s');
disp('frequency reponse of IIR HPR is: ')

[b,a] = butter(n,wn,'high','s');
w = 0:0.001:pi;
[h,om] = freqs(b,a,w);
m = 20*log10(abs(h));
an = angle(h);
figure,subplot(2,1,1);
plot(om/pi,m);
grid on
title('magnitude response of IIR filter is: ');
ylabel('gain in dB-->');
xlabel('Normalized freq')

subplot(2,1,2);
plot(om/pi,an);
grid on
title('phase response of IIR filter is: ');
ylabel('phase in radian')
xlabel('Normalized freq')





