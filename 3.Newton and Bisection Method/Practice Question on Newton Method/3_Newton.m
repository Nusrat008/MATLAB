clear all;
N = 300; % Max iteration
TOL = 1e-8; % Tolerance
% f = cos(x)-x
% df = -sin(x)-1
p0 = pi/4;
i = 1;

while i<=N
    f = cos(p0)-p0;
    df = -sin(p0)-1;
    if(df==0)
        disp('Zero derivative')
        return
    end
    p = p0-f/df;
    err = abs(p-p0);
    fprintf('# %d\t%.10f\t%f\n', i, p, err)
    if err < TOL
        fprintf('\nRoot is : %f\n', p)
        return 
    end
    i = i+1;
    p0 = p;
end

disp('failure to converge within the specified number of iterations');
