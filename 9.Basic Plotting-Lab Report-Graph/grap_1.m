%v = velocity of a free-falling bungee jumper
%v=sqrt(g*m/c_d)*tanh(sqrt(g*c_d/m) *t)


%Set Value
t =linspace(0,20,10);


% Assign value of parameter; g = 9.81 ,m = 68.1,cd = 0.25 ,

 g = 9.81;m = 68.1 ; cd = 0.25;
 v = sqrt(g*m/cd) * tanh(sqrt(g*cd/m) * t);
 plot(t,v)
 grid on
 xlabel('t(sec)')
 ylabel('v(ms-1)')
 title('Plot v vs t graph')
 
% plot(t,v,'o')

% plot(t,v,'s--g')
% plot(t,v,'--dc','LineWidth',2,...
  %  'MarkerSize',10,...
  % 'MarkerEdgeColor','k',...
   % 'MarkerFaceColor','m')
   
% plot(t,v,t,v,'o')

plot(t,v)
hold on
plot(t,v,t,v,'o')
hold off

 
 
 