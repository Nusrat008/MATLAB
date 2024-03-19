n = -20:20;
a = 0.2;
n1 = -20:20;
x1 = zeros(1,length(n));
 for i = 1:length(n)
     if n(i)>=0
         x1(i) = 1;
     else 
         x1(i) = 0;
     end
 end
 
x = 5*exp(-a*n).*x1(n);
x1 = 5*exp(a*n).*x1(n);

xe =(x +x1)/2;
subplot(2,2,1);
stem(n,xe)

xo =(x - x1)/2;
subplot(2,2,2);
stem(n,xo)