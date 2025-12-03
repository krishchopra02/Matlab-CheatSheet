# MATLAB Cheatsheet

## Basic Operations

### Variables and Assignment
```matlab
x = 5;              % Assign value (semicolon suppresses output)
y = 10              % Without semicolon shows output
clear x             % Clear variable x
clear all           % Clear all variables
clc                 % Clear command window
```

### Basic Math Operations
```matlab
a + b               % Addition
a - b               % Subtraction
a * b               % Multiplication
a / b               % Division
a ^ b               % Power
sqrt(a)             % Square root
abs(a)              % Absolute value
mod(a, b)           % Modulus (remainder)
```

## Arrays and Matrices

### Creating Arrays
```matlab
v = [1 2 3 4]                    % Row vector
v = [1, 2, 3, 4]                 % Row vector (comma optional)
v = [1; 2; 3; 4]                 % Column vector
v = 1:5                          % 1 2 3 4 5
v = 1:0.5:3                      % 1.0 1.5 2.0 2.5 3.0
v = linspace(0, 10, 5)           % 5 equally spaced points from 0 to 10
```

### Creating Matrices
```matlab
A = [1 2 3; 4 5 6; 7 8 9]         % 3x3 matrix
B = zeros(3, 4)                   % 3x4 matrix of zeros
C = ones(2, 5)                    % 2x5 matrix of ones
D = eye(4)                        % 4x4 identity matrix
E = rand(3, 3)                    % 3x3 random matrix (0 to 1)
F = randn(2, 4)                   % 2x4 random matrix (normal distribution)
```

### Indexing
```matlab
A(2, 3)             % Element at row 2, column 3
A(1, :)             % Entire first row
A(:, 2)             % Entire second column
A(end, :)           % Last row
A(2:4, 1:3)         % Submatrix: rows 2-4, columns 1-3
A([1 3], :)         % Rows 1 and 3
```

### Matrix Operations
```matlab
A + B               % Element-wise addition
A - B               % Element-wise subtraction
A * B               % Matrix multiplication
A .* B              % Element-wise multiplication
A ./ B              % Element-wise division
A .^ 2              % Element-wise power
A'                  % Transpose
inv(A)              % Inverse
det(A)              % Determinant
rank(A)             % Rank
trace(A)            % Trace (sum of diagonal)
```

### Matrix Functions
```matlab
size(A)             % Returns [rows, cols]
length(v)           % Length of vector
numel(A)            % Total number of elements
reshape(A, m, n)    % Reshape to m x n
diag(A)             % Extract diagonal
tril(A)             % Lower triangular part
triu(A)             % Upper triangular part
```

## Common Functions

### Mathematical Functions
```matlab
sin(x), cos(x), tan(x)           % Trigonometric
asin(x), acos(x), atan(x)        % Inverse trig
exp(x)                            % Exponential
log(x)                            % Natural logarithm
log10(x)                          % Base-10 logarithm
floor(x), ceil(x), round(x)      % Rounding
```

### Statistics
```matlab
sum(A)              % Sum of columns
sum(A, 'all')       % Sum of all elements
mean(A)             % Mean of columns
median(A)           % Median
std(A)              % Standard deviation
var(A)              % Variance
min(A), max(A)      % Minimum and maximum
```

### Array Manipulation
```matlab
sort(A)             % Sort ascending
[val, idx] = sort(A)              % Returns sorted values and indices
unique(A)           % Unique elements
find(A > 5)         % Indices where condition is true
any(A > 0)          % True if any element satisfies condition
all(A > 0)          % True if all elements satisfy condition
```

## Control Flow

### If-Else Statements
```matlab
if condition
    % code
elseif condition2
    % code
else
    % code
end
```

### For Loops
```matlab
for i = 1:10
    % code
end

for i = 1:2:10      % Step by 2
    % code
end
```

### While Loops
```matlab
while condition
    % code
end
```

### Switch Statements
```matlab
switch variable
    case value1
        % code
    case value2
        % code
    otherwise
        % code
end
```

## Functions

### Creating Functions
```matlab
function output = myFunction(input1, input2)
    % Function body
    output = input1 + input2;
end
```

### Multiple Outputs
```matlab
function [out1, out2] = myFunc(in)
    out1 = in * 2;
    out2 = in ^ 2;
end

[a, b] = myFunc(5);
```

### Anonymous Functions
```matlab
f = @(x) x^2 + 3*x - 5;
result = f(10);
```

