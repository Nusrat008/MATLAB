function zTransformAndPlot(w0)
    % Define the discrete-time signal: cos(w0 * n)
    n = 0:100;  % Define the range of 'n'
    x = cos(w0 * n);  % Generate the discrete-time signal

    % Compute the Z-transform
    z = tf('z');
    X_z = ztrans(x);

    % Get poles and zeros
    [zeros, poles] = zpkdata(X_z, 'v');

    % Plot pole-zero map
    figure;
    zplane(zeros, poles);
    title('Pole-Zero Map');

    % Plot the discrete-time signal
    figure;
    stem(n, x);
    xlabel('n');
    ylabel('Amplitude');
    title('Discrete-time signal: cos(w0 * n)');

    % Display the poles and zeros
    disp('Zeros:');
    disp(zeros);
    disp('Poles:');
    disp(poles);
end
