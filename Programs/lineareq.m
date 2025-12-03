nction x = solveLinearSystem(A, b)
    % Check if system is solvable
    if det(A) == 0
        fprintf('Error: Matrix is singular. No unique solution exists.\n');
        x = [];
        return;
    end
    
    % Solve using different methods
    fprintf('Solving Ax = b\n');
    fprintf('Matrix A:\n');
    disp(A);
    fprintf('Vector b:\n');
    disp(b);
    
    % Method 1: Left division (most efficient)
    x1 = A \ b;
    
    % Method 2: Matrix inverse (less efficient)
    x2 = inv(A) * b;
    
    % Method 3: Using built-in linsolve
    x3 = linsolve(A, b);
    
    fprintf('Solution x:\n');
    disp(x1);
    
    % Verify solution
    residual = norm(A*x1 - b);
    fprintf('Residual (should be near 0): %.10f\n', residual);
    
    x = x1;
end

 A = [3 2 -1; 2 -2 4; -1 0.5 -1];
 b = [1; -2; 0];
 solveLinearSystem(A, b)