## Plotting

### Basic 2D Plots
```matlab
x = 0:0.1:10;
y = sin(x);
plot(x, y)                        % Line plot
plot(x, y, 'r--')                 % Red dashed line
xlabel('X axis')
ylabel('Y axis')
title('My Plot')
legend('sin(x)')
grid on
```

### Multiple Plots
```matlab
hold on             % Keep current plot
plot(x, cos(x))
hold off

% Subplots
subplot(2, 1, 1)    % 2 rows, 1 column, first plot
plot(x, sin(x))
subplot(2, 1, 2)    % Second plot
plot(x, cos(x))
```

### Other Plot Types
```matlab
scatter(x, y)       % Scatter plot
bar(x, y)           % Bar chart
histogram(data)     % Histogram
loglog(x, y)        % Log-log plot
semilogx(x, y)      % Semi-log plot (x-axis log)
semilogy(x, y)      % Semi-log plot (y-axis log)
```

### 3D Plots
```matlab
plot3(x, y, z)                    % 3D line plot
surf(X, Y, Z)                     % Surface plot
mesh(X, Y, Z)                     % Mesh plot
contour(X, Y, Z)                  % Contour plot
```

## File I/O

### Save and Load
```matlab
save('filename.mat')              % Save all variables
save('filename.mat', 'var1', 'var2')  % Save specific variables
load('filename.mat')              % Load variables
```

### Reading/Writing Data
```matlab
data = readmatrix('file.csv')     % Read CSV
writematrix(data, 'output.csv')   % Write CSV
data = readtable('file.xlsx')     % Read Excel
writetable(data, 'output.xlsx')   % Write Excel
```

### Text Files
```matlab
fileID = fopen('file.txt', 'r');  % Open for reading
data = fscanf(fileID, '%f');      % Read formatted data
fclose(fileID);                   % Close file

fprintf('Value: %d\n', x);        % Print to console
```

## Useful Commands

### Getting Help
```matlab
help functionName   % Display help text
doc functionName    % Open documentation
lookfor keyword     % Search for keyword in help
```

### Workspace Management
```matlab
who                 % List variables in workspace
whos                % Detailed list of variables
clear               % Clear workspace
close all           % Close all figure windows
```

### Timing and Performance
```matlab
tic                 % Start timer
% code here
toc                 % Display elapsed time

profile on          % Start profiler
% code here
profile viewer      % View profiling results
```

---

## Common Tricks and Tips

### 1. Vectorization (Avoid Loops!)
Instead of:
```matlab
for i = 1:length(x)
    y(i) = x(i)^2;
end
```
Use:
```matlab
y = x.^2;  % Much faster!
```

### 2. Logical Indexing
```matlab
A = [1 5 3 8 2];
A(A > 3)            % Returns [5 8]
A(A > 3) = 0;       % Set values > 3 to zero
```

### 3. Pre-allocate Arrays
```matlab
% Bad (slow)
for i = 1:10000
    x(i) = i^2;
end

% Good (fast)
x = zeros(1, 10000);
for i = 1:10000
    x(i) = i^2;
end
```

### 4. Suppress Output in Loops
Always use semicolons in loops to avoid printing thousands of values.

### 5. Quick Matrix Generation
```matlab
A = magic(5)        % 5x5 magic square
B = pascal(4)       % 4x4 Pascal matrix
C = hilb(3)         % 3x3 Hilbert matrix
```

### 6. Multiple Assignments
```matlab
[m, n] = size(A);
[minVal, minIdx] = min(A);
```

### 7. Conditional Replacement
```matlab
A(A < 0) = 0;       % Replace negative values with 0
A(isnan(A)) = 0;    % Replace NaN with 0
A(isinf(A)) = 0;    % Replace Inf with 0
```

### 8. Element-wise vs Matrix Operations
```matlab
A * B               % Matrix multiplication
A .* B              % Element-wise multiplication
A ^ 2               % Matrix to power 2
A .^ 2              % Each element squared
```

---

## Common Interview/Exam Questions

### Q1: Transpose vs Conjugate Transpose
```matlab
A = [1+2i, 3-i; 4i, 5];
A.'                 % Transpose (don't conjugate)
A'                  % Conjugate transpose
```

### Q2: Row vs Column Major
MATLAB is column-major, so accessing columns is faster than rows in loops.

