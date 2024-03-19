i =1;

C = logical(1);
fprintf('Enter the marks in percentage for the students \n');

while C
    
    fprintf('Please enter the students marks\n');
    grades(i) = input('');
    i = i+1;
    
    fprintf('Do you want to get another Students marks [Y||N]');
    % for getting input string format 's'
    c = input('','s');
    
    if c == 'Y' || c =='Yes'
        C = 1;
    else
        C = 0;
    end
end