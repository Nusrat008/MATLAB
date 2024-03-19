% Define your discrete-time sequence x[n]
x_n = [1, 2, 3, 4];

% Calculate the Z-transform
X_z = z_transform(x_n);

% Display the result
disp('Z-transform X(z):');
disp(X_z);