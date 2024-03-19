% Parameters
A = 1;          
B = 0.1;        
f = 1000;      
Ts = 1/f;       
t = 0:Ts:4*pi;  


wn = 2*pi*f;
x_sin = A*sin(wn*t);

% Generate AWGN
s = rng;  % Save the current state of the random number generator
rng(42);   % Set a specific seed for reproducibility
awgn_noise = B * awgn(ones(size(t)), 1, 'measured')

% Add sinusoidal signal and AWGN
x = x_sin + awgn_noise;

% Plot the signals
figure;
subplot(3,1,1);
plot(t, x_sin);
title('Sinusoidal Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, awgn_noise);
title('Additive White Gaussian Noise (AWGN)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, x);
title('Signal with AWGN');
xlabel('Time (s)');
ylabel('Amplitude');

% Restore the state of the random number generator
rng(s);