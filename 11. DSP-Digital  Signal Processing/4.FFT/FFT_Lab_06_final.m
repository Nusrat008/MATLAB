clear all;
close all;
clc;
f = 1000;
Ts = 1 / f;
t = 0:Ts/30:2*Ts;
A = 2;
N=80;
x1 = A * sin(2 * pi * f * t); 
x2 = A * sin(2 * pi * f * t) + awgn(zeros(size(t)), 5); 
figure(1);
plot(t, x1, t, x2,'LineWidth',3); 
title('Original Signal and Signal with noise')
legend ('Sine wave','Sine wave with noise Signal')

syms z t;
x1_z = ztrans(x1, t, z); 
disp(x1_z);
x2_z = ztrans(x2, t, z); 
disp(x2_z);
Hz = ((z+0.1)/((z+0.1)^2+9)); 
y_z1 = x1_z .* Hz; 
disp(y_z1);
y_z2 = x2_z .* Hz; 
disp(y_z2);
yn1 = iztrans(y_z1);
disp(yn1);
yn2 = iztrans(y_z2);
disp(yn2);
figure(2);
x1_fft = fft(x1, N);
x1_fft = x1_fft(1:N/2 + 1);
k = 0:N/2;
%k = -N/2:N/2-1;
stem(2 * pi * k / N, abs(x1_fft),'o', 'MarkerSize', 10, 'LineWidth', 3, 'Color', 'm');
title('Absolute value of FFT of original Signal')

figure(3);
x2_fft = fft(x2, N);
x2_fft = x2_fft(1:N/2 + 1);
k = 0:N/2;
stem(2 * pi * k / N, abs(x2_fft),'o', 'MarkerSize', 10, 'LineWidth', 3, 'Color', 'r');
title('Absolute Value of FFT of Noise added signal')

syms n;
n_values = 0.5; 
yn1_num = double(subs(yn1, n, n_values)); 
yn2_num = double(subs(yn2, n, n_values)); 
figure(4);
yn11_fft = fft(yn1_num, N);
yn11_fft = fftshift(yn11_fft);
k = -N/2:N/2-1;
stem(2 * pi * k / N,abs(yn11_fft),'o', 'MarkerSize', 10, 'LineWidth', 2);
title('Absolute Value of FFT of filter output signal withour Noise')

figure(5);
yn22_fft = fft(yn2_num, N);
yn22_fft = fftshift(yn22_fft);
k = -N/2:N/2-1;
stem(2 * pi * k / N, abs(yn22_fft),'o', 'MarkerSize', 10, 'LineWidth', 2, 'Color', 'g');
title('Absolute value of FFT of filter output Signal with noise')

yn11_time = ifft(ifftshift(yn11_fft)); 
yn22_time = ifft(ifftshift(yn22_fft)); 
tq = 0:Ts/39.5:2*Ts;
figure(6);
plot(tq,real(yn11_time), 'LineWidth', 3, 'Color', 'b'); 
title('IDFT of original signal');

figure(7);
plot(tq,real(yn22_time) ,'LineWidth', 3, 'Color', 'r');
title('Reconstructed signal from noise added input signal');
