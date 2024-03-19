clc;
clear all;
close all;

 disp('Figure-01:')
 I0 = [1 0 0 0]';
 I1 = [0 1 0 0]';
 I2 = [0 0 1 0]';
 I3 = [0 0 0 1]';
 
 Z0 = [I0 I1 I2 I3];
 Z1 = [I1 I0 I3 I2];
 Z2 = [I2 I3 I0 I1];
 Z3 = [I3 I2 I1 I0];
 Z123 = [I0 I2 I3 I1];
 Z013 = [I1 I3 I2 I0];
 Z021 = [I2 I0 I1 I3];
 Z032 = [I3 I1 I0 I2];
 Z132 = [I0 I3 I1 I2];
 Z012 = [I1 I2 I0 I3];
 Z023 = [I2 I1 I3 I0];
 Z031 = [I3 I0 I2 I1];
 Z23 = [I0 I1 I3 I2];
 Z01 = [I1 I0 I2 I3];
 Z0213 = [I2 I3 I1 I0];
 Z0312 = [I3 I2 I0 I1];
 Z12 = [I0 I2 I1 I3];
 Z0132 = [I1 I3 I0 I2];
 Z0231 = [I2 I0 I3 I1];
 Z03 = [I3 I1 I2 I0];
 Z13 = [I0 I3 I2 I1];
 Z0123 = [I1 I2 I3 I0];
 Z02 = [I2 I1 I0 I3];
 Z0321 = [I3 I0 I1 I2];
 ZZ = [Z0,Z1, Z2 ,Z3 ,Z123, Z013, Z021,Z032, Z132, Z012, Z023 ,Z031...
    ,Z23,Z01 ,Z0213, Z0312, Z12, Z0132,Z0231, Z03 ,Z13, Z0123 ,Z02, Z0321];

for i=1:24
    fprintf('ZZ[%d] matrix is:\n',i);
    Matrix_Test(ZZ(i));    
    fprintf('\n')
end

disp('Figure-02: ')
%For X,Y,Z,S,T 
xyz(1:2,1:2,1) = [0 1; 1 0];
xyz(:,:,2) = [0 -1i;1i 0];
xyz(:,:,3) = [1 0;0 -1];
xyz(:,:,4) = [1 0;0 1i];
xyz(:,:,5) = [1 0;0 exp(1i*pi/4)];

for ii = 1:size(xyz,3)
    fprintf('xyz[%d] Matrix is: \n',ii);
    k = xyz(:,:,ii);
    Matrix_Test(k)
    fprintf('\n');
end
  




 