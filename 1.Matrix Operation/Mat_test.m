function Mat_test(k)
if(k==k')
    disp('hermitian')
else
    disp('not hermitian')
end
if(k^2==eye(size(k,1)))
    disp('Involutary')
else
    disp('Not Involutary')
end
if(k^-1==k')
    disp('Unitary')
else
    disp('NOt Unitary')
end
  