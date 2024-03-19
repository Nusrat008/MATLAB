function sum_Mat(x)

sum = 0;
n = size(x,1);

for i = 1:n
    for j = 1:n
        sum = sum + x(i,j);
    end
end
disp('Sum of matrix: ')
disp(sum)