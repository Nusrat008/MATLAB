%v = velocity of a free-falling bungee jumper
%v=sqrt(g*m/c_d)*tanh(sqrt(g*c_d/m) *t)


%Set Value
t = 0:2:20;


% Assign value of parameter; g = 9.81 ,m = 68.1,cd = 0.25 ,

 g = 9.81;m = 68.1 ; cd = 0.25;
 v = sqrt(g*m/cd) * tanh(sqrt(g*cd/m) * t);
 plot(t,v);
 
 
 