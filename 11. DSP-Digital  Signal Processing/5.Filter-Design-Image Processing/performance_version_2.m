clc;

Amp=10;
f=98;
fs=48000;
t=5;
n=0:(1/fs):0.5;
x=Amp*sin(2*pi*f*n);
subplot(5,1,1)
plot(n,x)
xlabel('Time');
ylabel('Amplitude of original signal');
title('Amplitude of original signal')


Amp_n=Amp/2; %Amplitude of noise
fn=98+50;
xn=Amp_n*sin(2*pi*fn*n);

subplot(5,1,2)
plot(n,xn)
xlabel('Time');
ylabel('Amplitude of Noise');
title('Amplitude Noise signal')
%adding NOise with original signal
z=x+xn;


subplot(5,1,3)
plot(n,z)
xlabel('Time');
ylabel('Amplitude of Noisy Signal');
title('Amplitude of Noise added Signal')


%filterpara= performace_exp_08_FIR %From filter Design tool
x_filtered=performace_exp_08_FIR(z)
subplot(5,1,4)
plot(n,x_filtered)
xlabel('Time');
ylabel('Amplitude of recovered Signal');
title('Amplitude of recovered Signal')
