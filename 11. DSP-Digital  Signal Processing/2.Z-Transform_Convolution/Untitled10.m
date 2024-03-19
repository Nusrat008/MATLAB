n = 0:100;  % Define the range of 'n';
 x = cos(w0 * n);  % Generate the discrete-time signal

    
syms z n
X_z = ztrans(x);

    % Get poles and zeros
[zeros, poles] = zpkdata(X_z, 'v');

    % Plot pole-zero map
figure;
zplane(zeros, poles);
title('Pole-Zero Map')