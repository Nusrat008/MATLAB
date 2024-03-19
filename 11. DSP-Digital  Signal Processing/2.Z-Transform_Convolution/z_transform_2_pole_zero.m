clc;
clear all;
close all;

x = [0 1 2 1 2 5 7 0 1];
l=length(x);
X=0;
z=sym('z');
for i=0:l-1;
    X=X+x(i+1)*z^(-i);
end
disp('display z trnsform');
disp(X);

 % Z-transform
X_z = ztrans(x,z);

% Display Z-transform
disp('Z-transform: with build in function');
disp(X_z);

% Inverse Z-transform
x_inv_z = iztrans(X_z);

% Display inverse Z-transform
disp('Inverse Z-transform:');
disp(x_inv_z);
F2 = collect(X)
[num,den] = numden(F2);
Ts = 0.1; % Sampling period
H = tf(sym2poly(num),sym2poly(den),Ts)
pzmap(H)