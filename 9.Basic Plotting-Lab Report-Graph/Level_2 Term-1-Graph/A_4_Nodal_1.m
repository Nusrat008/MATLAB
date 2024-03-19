clc;
clear all;
close all;

% v1 = 12
%-1/3*v1 + 5/6*v2 - 1/3*v3 = 0
%-1/3*v2 + 13/30*v3 + 19/60*v4 - 5/12*v5 = 0
%-1/10*v3  - 19/60*v4 + 37/60*v5 = 0
%10*v2 - 3*v3 + 3*v4 = 0

G= [1 0 0 0 0;-1/3 5/6 -1/3 0 0;0 -1/3 13/30 19/60 -5/12;0 0 -1/10 -19/60 ...
    37/60;0 10 -3 3 0]

i = [12 0 0 0 0]'

v = G^-1*i;

disp('Solution of Equations are: ');
for k=1:size(v)
    
fprintf('v%d = %0.2f',k,v(k));
fprintf('\n');

end

ix = v(2)/6;
fprintf('ix = %0.2fl\n',ix);