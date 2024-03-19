nodes = [0 .25 .5 1];
func = cos(nodes)+sin(nodes);

plot(nodes,func,'bo');

xx = linspace(-1,2,100);
ff= cos(xx)+sin(xx);
hold on;
plot(xx,ff,'b-');

polynomial = -(0.0793*xx.^3)-(0.5455*xx.^2)+(1.0066*xx.^1)+(1.00);
plot(xx,polynomial,'r-');

%polynomial = -(0.0793*nodes.^3)-(0.5455*nodes.^2)+(1.0066*nodes.^1)+(1.00);
%plot(nodes,polynomial,'ro');
