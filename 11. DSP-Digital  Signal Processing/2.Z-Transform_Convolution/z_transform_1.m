clc;
clear all;
close all;

syms z n

w0 = 8;

x_n = cos(w0*n);
X(z)= ztrans(x_n)

numerator = [1 -2*cos(8) 0]
pole = poles((z*(z - cos(8)))/(z^2 - 2*cos(8)*z + 1))
zero = roots(numerator)

zplane(zero,pole)