X=[15;20]
y=[362.78;517.35]
po=16
%y = input('enter list of : ');
%po = input ('point of approx: ');
n = length(X);
h = X(2)- X(1);
F = zeros(n,n);
F(:,1) = y;
for j= 2:n
    for i = j:n
        F(i,j) = F(i,j-1) - F(i-1,j-1);
    end
end
F
c = F(n,n);
for k = n-1:-1:1
    p = poly(X(1))/h;
    p(2)=p(2)-(k-1);
    c = conv(c,p)/k;
    m = length(c);
    c(m)=c(m)+F(k,k)
end
v = polyval(c,16)

%%%% x=[x=[0 10 15 20 22.5 30]
% y = [0 227.04 362.78 517.35 602.97 901.67]
% t = 16;
% n = length(x);
% for i = 1:n
 % t0 = x(i);
 % t1 = x(i+1);
 % if (t0 <=t and t1>=t)
 % t0 = x(i);
 % v0 = y(i);
 % t1 = x(i+1);
 % v1 = y(i+1);
 % end
 % end
 % 
%
%



