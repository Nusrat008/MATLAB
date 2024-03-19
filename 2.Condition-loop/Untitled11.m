clearvars; 
clc; 
close all;
 
function_x = @(x)sin(x) + cos(x);
nodes=[0 .25 .5 1];    %nodes=input('Enter list of node points: ');
 
n = length(nodes);
fx = zeros(1,n);
product = zeros(n,n);
 
% Find the list of  f(x),such as f(x0),f(x1),f(x2),f(x3)
for i=1:n
    fx(1,i)=cos(nodes(i))+sin(nodes(i));
end
 
% Find P(x)=f(x0)*L0 + f(x1)*L1 + f(x2)*L2 + f(x3)*L3
for i=1:n %for making Ln *f(xn)
    L=1;
    for j=1:n  %for making L0,L1,L2 ,L....
        if i~=j
            L=conv(L,poly(nodes(j)))/(nodes(i)-nodes(j));
        end
    end
    product(i,:)= L*fx(i);
end
polynomial = sum(product);
 
pow = n-1;
 
 
fprintf('The coefficients of the polynomial are: [%5.4f %5.4f %5.4f %5.4f]\n',polynomial)
disp('The polynomial is:')
for k=1:n-1
    fprintf('+(%.4fx^%d)',polynomial(k),pow)
    pow = pow-1;
end
 
fprintf('+(%.2f)',polynomial(n))
 
fprintf('\n')
 
%Error Bound finding
 
%Assume, gx = (x-0) (x-.25) (x - 0.5) (x-1)
gx = @(x) ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x));
diff_gx = @(x) ((4*x.^3)-(5.25*x.^2)+(1.75*x)-0.125);
 
value_x = zeros(3,1);
 
coeff_diff_gx = [4 -5.25 1.75 -0.125];
value_x = roots(coeff_diff_gx);
 
%val_x = solve(dx_gx);
%val_x = feval(symengine,'numeric::solve',dx_gx,'AllRealRoots')
 
 
 
val_gx = zeros(3,1);
val_gx = gx(value_x);
 
absolute_gx = abs(val_gx);
 
max_val_gx = max(absolute_gx);
fprintf('The maximum absolute value on [0,1] of the polynomial g(x) is: %5.6f\n',max_val_gx) 
 
 
%Find absolute maximum on [0,1) of the function f(x) = cos(x) + sin(x)
 
% fx = cos(x) + sin(x)
nodes = [0 0.25 0.5 1];
 
fx = @(x) cos(x) + sin(x);
fourth_derivate_fx = @(x) cos(x) + sin(x);
 
 
xInterval = [0 1];
 
dx = 0.0001;
poles = xInterval(1): dx : xInterval(2);
len = length(poles);
val_diff_fx=zeros(len,1);
%Calculate f(x) values
for i = 1:length(poles)
  val_diff_fx(i,1) = fourth_derivate_fx(poles(i));
  
end
abs_val_dfx = abs(val_diff_fx);
max_fx = max(abs_val_dfx);
 
fprintf('The absolute maximum value of fourth derivative of f(x) is : %5.4f\n',max_fx)
 
%Error bound = (maxima of g(x))*(maxima of f(x))/n!
fact = factorial( n) ;
error_bound = (max_val_gx * max_fx./fact);
fprintf('The error bound is : %5.6f\n',error_bound)
 
%Plot function,f(x)=cos(x)+sin(x)  and  Polynomial,P(x)= -(0.0793*x^3)-(0.5455*x^2)+(1.0066*x^1)+(1.00)  
 
func = cos(nodes)+sin(nodes);
plot(nodes,func,'bo');
 
x_nodes = linspace(-1,2,100);
funcx= cos(x_nodes)+sin(x_nodes);
hold on;
plot(x_nodes,funcx,'b-');
 
polynomial = -(0.0793*x_nodes.^3)-(0.5455*x_nodes.^2)+(1.0066*x_nodes.^1)+(1.00);
plot(x_nodes,polynomial,'r-');
 
grid on
xlabel('x')
ylabel('f(x)=cos(x)+ sin(x)and P_3(x)')
title('Plot both P_3(x) and f(x) vs x graph')
 
 
 
 
 

 
