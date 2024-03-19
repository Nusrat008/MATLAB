% gx = (x-0) (x-.25) (x - 0.5) (x-1)
 
nodes = [0 .25 .5 1];

gx = @(x) ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x));
dx_gx = @(x) ((4*x.^3)-(5.25*x.^2)+(1.75*x)-0.125);

val_x = zeros(3,1);

coeff_d_gx = [4 -5.25 1.75 -0.125]
val_x = roots(coeff_d_gx)

%val_x = solve(dx_gx);
%val_x = feval(symengine,'numeric::solve',dx_gx,'AllRealRoots')



val_gx = zeros(3,1);
val_gx = gx(val_x);

abs_val_gx = abs(val_gx)
%abs_gx_val = zeros(3,1);
%abs_gx_val = abs(val_gx)
max_gx = max(abs_val_gx)
%val_x = solve(dx_gx)
 

for i = 1:length(n)
  val_dfx(i,1) = fourth_derivate_fx(n(i));
  
end