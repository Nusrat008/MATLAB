   clc;
close all;
clear all;
A=round(rand(10,8)*100)
B=A.'
Mean=mean(A,2)
Median=median(A,2)
veriance=(var(B)).'
Skewness=(skewness(B)).'
Kurtosis=(kurtosis(B)).'