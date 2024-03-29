function [ v ] = freefall(t,m,cd)

%freefall:bungee velocity with second-order drag
%  v=freefall(t,m,cd) computes the free-fall velocity
%        of an object with second-order drag
%input:
%t = time(s)
%m = mass(kg)
%cd = second-order drag coefficient (kg/m)
%output:
%v = downward velocity(m/s)

%acceleration of gravity
g = 9.81;
v = sqrt(g * m / cd) * tanh(sqrt(g * cd/m) * t);

end

