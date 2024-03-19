for j = 1:13
    xVal = [Bx(j), Ax(j)];
    yVal = [By(j), Ay(j)];
    
    plot(xVal, yVal,'bo-'), grid on, hold on
    xlim([-0.4 0.4]), ylim([-0.4 0.5])
end
