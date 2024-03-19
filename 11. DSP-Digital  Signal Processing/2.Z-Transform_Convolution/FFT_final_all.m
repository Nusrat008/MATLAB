% Generate sinusoidal signal
f = 1000;
t = 0: 2*f/100: 2*pi
A = 4;
B = 2;
wn = 2*pi*f;
x_sin = A*sin(wn*t);
syms z n

% Generate AWGN
s = rng;  % Save the current state of the random number generator
rng(42);   % Set a specific seed for reproducibility
awgn_noise = B * awgn(ones(size(t)), 1, 'measured');

% Add sinusoidal signal and AWGN
x = x_sin + awgn_noise;
X(z) = ztrans(x)

% Plot the signals
figure;
subplot(3,1,1);
plot(t, x_sin);
title('Sinusoidal Signal');
xlabel('Time (s)');
ylabel('Amplitude');
