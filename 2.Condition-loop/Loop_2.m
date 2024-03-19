fprintf('Please enter the student data for exam.1 \n');

a=1;
for i=1:3
    
    fprintf('Whether student no. %d present [Y|N] ',i);
    c1 = input('','s');
    
    if c1=='N'
        continue;
    end
    
    
    fprintf('Please enter the grade \n')
    grades(a)=input('');
    a = a+1; 
    
end
