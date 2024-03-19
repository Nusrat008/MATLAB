clc;
clear all;

omegac = 0.3*pi;
L = 120;
M = (L)/2;
l = -M:M;
h = omegac/pi *sinc(omegac*(l)/pi);

omega = 0:10*pi /2000:pi;
Hd = freqz(h,l,omega);


plot(omega/pi,abs(Hd));
grid;
xlabel('Normalized frequency');
ylabel('Magnitude');
axis([-.1  1 0 1.2]);
grid on;
figure
plot(l,h)
