clearvars; clc; close all;

time_nodes = [0 10 15 20 22.5 30];     %time_nodes = input('Enter list of nodes: ');
velocity_t = [0 227.04 362.78 517.35 602.97 901.67];     %velocity_t = input ('velocity at time_nodes: ');

t = 16;
len = length(time_nodes);

%  choose two data points that are closest to t=16 and velocity at those
%  points
for i = 1:len
  t0 = time_nodes(i);
  t1 = time_nodes(i+1);
      if (t0 <=t && t1>=t)
        t0 = time_nodes(i);
        v0 = velocity_t(i);
        t1 = time_nodes(i+1);
        v1 = velocity_t(i+1);
        break
      end
end
 
% find velocity at t= 16 using first order polynomial interpolation by
% Newton's divided difference polynomial method
time = [t0 t1];
v_t = [v0 v1];
n = length(time);
h = time(2)-time(1);
%Find Coefficient of the Newton's divided difference
F = zeros(n,n);
F(:,1) = v_t;
for j= 2:n
    for i = j:n
        F(i,j) = F(i,j-1) - F(i-1,j-1);
    end
end
first_divdif = F(1,1);

coeffi_vt = F(n,n);
for k = n-1:-1:1
    pol = poly(time(1))/h;
    pol(2)=pol(2)-(k-1);
    coeffi_vt = conv(coeffi_vt,pol)/k;
    m = length(coeffi_vt );
    coeffi_vt(m)=coeffi_vt (m)+F(k,k);
end
required_velocity = polyval(coeffi_vt,t);


fprintf('The coefficients of velocity function for first order polynomial ,which find for t=16 are:[%5.4f %5.4f]\n',coeffi_vt(1),coeffi_vt(2))
fprintf('Velocity at t=%d is: %5.4f\n',t,required_velocity)





