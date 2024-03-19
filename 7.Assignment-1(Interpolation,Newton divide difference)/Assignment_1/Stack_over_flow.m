
X=[1;1.1;1.3;1.4];
    y = log(X);
    gx=@(x)((x-X(1)).*(x-X(2)).*(x-X(3)).*(x-X(4)));
    diff_gx=diff(gx);
    n=length(X);
    
    for i=1:n
        %   L=conv(L,poly(X(i)))
        gx=conv(gx,x-X(i));
    end
    disp(gx)
    
    %  gx=(L(1).*x^n+(L(2).*x^n-1)+(L(3).*x^n-2)+(L(4).*x^n-3)+L(5))
    
     % dif_gx=diff(gx,x)
    max_gx=max(diff_gx)  

