u = @(x) 1./(1+x.^2); % The function we are interested in
number_of_data_Points = [5,7,9,11,13,15];


syms x; % Initializes x to be symbolic

for n = number_of_data_Points

    xn = linspace(-5,5,n);      % Creates x values
    yn = u(xn);                 % Creates y values

    L=0; % Re/Initializes Langrange Polynomial
    for j = 1:n
        numer = 1; % Re/Initializes Numerator
        denom = 1; % Re/Initializes Denominator
        for i = 1:n
            if j~=i
                denom_temp = xn(j) - xn(i);

                numer_temp = x - xn(i);    

                numer =  numer * numer_temp;
                denom = denom * denom_temp;
            else
                continue
            end
        end
        L = L + yn(j) * numer / denom;
    end
    L = matlabFunction(L);
end