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

max_fx = max(val_diff_fx);

fprintf('The absolute maximum value of the fourth derivatives of f(x) is : %5.4f\n',max_fx)


