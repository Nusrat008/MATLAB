clc;
clear all;
close all;
syms z n
X(z) = z^2/(z^2-2.5*z+1)
y = iztrans(X) 
num = [1 0 0];
den = [1 -2.5 1];
figure()
zplane(num,den)
title('The System')