### Q3: Finding Indices
```matlab
[row, col] = find(A > 5);      % Find row and column indices
idx = find(A > 5);             % Linear indices
```

### Q4: Difference Between = and ==
```matlab
x = 5;              % Assignment
x == 5              % Comparison (returns true/false)
```

### Q5: Creating Repeating Patterns
```matlab
repmat(A, m, n)     % Repeat matrix A in m x n tiling
ones(3,1) * [1 2 3] % Creates 3x3 matrix with repeated row
```

### Q6: Cumulative Operations
```matlab
cumsum(A)           % Cumulative sum
cumprod(A)          % Cumulative product
diff(A)             % Differences between consecutive elements
```

### Q7: Matrix Division
```matlab
A \ b               % Solve Ax = b (left division)
b / A               % Solve xA = b (right division)
```

### Q8: Colon Operator Tricks
```matlab
A(:)                % Convert matrix to column vector
A(1:end)            % All elements (same as A(:))
A(end:-1:1)         % Reverse order
```

# MATLAB Cheatsheet

## Basic Operations

### Variables and Assignment
```matlab
x = 5;              % Assign value (semicolon suppresses output)
y = 10              % Without semicolon shows output
clear x             % Clear variable x
clear all           % Clear all variables
clc                 % Clear command window
```

### Basic Math Operations
```matlab
a + b               % Addition
a - b               % Subtraction
a * b               % Multiplication
a / b               % Division
a ^ b               % Power
sqrt(a)             % Square root
abs(a)              % Absolute value
mod(a, b)           % Modulus (remainder)
```

## Arrays and Matrices

### Creating Arrays
```matlab
v = [1 2 3 4]                    % Row vector
v = [1, 2, 3, 4]                 % Row vector (comma optional)
v = [1; 2; 3; 4]                 % Column vector
v = 1:5                          % 1 2 3 4 5
v = 1:0.5:3                      % 1.0 1.5 2.0 2.5 3.0
v = linspace(0, 10, 5)           % 5 equally spaced points from 0 to 10
```

### Creating Matrices
```matlab
A = [1 2 3; 4 5 6; 7 8 9]        % 3x3 matrix
B = zeros(3, 4)                   % 3x4 matrix of zeros
C = ones(2, 5)                    % 2x5 matrix of ones
D = eye(4)                        % 4x4 identity matrix
E = rand(3, 3)                    % 3x3 random matrix (0 to 1)
F = randn(2, 4)                   % 2x4 random matrix (normal distribution)
```

### Indexing
```matlab
A(2, 3)             % Element at row 2, column 3
A(1, :)             % Entire first row
A(:, 2)             % Entire second column
A(end, :)           % Last row
A(2:4, 1:3)         % Submatrix: rows 2-4, columns 1-3
A([1 3], :)         % Rows 1 and 3
```

### Matrix Operations
```matlab
A + B               % Element-wise addition
A - B               % Element-wise subtraction
A * B               % Matrix multiplication
A .* B              % Element-wise multiplication
A ./ B              % Element-wise division
A .^ 2              % Element-wise power
A'                  % Transpose
inv(A)              % Inverse
det(A)              % Determinant
rank(A)             % Rank
trace(A)            % Trace (sum of diagonal)
```

### Matrix Functions
```matlab
size(A)             % Returns [rows, cols]
length(v)           % Length of vector
numel(A)            % Total number of elements
reshape(A, m, n)    % Reshape to m x n
diag(A)             % Extract diagonal
tril(A)             % Lower triangular part
triu(A)             % Upper triangular part
```

## Common Functions

### Mathematical Functions
```matlab
sin(x), cos(x), tan(x)           % Trigonometric
asin(x), acos(x), atan(x)        % Inverse trig
exp(x)                            % Exponential
log(x)                            % Natural logarithm
log10(x)                          % Base-10 logarithm
floor(x), ceil(x), round(x)      % Rounding
```

### Statistics
```matlab
sum(A)              % Sum of columns
sum(A, 'all')       % Sum of all elements
mean(A)             % Mean of columns
median(A)           % Median
std(A)              % Standard deviation
var(A)              % Variance
min(A), max(A)      % Minimum and maximum
```

### Array Manipulation
```matlab
sort(A)             % Sort ascending
[val, idx] = sort(A)              % Returns sorted values and indices
unique(A)           % Unique elements
find(A > 5)         % Indices where condition is true
any(A > 0)          % True if any element satisfies condition
all(A > 0)          % True if all elements satisfy condition
```

