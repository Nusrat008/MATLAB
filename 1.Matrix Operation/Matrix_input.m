clc;

n = input('input n: ');

A = zeros(n);
for i = 1:n
    for j = 1:n
        fprintf('A[%d ,%d]:',i,j);
        A(i,j) = input('');
    end
end
disp(A)
