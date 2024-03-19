clc; 
clear all; 
close all; 
%Importing original signal 
I = imread('natural_view.jpg'); 
figure(1) 
imshow(I); 
title('Original colored Image'); 
I1 = rgb2gray(I); % Converting to black and white image 
figure(2) 
imshow(I1); 
title('Original black & white Image'); 
% Adding Gaussian noise with variance 0.03 and SD 0.015 
S1 = imnoise(I1,'gaussian',0.01,0.012); 
figure(3) 
imshow(S1); 
title('Gaussian noisy image'); 
A = medfilt2(S1); % median filtering 
figure(4) 
imshow(A); 
title('Median filtered image'); 
n = ordfilt2(S1,25,true(5));%Order Statistic filtering 
figure(5) 
imshow(n); 
title('Order Statistic filtered image'); 
B = wiener2(S1,[5 5]); % Weiner filtering with [5 5] array 
figure(6) 
imshow(B); 
title('WIENER filtered image'); 
