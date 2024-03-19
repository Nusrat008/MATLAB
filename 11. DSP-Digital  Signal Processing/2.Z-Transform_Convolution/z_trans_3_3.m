clc;
close all;
clear all;
syms n;
6
x_pos = (1/3) ^ n * ...
heaviside ( n ) ;
x_neg = (1/2) ^( - n ) * ...
heaviside ( -n ) ;
x = x_pos + x_neg ;
% Z-transform
X = ztrans (x) ;
% Display Z-transform
disp('Z-transform:');
disp(X);
% Inverse Z-transform
x_inv_z = iztrans(X);
% Display inverse Z-transform
disp('Inverse Z-transform:');
disp(x_inv_z);
%pole and zero plot
F2 = collect(X)
[num,den] = numden(F2);
Ts = 0.1; % Sampling period
H = tf(sym2poly(num), ...
sym2poly(den),Ts)
pzmap(H)