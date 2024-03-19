
fprintf('Please enter matrix dimension: ')
m=input('');
a = m+2/2;

for i=1:m
   if i==1 || i==m
       for j=1:m
        n
        (i,j)=a;
       end      
   end
    if i>=m-a && i<m
        for j=1:m
            if j==1 || j==m
               n(i,j)=a;
               elseif j==a
                   n(i,j)=a-2
            else
                n(i,j)=a-1;
            end
            
                
           
                
        end
        
    end
    for j=1:3
         
        
       n(i,j)=a;
       if i==2 && j==2
           n(i,j)=1;
       end
           
    end  
end