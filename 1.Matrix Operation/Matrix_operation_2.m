clc;
clear all;
t = [ 0 pi/3 pi/6 pi/2]

for ii= 1:length(t)
    k = [cos(t(ii)/2) -1i*sin(t(ii)/2);-1i*sin(t(ii)/2) cos(t(ii)/2)]
    mat_t(k)
end