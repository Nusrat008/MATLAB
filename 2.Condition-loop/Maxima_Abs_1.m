gx = @(x) ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x ));
X = roots([4, -5.25, 1.75, -0.125 ]);
%disp(max(gx(X )))
%or, if you mean the maximum absolute value, use
disp(max(abs(gx(X))))