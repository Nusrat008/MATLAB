clc;
close all;
clear all;
syms n;
f = (1/2)^n + (-1/3)^n;

% Z-transform
F = ztrans(f)
% Display Z-transform
disp('Z-transform:');
disp(F);
% Inverse Z-transform
x_inv_z = iztrans(F);

% Display inverse Z-transform
disp('Inverse Z-transform:');
disp(x_inv_z);

%pole and zero plot
F2 = collect(F)
[num,den] = numden(F2);
Ts = 0.1; % Sampling period
H = tf(sym2poly(num),sym2poly(den),Ts)
pzmap(H)