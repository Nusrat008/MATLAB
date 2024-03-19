% Parameters
fs = 1000;          % Sampling frequency (Hz)
t = 0:1/fs:1;       % Time vector
f = 5;              % Sine wave frequency (Hz)
A = 1;              % Sine wave amplitude
SNR_dB = 10;        % Signal-to-Noise Ratio in dB

% Generate sine signal with AWGN
sine_signal = A * sin(2 * pi * f * t);
awgn_noise = awgn(sine_signal, SNR_dB, 'measured');
noisy_signal = sine_signal + awgn_noise;

% Moving average filter
window_size = 30;   % Size of the moving average window
filtered_signal = filter(ones(1, window_size)/window_size, 1, noisy_signal);

% Plot the original, noisy, and filtered signals
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

% Display SNR
SNR = snr(sine_signal,awgn_noise);
disp(['SNR of the noisy signal: ' num2str(SNR) ' dB']);