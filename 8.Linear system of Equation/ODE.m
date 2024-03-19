alpha = 5;
beta = 10;

N = 100;
h = 0.1;
x = 5*linspace(0,N,N)';

 b= 5*x;
 b(1) = b(1) - alpha;
 b(N) = b(N)- beta;
 
A =  -2*diag(ones(N,1))...
    + diag(ones(N-1,1),1)...
    +diag(ones(N-1,1),-1);

y = A\b;
plot(x,y)
