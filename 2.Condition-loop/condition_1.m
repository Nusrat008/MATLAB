A =rand(4);
B =rand(4);
 
if isequal(size(A),size(B))
    C = [A;B];
else 
    disp('The two matrics are not of the equal');
end