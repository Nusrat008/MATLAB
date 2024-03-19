clc;
clear all;
close all;
format compact;

A=[1 2; 3 4];
B=[A -A; -A A];
C=[4 -3; -2 1];

disp('B = ');
disp(B);
disp('C = ');
disp(C);

for k=1:3
    for l=1:3
        if(isequal(B(k:k+1,l:l+1),C)) 
            break;
        end
    end
    if(isequal(B(k:k+1,l:l+1),C))
        break;
    end
end

if(isequal(B(k:k+1,l:l+1),C))
            fprintf('C is a sub matrix\n');
            fprintf('C starts at row %d and column %d of the matrix b\n',k,l);
else
            fprintf('C is not a submatrix of B\n');
end
