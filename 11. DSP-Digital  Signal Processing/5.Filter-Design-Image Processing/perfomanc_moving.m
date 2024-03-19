% Parameters
fs = 1000;          
t = 0:1/fs:1;      
f = 5;             
A = 1;              
SNR_dB = 10;        


sine_signal = A * sin(2 * pi * f * t);
awgn_noise = awgn(sine_signal, SNR_dB, 'measured');
noisy_signal = sine_signal + awgn_noise;


term = 30;  
filtered_signal = filter(ones(1, term)/term, 1, noisy_signal);

figure;

subplot(3,1,1);
plot(t, sine_signal);
title('Original Sine Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, noisy_signal);
title('Noisy Sine Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, filtered_signal);
title('Filtered Sine Signal');
xlabel('Time (s)');
ylabel('Amplitude');

legend('Original', 'Noisy', 'Filtered');

