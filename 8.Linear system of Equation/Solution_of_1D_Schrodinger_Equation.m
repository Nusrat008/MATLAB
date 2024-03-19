


% This is a solution of 1D Schrodinger Equation using Eigen value
clear all;


m = 9.1e-31; % Electron mass
hbar = 1.05e-34; % Reduced Planck Const
a = .1e-9;
N = 100;
x = 0:N;
x = x*a;
q = 1.6e-19;


t = (hbar^2)/(2*m*a^2)/q; % Converting to eV


A = 2*t*eye(N) - t*diag(ones(N-1,1),1)- t*diag(ones(N-1,1),-1);


[V,D] = eig(A);
D = diag(D);
subplot(121)
bar(D(1:5))
dim = [.2 .5 .3 .3];
str = 'Energies are quantized';
annotation('textbox',dim,'String',str,'FitBoxToText','on');
subplot(122)
plot(V(:,1:3).^2)
title('First 3 Porbablity density for electron');
legend(sprintf('E: %f eV', D(1)), sprintf('E: %f eV', D(2)), sprintf('E: %f eV', D(3)))
dim = [.6 .5 .3 .3];
str = 'These graph shows the probability to find electron inside a box. The energies correspond to 1s, 2s, 2px, 2py, 2pz etc.';
annotation('textbox',dim,'String',str);
