clc ; clear all;
 syms z n s
 H = (s+0.1)/((s+0.1)^2 + 9)
 
[num,den] = numden(H)
num_coeffs = sym2poly(num)
den_coeffs = sym2poly(den)
zeros_y = roots(num_coeffs)
poles_y = roots(den_coeffs)
zplane(double(zeros_y),double(poles_y))