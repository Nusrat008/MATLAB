%% Individual Error:
x=[pi/12,pi/4,5*pi/12];
xp=[0,pi/6,pi/3,pi/2];
y=lagrange(x,xp,sin(xp));  
%Download this from our website
Error=abs(y-sin(x))        
%Leave off the semicolon to output
%% To plot all, actual, error:
xx=linspace(0,pi/2);
yy=lagrange(xx,xp,sin(xp));
ActualError=abs(yy-sin(xx));
plot(xx,ActualError);
%% To plot the actual error vs. error bound:
ErrorBd=(1/24).*xx.*(xx-pi/6).*(xx-pi/3).*(xx-pi/2);
plot(xx,ActualError,xx,abs(ErrorBd))