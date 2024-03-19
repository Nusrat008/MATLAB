clc;
clear all;
disp('enter irr filter spcification')
rp = input('enter passband ripple');
rs = input('enter stopband ripple');
wp = input('enter passband freq');
ws = input('enter stopband freq');
fs = input('enter sample frequecy');

w1 = (2*wp)/fs
w2 = (2*ws)/fs
[n,wn] = buttord(w1,w2,rp,rs,'s');
disp('frequency reponse of IIR LPR is: ');

[b,a] = butter(n,wn,'low','s');
w = 0:0.1:pi;
[h,om] = freq(b,a,w);