## Control Flow

### If-Else Statements
```matlab
if condition
    % code
elseif condition2
    % code
else
    % code
end
```

### For Loops
```matlab
for i = 1:10
    % code
end

for i = 1:2:10      % Step by 2
    % code
end
```

### While Loops
```matlab
while condition
    % code
end
```

### Switch Statements
```matlab
switch variable
    case value1
        % code
    case value2
        % code
    otherwise
        % code
end
```

## Functions

### Creating Functions
```matlab
function output = myFunction(input1, input2)
    % Function body
    output = input1 + input2;
end
```

### Multiple Outputs
```matlab
function [out1, out2] = myFunc(in)
    out1 = in * 2;
    out2 = in ^ 2;
end

[a, b] = myFunc(5);
```

### Anonymous Functions
```matlab
f = @(x) x^2 + 3*x - 5;
result = f(10);
```

## Plotting

### Basic 2D Plots
```matlab
x = 0:0.1:10;
y = sin(x);
plot(x, y)                        % Line plot
plot(x, y, 'r--')                 % Red dashed line
xlabel('X axis')
ylabel('Y axis')
title('My Plot')
legend('sin(x)')
grid on
```

### Multiple Plots
```matlab
hold on             % Keep current plot
plot(x, cos(x))
hold off

% Subplots
subplot(2, 1, 1)    % 2 rows, 1 column, first plot
plot(x, sin(x))
subplot(2, 1, 2)    % Second plot
plot(x, cos(x))
```

### Other Plot Types
```matlab
scatter(x, y)       % Scatter plot
bar(x, y)           % Bar chart
histogram(data)     % Histogram
loglog(x, y)        % Log-log plot
semilogx(x, y)      % Semi-log plot (x-axis log)
semilogy(x, y)      % Semi-log plot (y-axis log)
```

### 3D Plots
```matlab
plot3(x, y, z)                    % 3D line plot
surf(X, Y, Z)                     % Surface plot
mesh(X, Y, Z)                     % Mesh plot
contour(X, Y, Z)                  % Contour plot
```

## File I/O

### Save and Load
```matlab
save('filename.mat')              % Save all variables
save('filename.mat', 'var1', 'var2')  % Save specific variables
load('filename.mat')              % Load variables
```

### Reading/Writing Data
```matlab
data = readmatrix('file.csv')     % Read CSV
writematrix(data, 'output.csv')   % Write CSV
data = readtable('file.xlsx')     % Read Excel
writetable(data, 'output.xlsx')   % Write Excel
```

### Text Files
```matlab
fileID = fopen('file.txt', 'r');  % Open for reading
data = fscanf(fileID, '%f');      % Read formatted data
fclose(fileID);                   % Close file

fprintf('Value: %d\n', x);        % Print to console
```

## Useful Commands

### Getting Help
```matlab
help functionName   % Display help text
doc functionName    % Open documentation
lookfor keyword     % Search for keyword in help
```

### Workspace Management
```matlab
who                 % List variables in workspace
whos                % Detailed list of variables
clear               % Clear workspace
close all           % Close all figure windows
```

### Timing and Performance
```matlab
tic                 % Start timer
% code here
toc                 % Display elapsed time

profile on          % Start profiler
% code here
profile viewer      % View profiling results
```

---

## Common Tricks and Tips

### 1. Vectorization (Avoid Loops!)
Instead of:
```matlab
for i = 1:length(x)
    y(i) = x(i)^2;
end
```
Use:
```matlab
y = x.^2;  % Much faster!
```

### 2. Logical Indexing
```matlab
A = [1 5 3 8 2];
A(A > 3)            % Returns [5 8]
A(A > 3) = 0;       % Set values > 3 to zero
```

### 3. Pre-allocate Arrays
```matlab
% Bad (slow)
for i = 1:10000
    x(i) = i^2;
end

% Good (fast)
x = zeros(1, 10000);
for i = 1:10000
    x(i) = i^2;
end
```

### 4. Suppress Output in Loops
Always use semicolons in loops to avoid printing thousands of values.

### 5. Quick Matrix Generation
```matlab
A = magic(5)        % 5x5 magic square
B = pascal(4)       % 4x4 Pascal matrix
C = hilb(3)         % 3x3 Hilbert matrix
```

