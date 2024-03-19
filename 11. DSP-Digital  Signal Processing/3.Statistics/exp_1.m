 clear all; 
 close all;
 clc
 n = -5:1:5;
 x = zeros(1,length(n));
 for i = 1:length(n)
     if n(i)==0
         x(i) = 1;
     else 
         x(i) = 0;
     end
 end
 
 