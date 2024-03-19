% Define your discrete signal x[n]
x = [1, 2, 3, 4]; % Replace this with your actual signal

% Z-transform variable
z = sym('z');

% Call the function
X_z = zTransform(x, z);

% Display the result
disp('Z-transform of x[n]:');
disp(X_z);