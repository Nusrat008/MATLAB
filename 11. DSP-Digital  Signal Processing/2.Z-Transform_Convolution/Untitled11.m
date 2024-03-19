% Define the angular frequency
w0 = 1e8;

% Sampling frequency to avoid aliasing
fs = 2 * w0;
Ts = 1 / fs;

% Define the z-transform equation for the cosine function
numerator = [1, 0, -1];  % Coefficients for the numerator of the z-transform
denominator = [1, 0, 1]; % Coefficients for the denominator of the z-transform

% Calculate zeros and poles
zeros = roots(numerator);
poles = roots(denominator);

% Plotting the z-plane
figure;
plot(zeros, 'o', 'MarkerSize', 8, 'LineWidth', 2);
hold on;
plot(poles, 'x', 'MarkerSize', 10, 'LineWidth', 2);
hold off;
grid on;
xlabel('Real');
ylabel('Imaginary');
title('Poles and Zeros in the z-plane');
legend('Zeros', 'Poles');
