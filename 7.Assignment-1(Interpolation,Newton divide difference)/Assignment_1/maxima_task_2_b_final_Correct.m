syms x 
f = cos(x) + sin(x)

df_fx = diff(f,4)

df = @(x) df_fx;
 df(.5)


%Define the interval over which f(x) will be evaluated
xInterval = [0 1];
%specify resolution of the evaluation
dx = 0.0001;
%Create a vector of x values based on the interval of evaluateion and
%resolution specifications
n = xInterval(1): dx : xInterval(2);
df(.5)
%Calculate f(x) values
for i = 1:length(n)
fx = df(n(i));
end

%Find the magnitude and index of the maximum f(x) value and print the
%maximum magnitude to the command window
% [M,idx] = max(double(fx));
feval(symengine,'max',fx)
%findpeaks(fx)
%fprintf('The maximum value in the given range of x is: %5.4f\n',M)
%Use the index of the maximum f(x) value to find the x value which produced
%the maximum f(x) value
%xForMaxFx = n(idx);
%Determine title based on interval of evaluation parameters
