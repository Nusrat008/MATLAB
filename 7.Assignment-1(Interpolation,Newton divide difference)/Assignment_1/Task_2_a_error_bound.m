% fx = log(x)
nodes = [1 1.1 1.3 1.4];

fx = @(x) log(x);
fourth_derivate_fx = @(x)(-6./x.^4);

xInterval = [1 1.4];

dx = 0.0001;
n = xInterval(1): dx : xInterval(2);
len = length(n);
val_dfx=zeros(len,1);
%Calculate f(x) values
for i = 1:length(n)
  val_dfx(i,1) = fourth_derivate_fx(n(i));
  
end

abs_val_dfx = abs(val_dfx);
max_fx = max(abs_val_dfx);

fprintf('The maximum value of fx in the given range of x is: %5.4f\n',max_fx)


