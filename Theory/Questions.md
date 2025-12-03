## **Basic Operations & Syntax**

**1\. What is the difference between .\* and \* in MATLAB?**

- matlabA = \[1 2; 3 4\]; B = \[5 6; 7 8\];C = A .\* B % Result: \[1\*5 2\*6; 3\*7 4\*8\] = \[5 12; 21 32\]
- matlabC = A \* B % Result: \[1\*5+2\*7 1\*6+2\*8; 3\*5+4\*7 3\*6+4\*8\] = \[19 22; 43 50\]

**2\. Explain the difference between scripts and functions.**

- **Scripts**: Collection of commands in a .m file, share workspace with caller
- matlab% Script: myscript.mx = 1:10;y = x.^2;% Function: myfunction.mfunction output = myfunction(input) output = input.^2;end

**3\. How do you clear variables, figures, or the command window?**

- clear - removes all variables from workspace
- clear var1 var2 - removes specific variables
- clc - clears command window
- close all - closes all figure windows
- close(fig_number) - closes specific figure

**4\. What does the : operator do? Give examples.**Creates vectors with specified increments:

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` 1:5           % [1 2 3 4 5]  1:2:10        % [1 3 5 7 9]  10:-1:1       % [10 9 8 7 6 5 4 3 2 1]  A(2:4, 3:5)   % Accesses rows 2-4, columns 3-5 of matrix A `

**5\. How do you create evenly spaced vectors using linspace and logspace?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` linspace(0, 10, 5)    % [0 2.5 5 7.5 10] - 5 points between 0 and 10  logspace(0, 3, 4)     % [1 10 100 1000] - 4 points between 10^0 and 10^3 `

## **Matrix Operations**

**6\. Create a 5×5 identity matrix.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` I = eye(5); `

**7\. How do you transpose a matrix? What's the difference between ' and .'?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = [1+2i 3; 4 5-3i];  B = A.'   % Simple transpose: [1+2i 4; 3 5-3i]  C = A'    % Complex conjugate transpose: [1-2i 4; 3 5+3i] `

**8\. Extract the diagonal elements of a matrix.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = [1 2 3; 4 5 6; 7 8 9];  d = diag(A);  % Returns [1; 5; 9] `

**9\. Given matrix A, how do you access various elements?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = magic(4);  element = A(2, 3);       % Element at row 2, column 3  col3 = A(:, 3);          % Entire third column  rows_2to4 = A(2:4, :);   % Rows 2 through 4  submatrix = A(1:3, 2:4); % Rows 1-3, columns 2-4 `

## **Programming & Control Flow**

**10\. Write a for loop to calculate the sum of 1 to N.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` N = 10;  sum_val = 0;  for i = 1:N      sum_val = sum_val + i;  end  % Vectorized alternative: sum(1:N) `

**11\. Write a while loop that continues until a value exceeds 100.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = 1;  while x <= 100      x = x * 2;      fprintf('Current value: %d\n', x);  end `

**12\. Write an if-elseif-else statement to categorize a number.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = input('Enter a number: ');  if x > 0      disp('Positive');  elseif x < 0      disp('Negative');  else      disp('Zero');  end `

**13\. What is vectorization? Why is it preferred?**Vectorization uses array operations instead of loops:

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Non-vectorized (slow)  for i = 1:1000      y(i) = sin(i) + cos(i);  end  % Vectorized (fast)  i = 1:1000;  y = sin(i) + cos(i); `

**Why preferred:** Faster execution, cleaner code, optimized for MATLAB's architecture.

**14\. How do you use switch-case statements?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` color = 'red';  switch color      case 'red'          disp('Stop');      case 'yellow'          disp('Caution');      case 'green'          disp('Go');      otherwise          disp('Invalid color');  end `

## **Functions & Files**

**15\. Function that returns area and circumference of a circle.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` function [area, circumference] = circleProperties(radius)      area = pi * radius^2;      circumference = 2 * pi * radius;  end  % Usage: [a, c] = circleProperties(5); `

**16\. What are anonymous functions? Provide an example.**Anonymous functions are simple one-line functions:

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` f = @(x) x^2 + 2*x + 1;  result = f(3);  % Returns 16  % Multi-input example  g = @(x, y) x^2 + y^2;  result = g(3, 4);  % Returns 25 `

**17\. How do you handle multiple return values from a function?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Function definition  function [mean_val, std_val, max_val] = stats(data)      mean_val = mean(data);      std_val = std(data);      max_val = max(data);  end  % Calling with multiple outputs  [m, s, mx] = stats([1 2 3 4 5]);  % If you only need first output  m = stats([1 2 3 4 5]); `

