syms x 
%f = cos(x) + sin(x)
f = log(x)

df_fx = diff(f,4)
df = @(x) df_fx;


%Define the interval over which f(x) will be evaluated
xInterval = [1 1.4];
%specify resolution of the evaluation
dx = 0.01;
%Create a vector of x values based on the interval of evaluateion and
%resolution specifications
n = xInterval(1): dx : xInterval(2);
%Calculate f(x) values
for i = 1:length(n)
fx = abs(df(n(i)));
end
%Find the magnitude and index of the maximum f(x) value and print the
%maximum magnitude to the command window

% [M,idx] = max(double(fx));
 feval(symengine,'max',fx);

fprintf('The maximum value in the given range of x is: %5.4f\n',M)
%Use the index of the maximum f(x) value to find the x value which produced
%the maximum f(x) value
% xForMaxFx = n(idx);
%Determine title based on interval of evaluation parameters