### 6. Multiple Assignments
```matlab
[m, n] = size(A);
[minVal, minIdx] = min(A);
```

### 7. Conditional Replacement
```matlab
A(A < 0) = 0;       % Replace negative values with 0
A(isnan(A)) = 0;    % Replace NaN with 0
A(isinf(A)) = 0;    % Replace Inf with 0
```

### 8. Element-wise vs Matrix Operations
```matlab
A * B               % Matrix multiplication
A .* B              % Element-wise multiplication
A ^ 2               % Matrix to power 2
A .^ 2              % Each element squared
```

---

## Common Interview/Exam Questions

### Q1: Transpose vs Conjugate Transpose
```matlab
A = [1+2i, 3-i; 4i, 5];
A.'                 % Transpose (don't conjugate)
A'                  % Conjugate transpose
```

### Q2: Row vs Column Major
MATLAB is column-major, so accessing columns is faster than rows in loops.

### Q3: Finding Indices
```matlab
[row, col] = find(A > 5);     % Find row and column indices
idx = find(A > 5);             % Linear indices
```

### Q4: Difference Between = and ==
```matlab
x = 5;              % Assignment
x == 5              % Comparison (returns true/false)
```

### Q5: Creating Repeating Patterns
```matlab
repmat(A, m, n)     % Repeat matrix A in m x n tiling
ones(3,1) * [1 2 3] % Creates 3x3 matrix with repeated row
```

### Q6: Cumulative Operations
```matlab
cumsum(A)           % Cumulative sum
cumprod(A)          % Cumulative product
diff(A)             % Differences between consecutive elements
```

### Q7: Matrix Division
```matlab
A \ b               % Solve Ax = b (left division)
b / A               % Solve xA = b (right division)
```

### Q8: Colon Operator Tricks
```matlab
A(:)                % Convert matrix to column vector
A(1:end)            % All elements (same as A(:))
A(end:-1:1)         % Reverse order
```

### Q9: Empty Matrix [] Uses
```matlab
A(2, :) = [];       % Delete entire row 2
A(:, 3) = [];       % Delete entire column 3
A(A < 0) = [];      % Remove all negative values (reshapes!)
```

### Q10: Short-Circuit vs Element-wise Logical
```matlab
% && and || short-circuit (stop at first determination)
if (x > 0) && (1/x > 2)  % Won't divide by zero if x <= 0
    % code
end

% & and | evaluate ALL conditions
A & B               % Element-wise AND on arrays
A && B              % Error if A and B are arrays!
```

### Q11: What Does size() Return for Vectors?
```matlab
v = [1 2 3 4];
size(v)             % Returns [1 4] (row vector)
size(v')            % Returns [4 1] (column vector)
length(v)           % Returns 4 (largest dimension)
numel(v)            % Returns 4 (total elements)
```

### Q12: Matrix Concatenation
```matlab
A = [1 2; 3 4];
B = [5 6; 7 8];
[A B]               % Horizontal: [1 2 5 6; 3 4 7 8]
[A; B]              % Vertical: [1 2; 3 4; 5 6; 7 8]
cat(1, A, B)        % Same as [A; B]
cat(2, A, B)        % Same as [A B]
```

### Q13: NaN and Inf Behavior
```matlab
0/0                 % NaN
1/0                 % Inf
isnan(x)            % Check for NaN
isinf(x)            % Check for Inf
nansum(A)           % Sum ignoring NaN (older versions)
sum(A, 'omitnan')   % Sum ignoring NaN (newer versions)
```

### Q14: Pass by Value or Reference?
MATLAB uses "copy-on-write": variables are passed by reference until modified, then copied. Large arrays aren't duplicated unless changed.

### Q15: Linear vs Subscript Indexing
```matlab
A = [1 2 3; 4 5 6];
A(5)                % Linear index: 5th element (column-major) = 3
A(2, 2)             % Subscript index: row 2, col 2 = 5
ind2sub([2 3], 5)   % Convert linear to subscript: (1, 3)
sub2ind([2 3], 1, 3)% Convert subscript to linear: 5
```

---

## Advanced Tricks

### 9. Swap Variables Without Temp
```matlab
% Traditional
temp = a;
a = b;
b = temp;

% MATLAB way
[a, b] = deal(b, a);
```

### 10. Generate Random Integers
```matlab
randi([1 10], 3, 4)     % 3x4 matrix of random integers 1-10
randi(100)              % Single random integer 1-100
```

