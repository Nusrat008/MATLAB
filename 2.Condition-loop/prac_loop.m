
for i=1:1:10
    fprintf(' %d',i)
end
fprintf('\n')

clear all
clc

n=15;
%built-in function(linspace)
x=linspace(1,6,n);

for i=1:n
    f =func_1(x(i));
    fprintf('%.2f\t%f\n',x(i),f)
end




