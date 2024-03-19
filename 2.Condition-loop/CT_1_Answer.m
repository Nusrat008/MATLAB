Z = 100;
R = 225;
C = 0.6e-6;
L = 0.5;
x = linspace(100, 300, 1001);
f = 1/Z-sqrt(1/(R^2)+(x*C-1./(x*L)).^2);
plot(x, f)


wl = 200;
wu = 250;
counter = 1;
wold = wl;
while counter<=100
    w = 0.5*(wl+wu)
    % f = F-(1/(4*pi*e0))*((q*Q*x)./((x.^2+a^2).^1.5));
    f = 1/Z-sqrt(1/(R^2)+(w*C-1./(w*L)).^2);
    fl = 1/Z-sqrt(1/(R^2)+(wl*C-1./(wl*L)).^2);
    if f*fl<0
        wu = w;
    else
        wl = w;
    end
    counter = counter+1;
    if abs((w-wold)/w)<1e-2
        w
        counter
        return
    end
    wold = w;
end