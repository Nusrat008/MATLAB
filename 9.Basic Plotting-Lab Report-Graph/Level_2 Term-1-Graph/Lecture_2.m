clc 
clear all
close all

 %/A = round(rand(3)*10)
 
 %p = poly(A)
 
 %[V,D] = eig(A)

 
 I0 = [1 0 0 0]'
 I1 = [0 1 0 0]'
 I2 = [0 0 1 0]'
 I3 = [0 0 0 1]'
 
 Z0 = [I0 I1 I2 I3]
 Z1 = [I1 I0 I3 I2]
 Z2 = [I2 I3 I0 I1]
 Z3 = [I3 I2 I1 I0]
 Z123 = [I0 I2 I3 I1]
 Z013 = [I1 I3 I2 I0]
 Z021 = [I2 I0 I1 I3]
 
 
 
 
 
 Z1*[I0 I1 I2 I3]
 
 Z123*[I0 I1 I2 I3]
 Z021*[I0 I1 I2 I3]
 
 