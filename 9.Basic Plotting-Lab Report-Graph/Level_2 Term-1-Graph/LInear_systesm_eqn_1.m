%clc;
syms x y z

eqn1 = 5*x -4*y + 2*z == 21;
eqn2 = -x-5*y +6*z ==24;
eqn3 = -x -4*y + 5*z == -21;
 
sol = solve([eqn1, eqn2, eqn3], [x, y, z]);
xsol = sol.x
ysol = sol.y
zsol = sol.z


%{
syms x y z
 eqn1 = 2*x + y + z == 2;
 eqn2 = -x+y -z ==3;
 eqn3 = x + 2*y + 3*z == -10;
 
 [A,B]= equationsToMatrix([eqn1,eqn2,eqn3],[x,y,z])
 x = linsolve(A,B)
%}

