fprintf('Please enter a number and i am going to tell')
N = input('');

for j=1:5
    for i = N : inf
        if isprime(i)
            fprintf('The next prime number we evaluted is %d\n',i);

            break;
        end


    end
end

