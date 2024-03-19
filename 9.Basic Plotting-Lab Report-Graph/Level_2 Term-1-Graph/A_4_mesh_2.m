clc;
clear all;
close all;

%  4*i1 + 7*i2 - 9*i3 - 2*i4 = 12
%  2*i1 - 7*i2 = -10
%  i3 = 2
%  -2*i2 + 6*i4 = -20
%  vx = 5*(i3 - i2)

R = [4 7 -9 -2;2 -7 0 0;0 0 1 0;0 -2 0 6]
v = [12 -10 2 -20]'

i = R^-1*v;

disp('Solution of Equations are: ');
for k=1:size(i)
    
fprintf('i%d = %0.2f',k,i(k));
fprintf('\n');

end

vx = 2*i(2)- 2*i(1);
fprintf('vx = %0.2fl\n',vx);
