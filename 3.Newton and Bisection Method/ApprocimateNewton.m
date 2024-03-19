f1= @(x,y) y - 0.2*(exp(0.2*x) + exp(-.2*x));
f2 = @(x,y) x^2 + 4*y^2 - 16;
xi = 3;
yi = 0.5;
err = 0.001;
h = 10 ^(-6);
for i = 1:5
    d1f1 = (f1(xi+h,0) -f1(xi,0))/h;
    d1f2 = (f2(xi+h,0) -f2(xi,0))/h;
    d2f2 = (f2(0,yi+h) -f2(0,yi))/h;
    
    j = det([d1f1 1 ;d1f2 d2f2]);
    delx = (-f1(xi,yi) * d2f2 + f2(xi,yi))/j;
    dely = (-f2(xi,yi) * d1f1 + f1(xi,yi)*d1f2)/j;
   
    xin =xi +delx;
    yin = yi + dely;
    errx = abs((xin - xi)/xi);
    erry = (abs(yin - yi)/yi);
    fprintf(...
        'i=%1.0f  x=%-7.4f  y=%-7.4f Error in  x=%-7.4f  Error in  x=%-7.4f\n',...
        i,xin,yin,errx,erry)
    if errx<err && erry<err
        break
    else
        xi = xin;
        yi = yin;
    end
end