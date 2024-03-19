% Equation solve
%eq = x.^2-6*x+5;
%sol = solve(eq,x) % Equation solve

%Differention
f = x.^2 - log(x); % x^2- ln(x)
df = diff(f) % diffferention

%Integration
f1 = x.^3;  
intf = int(f1) %Indefinite integral

deintf = int(f1,0,1) %Definite integral
