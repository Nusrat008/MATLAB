fprintf('Please enter 10 students Grades in the form of percentages\n')

for i=1:10
    fprintf('Enter the number for students %d\n ',i);
    for j=1:5
        
        grades(i) = input('');
    
    end
    fprintf('The average grade is %d',mean(grades));
    
end

fprintf('The average grade is %d',mean(grades));
