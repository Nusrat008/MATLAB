function mat_t(x)

if(x == x')
   disp('hermitian')
   else 
    disp('not hermitian');
end
if(x^-1==x')
   disp('unitary')
   else 
    disp('not unitary');  
end
if(x^2 ==eye(size(x,1)))
   disp('involutary')
   else 
    disp('not involutary');  
end


