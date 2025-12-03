function is_prime = checkPrime(num)
    % Check if a number is prime
    if num < 2
        is_prime = false;
        return;
    end
    
    for i = 2:sqrt(num)
        if mod(num, i) == 0
            is_prime = false;
            return;
        end
    end
    is_prime = true;
end

function primes = findPrimes(n)
    % Find all prime numbers up to n using Sieve of Eratosthenes
    if n < 2
        primes = [];
        return;
    end
    
    % Create logical array (true = potentially prime)
    is_prime = true(1, n);
    is_prime(1) = false;  % 1 is not prime
    
    % Sieve algorithm
    for i = 2:sqrt(n)
        if is_prime(i)
            is_prime(i^2:i:n) = false;  % Mark multiples as not prime
        end
    end
    
    primes = find(is_prime);
    fprintf('Prime numbers up to %d:\n', n);
    disp(primes);
end


 checkPrime(17)
 findPrimes(50)

