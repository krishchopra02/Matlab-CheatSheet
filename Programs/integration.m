function result = numericalIntegration(func, a, b, method, n)
    % func: function handle
    % a, b: integration limits
    % method: 'trapezoid', 'simpson', or 'midpoint'
    % n: number of intervals (must be even for Simpson)
    
    h = (b - a) / n;  % Step size
    
    switch method
        case 'trapezoid'
            % Trapezoidal rule
            x = linspace(a, b, n+1);
            y = func(x);
            result = h * (sum(y) - 0.5*(y(1) + y(end)));
            
        case 'simpson'
            % Simpson's 1/3 rule (n must be even)
            if mod(n, 2) ~= 0
                error('n must be even for Simpson rule');
            end
            x = linspace(a, b, n+1);
            y = func(x);
            result = h/3 * (y(1) + y(end) + ...
                     4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)));
            
        case 'midpoint'
            % Midpoint rule
            x = a + h/2 : h : b - h/2;
            y = func(x);
            result = h * sum(y);
            
        otherwise
            error('Unknown method. Use: trapezoid, simpson, or midpoint');
    end
    
    fprintf('Integration of function from %.2f to %.2f\n', a, b);
    fprintf('Method: %s, Intervals: %d\n', method, n);
    fprintf('Result: %.8f\n', result);
end

 f = @(x) x.^2;  % Integrate x^2 from 0 to 1 (answer should be 1/3)
 numericalIntegration(f, 0, 1, 'simpson', 100)