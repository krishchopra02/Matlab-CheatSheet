function fib_seq = fibonacci(n)
    % Initialize the sequence
    fib_seq = zeros(1, n);
    
    if n >= 1
        fib_seq(1) = 0;
    end
    if n >= 2
        fib_seq(2) = 1;
    end
    
    % Generate remaining numbers
    for i = 3:n
        fib_seq(i) = fib_seq(i-1) + fib_seq(i-2);
    end
    
    % Display result
    fprintf('First %d Fibonacci numbers:\n', n);
    disp(fib_seq);
end

fibonacci(10)