### 11. Create Diagonal Matrix from Vector
```matlab
v = [1 2 3];
D = diag(v)             % 3x3 diagonal matrix
D2 = diag(v, 1)         % Place on 1st super-diagonal
```

### 12. Kronecker Product for Patterns
```matlab
A = [1 0; 0 1];
B = ones(2);
kron(A, B)              % Block diagonal structure
```

### 13. meshgrid for 2D Functions
```matlab
x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;        % Evaluate function on grid
surf(X, Y, Z)
```

### 14. Anonymous Functions with Multiple Inputs
```matlab
f = @(x, y) x.^2 + y.^2;
result = f(3, 4);       % Returns 25
```

### 15. Testing for Integer
```matlab
mod(x, 1) == 0          % True if x is integer
floor(x) == x           % Alternative method
```

### 16. Efficient Matrix Building
```matlab
% Build sparse matrix efficiently
i = [1 2 2 3];
j = [2 1 3 3];
v = [5 6 7 8];
S = sparse(i, j, v);    % Sparse matrix with specified elements
```

### 17. Set Operations
```matlab
A = [1 2 3 4];
B = [3 4 5 6];
intersect(A, B)         % Common elements: [3 4]
union(A, B)             % All unique elements: [1 2 3 4 5 6]
setdiff(A, B)           % Elements in A not in B: [1 2]
ismember(A, B)          % Logical array: [0 0 1 1]
```

### 18. Matrix Comparison
```matlab
A == B                  % Element-wise comparison
isequal(A, B)           % True if matrices identical
isequaln(A, B)          % True even if both have NaN in same place
```

### 19. Quick Statistics on Subgroups
```matlab
% Group data
data = [1 2 3 4 5];
groups = [1 1 2 2 2];
accumarray(groups', data')  % Sum by group: [3; 12]
```

### 20. String vs Char
```matlab
s = "Hello"             % String (newer, more features)
c = 'Hello'             % Character array (older)
string(c)               % Convert char to string
char(s)                 % Convert string to char
```

### 21. Avoid Divide by Zero
```matlab
% Instead of: y = x ./ (a + b)
eps                     % Smallest positive number
y = x ./ (a + b + eps); % Prevents division by exact zero
```

### 22. Max/Min with Indices on Matrices
```matlab
A = [3 7 2; 9 1 5];
[maxVal, idx] = max(A(:))   % Global max: 9, index 2 (linear)
[M, I] = max(A)             % Max of each column
[M, I] = max(A, [], 2)      % Max of each row
```

### 23. Quick Array Initialization Patterns
```matlab
A = magic(n)            % Magic square
A = pascal(n)           % Pascal's triangle
A = toeplitz(c, r)      % Toeplitz matrix
A = hankel(c)           % Hankel matrix
```

### 24. Rotating and Flipping
```matlab
fliplr(A)               % Flip left-right
flipud(A)               % Flip up-down
rot90(A)                % Rotate 90° counter-clockwise
rot90(A, 2)             % Rotate 180°
```

### 25. Logical Tricks
```matlab
xor(A, B)               % Exclusive OR
~A                      % Logical NOT
A & ~B                  % A AND NOT B
```

### 26. Find Unique Rows
```matlab
A = [1 2; 3 4; 1 2; 5 6];
unique(A, 'rows')       % Returns [1 2; 3 4; 5 6]
```

### 27. Timing Comparisons
```matlab
% Method 1
tic; 
code1; 
t1 = toc;

% Method 2
tic; 
code2; 
t2 = toc;

fprintf('Method 1: %.4f sec\n', t1);
fprintf('Method 2: %.4f sec\n', t2);
```

### 28. Indexing with Logical Arrays
```matlab
A = [1 5 3 8 2 9];
mask = mod(A, 2) == 0;  % [0 0 0 1 1 0]
A(mask)                 % Returns [8 2]
A(~mask)                % Returns [1 5 3 9]
```

### 29. Conditional Sum/Count
```matlab
sum(A > 5)              % Count elements > 5
sum(A(A > 5))           % Sum of elements > 5
nnz(A > 5)              % Count non-zero (same as sum for logical)
```

### 30. Function Handles for Optimization
```matlab
f = @(x) x.^2 - 4*x + 4;
fminbnd(f, 0, 5)        % Find minimum in range [0, 5]
fzero(f, 1)             % Find zero near x = 1
```