function freefalli
%freefalli: interactive 
%bungee velocity with second-order drag
%

g = 9.81;
m = input('Mass (kg): ');
cd = input('Drag coefficient (kg/m): ');
t = input('Time(s): ');
disp('')
disp('Velocity (m/s): ')
disp(sqrt(g*m/cd) * tanh(sqrt(g*cd/m)*t))
end