**18\. Difference between nargin and varargin?**

- nargin: Number of input arguments actually passed
- varargin: Variable-length input argument list

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` function result = mySum(varargin)      if nargin == 0          result = 0;      else          result = sum([varargin{:}]);      end  end  % Usage: mySum(1,2,3) or mySum(1,2,3,4,5) `

## **Plotting & Visualization**

**19\. Plot y = sin(x) with proper labels.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = linspace(0, 2*pi, 100);  y = sin(x);  plot(x, y, 'b-', 'LineWidth', 2);  xlabel('x (radians)');  ylabel('sin(x)');  title('Sine Wave');  grid on;  axis([0 2*pi -1.2 1.2]); `

**20\. Create multiple plots using subplot.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = linspace(0, 2*pi, 100);  subplot(2, 2, 1); plot(x, sin(x)); title('Sine');  subplot(2, 2, 2); plot(x, cos(x)); title('Cosine');  subplot(2, 2, 3); plot(x, tan(x)); title('Tangent');  subplot(2, 2, 4); plot(sin(x), cos(x)); title('Circle'); `

**21\. Change line style, color, and marker.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` plot(x, y, 'r--o', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'g');  % 'r' = red, '--' = dashed, 'o' = circle markers `

**22\. Create a histogram.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` data = randn(1000, 1);  % 1000 random numbers  histogram(data, 20);    % 20 bins  title('Histogram of Random Data');  xlabel('Value');  ylabel('Frequency'); `

**23\. Add a legend to your plot.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = 0:0.1:10;  plot(x, sin(x), 'b-', x, cos(x), 'r--');  legend('sin(x)', 'cos(x)', 'Location', 'best'); `

## **Data Import/Export**

**24\. How do you load data from a .mat file?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` load('filename.mat');          % Loads all variables  data = load('filename.mat');   % Loads into structure  specific_var = load('filename.mat', 'var1'); % Load specific variable `

**25\. Read/write data to a text file.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Writing  data = rand(10, 3);  writematrix(data, 'output.txt');  dlmwrite('output.txt', data, 'delimiter', '\t');  % Reading  data = readmatrix('input.txt');  data = dlmread('input.txt'); `

**26\. Read Excel files.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Read entire file  data = readmatrix('data.xlsx');  % Read specific sheet and range  data = readmatrix('data.xlsx', 'Sheet', 'Sheet1', 'Range', 'A1:D10');  % Write to Excel  writematrix(data, 'output.xlsx', 'Sheet', 'Results'); `

## **Problem-Solving Questions**

**27\. Solve system of linear equations: 2x + 3y = 8, 4x - y = 2**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = [2 3; 4 -1];  B = [8; 2];  solution = A\B;  % Uses backslash operator  % Alternative: solution = inv(A) * B;  % Result: x = 1, y = 2 `

**28\. Find roots of polynomial: x³ - 6x² + 11x - 6 = 0**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` coefficients = [1 -6 11 -6];  roots(coefficients)  % Returns [3; 2; 1] `

**29\. Calculate mean, median, and standard deviation.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` data = [1 2 3 4 5 6 7 8 9 10];  mean_val = mean(data);  median_val = median(data);  std_val = std(data);  fprintf('Mean: %.2f, Median: %.2f, Std: %.2f\n', mean_val, median_val, std_val); `

**30\. Numerical integration of f(x) = x² from 0 to 1.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Using integral function  f = @(x) x.^2;  result = integral(f, 0, 1);  % Result: 0.3333  % Using trapz (for discrete data)  x = linspace(0, 1, 100);  y = x.^2;  result = trapz(x, y); `

**31\. Find maximum value and its index in an array.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = [3, 7, 2, 9, 4, 1];  [max_val, max_idx] = max(A);  % max_val = 9, max_idx = 4  % For 2D matrix  B = magic(3);  [max_val, idx] = max(B(:));  % Convert to column first  [row, col] = ind2sub(size(B), idx); `

## **Debugging & Efficiency**

