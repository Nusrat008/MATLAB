% Define the unit step signal u(t)
t_u = 0:0.1:10;
u_t = ones(size(t_u));

% Define the exponential signal e(t)
t_e = 0:0.1:10;
e_t = exp(-t_e);

% Compute the convolution of u(t) and e(t)
conv_result = conv(u_t, e_t, 'full');

% Define the time vector for the convolution result
t_conv = 0:0.1:(length(conv_result)-1)*0.1;

% Plot the convolution result using stem
stem(t_conv, conv_result, 'filled');
title('Convolution Result (u(t) * e(t))');
xlabel('Time');
ylabel('Amplitude');