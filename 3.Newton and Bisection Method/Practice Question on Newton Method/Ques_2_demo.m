fprintf('Please enter matrix dimension: ')
m=input('');
a =(m+1)/2;
k=0;
q=a;
c=zeros(m);

for i=1:m
   
    
    for j=i:m-k
        
        if i==a && j==a
           c(i,j)=1; 
          
        end
        
        c(i,j)= q;
        c(j,i)=q;
        c(j,i)=q;
    end
    
    
    
    q=q-1;
    k=k+1;
    
end
for i=m:1
   
    
    for j=i:-1:m
        
        if i==a && j==a
           c(i,j)=1; 
          
        end
        
        c(i,j)= q;
        c(j,i)=q;
        c(j,i)=q;
    end
    
    
    
    q=q-1;
    k=k+1;
    
end
disp(c);