**32\. What are common uses of the debug toolbar?**

- **Breakpoints**: Pause execution at specific lines (click left margin or F12)
- **Step** (F10): Execute next line
- **Step In** (F11): Enter function call
- **Step Out** (Shift+F11): Exit current function
- **Continue** (F5): Run to next breakpoint or end

**33\. How do you measure execution time?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` tic;  % Code to measure  for i = 1:10000      A(i) = i^2;  end  elapsed_time = toc;  fprintf('Execution time: %.4f seconds\n', elapsed_time); `

**34\. What is preallocation and why is it important?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Without preallocation (SLOW - grows array dynamically)  for i = 1:10000      A(i) = i^2;  % MATLAB resizes A each iteration  end  % With preallocation (FAST)  A = zeros(1, 10000);  % Allocate memory once  for i = 1:10000      A(i) = i^2;  end `

**35\. How do you use tic and toc?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` tic;  pause(2);  % Simulate work  toc;  % Prints elapsed time  % Multiple timers  tic;  pause(1);  t1 = toc;  tic;  pause(2);  t2 = toc; `

## **String Operations**

**36\. How do you concatenate strings?**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Old method (before R2016b)  str1 = 'Hello';  str2 = 'World';  result = strcat(str1, ' ', str2);  % New method (string arrays)  str1 = "Hello";  str2 = "World";  result = str1 + " " + str2;  % Character arrays  result = [str1, ' ', str2]; `

**37\. Convert number to string and vice versa.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` % Number to string  num = 123.45;  str = num2str(num);  % '123.45'  str = sprintf('Value: %.2f', num);  % 'Value: 123.45'  % String to number  str = '123.45';  num = str2double(str);  num = sscanf(str, '%f'); `

**38\. Extract a substring.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` str = 'Hello World';  sub1 = str(1:5);      % 'Hello'  sub2 = str(7:end);    % 'World'  sub3 = extractBetween(str, 1, 5);  % 'Hello' `

## **Specialized Topics**

**39\. Solve ODEs using ode45.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` function dydt = myODE(t, y)      dydt = -2*y;  % dy/dt = -2y  end  [t, y] = ode45(@myODE, [0 5], 1);  % Initial condition y(0)=1  plot(t, y);  xlabel('Time');  ylabel('y(t)');  title('Solution to dy/dt = -2y'); `

**40\. Perform symbolic differentiation.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` syms x;  f = x^3 + 2*x^2 + 1;  df = diff(f);  % 3*x^2 + 4*x  df_value = subs(df, x, 2);  % Evaluate at x=2: 3*4 + 4*2 = 20 `

**41\. Create a 3D surface plot.**

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = linspace(-pi, pi, 50);  y = linspace(-pi, pi, 50);  [X, Y] = meshgrid(x, y);  Z = sin(X) + cos(Y);  surf(X, Y, Z);  xlabel('X'); ylabel('Y'); zlabel('Z');  title('z = sin(x) + cos(y)');  colorbar;  shading interp; `

## **Tricky/Conceptual Questions**

**42\. Difference between == and =?**

- \== is **comparison operator** (returns logical true/false)
- \= is **assignment operator** (assigns value to variable)

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` x = 5;      % Assignment  if x == 5   % Comparison      disp('x equals 5');  end `

**43\. Why might 0.1 + 0.2 == 0.3 return false?**Due to floating-point precision limitations:

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` a = 0.1 + 0.2;  % Actually 0.30000000000000004  b = 0.3;        % Actually 0.29999999999999999  a == b          % Returns false  % Solution: Use tolerance  tol = 1e-10;  abs(a - b) < tol  % Returns true `

**44\. How does MATLAB handle floating-point precision?**

- MATLAB uses double-precision by default (64-bit, about 15-16 decimal digits)
- Single-precision available with single() (32-bit, about 7 decimal digits)
- Use eps to find machine epsilon (smallest difference MATLAB can detect)

**45\. What is array broadcasting and when is it used?**Array broadcasting allows operations between arrays of different sizes:

matlab

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML` A = [1 2 3; 4 5 6];  % 2×3 matrix  B = [10; 20];        % 2×1 column vector  C = A + B;           % B is broadcast to match A  % Result: [1+10 2+10 3+10; 4+20 5+20 6+20] = [11 12 13; 24 25 26] `
