function X_z = z_Transform(x,z)
    % x: input discrete signal
    % z: Z-transform variable

    n = 0:length(x)-1; % Assuming the signal starts at n=0
    
    % Z-transform formula
    X_z = sum(x .* z.^(-n));
end