

syms f(x,t)
f(x,t)=(2-x^2*(sin(t)^2))^(1/2); 
f1=diff(f(x,t),t);
f2=diff(f1,t);
f3=diff(f2,t);
f4(x,t)=diff(f3,t);
f4 = simplify(f4, 'Steps',20);
f = matlabFunction(f4, 'Vars',{[x,t]});
 
XT = fmincon(@(b)-f(b), [0.5 0.5], [], [], [], [], [0 0], [1 pi/2])
