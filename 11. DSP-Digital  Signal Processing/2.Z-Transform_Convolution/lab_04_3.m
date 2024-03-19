% Define the coefficients of the numerator and denominator of the transfer function
numerator_coeffs = [1 0 1];  % Example: s^2 + 1
denominator_coeffs = [1 0.5 1];  % Example: s^2 + 0.5s + 1

% Find the poles and zeros
zeros_tf = roots(numerator_coeffs);
poles_tf = roots(denominator_coeffs);

% Plot the poles and zeros
figure;
hold on;

% Plot zeros
plot(real(zeros_tf), imag(zeros_tf), 'o', 'MarkerSize', 10, 'LineWidth', 2, 'Color', 'b');

% Plot poles
plot(real(poles_tf), imag(poles_tf), 'x', 'MarkerSize', 10, 'LineWidth', 2, 'Color', 'r');

% Plot unit circle for reference
theta = linspace(0, 2*pi, 100);
plot(cos(theta), sin(theta), '--', 'Color', 'k');

hold off;

% Set plot properties
axis equal;
grid on;
title('Pole-Zero Plot');
xlabel('Real Axis');
ylabel('Imaginary Axis');
legend('Zeros', 'Poles', 'Unit Circle');

