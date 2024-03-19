syms x 
fx = sin(x) + cos(x);
fourth_derivative = diff(fx,4)

%fifth_derivative = diff(fourth_derivative);

% max_y = feval(symengine,'numeric::solve',fifth_derivative,'x=-pi..pi','AllRealRoots')
%fifth_derivative = diff(fourth_derivative);

 max_y = feval(symengine,'numeric::solve',fourth_derivative,'x=-pi..pi','AllRealRoots')
abs(max_y)
a = [0 .25 .5 1];




