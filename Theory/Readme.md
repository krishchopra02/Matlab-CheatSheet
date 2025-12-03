# MATLAB

## 1. Introduction to MATLAB

### What is MATLAB?

**MATLAB** stands for **MATrix LABoratory**. It is a high-level programming language and interactive environment developed by MathWorks, primarily used for:

- Numerical computation
- Data analysis and visualization
- Algorithm development
- Mathematical modeling and simulation
- Scientific and engineering calculations

### Key Features:

- Matrix-based language (optimized for matrix operations)
- Built-in functions for mathematical operations
- Excellent visualization and plotting capabilities
- Interpreted language (no compilation needed)
- Extensive toolboxes for specialized applications

### MATLAB Environment Components:

1. **Command Window**: Execute commands interactively
2. **Workspace**: Shows all variables currently in memory
3. **Editor**: Write, edit, and debug scripts and functions
4. **Command History**: Shows previously executed commands
5. **Current Folder**: Displays files in working directory

---

## 2. Variables and Data Types

### Variable Naming Rules:

1. Must start with a letter
2. Can contain letters, digits, and underscores
3. Case-sensitive (`Var` and `var` are different)
4. Maximum 63 characters
5. Cannot use MATLAB keywords (e.g., `if`, `for`, `end`)

### Data Types:

1. **Numeric Types:**

   - `double` (default, 64-bit floating point)
   - `single` (32-bit floating point)
   - `int8`, `int16`, `int32`, `int64` (signed integers)
   - `uint8`, `uint16`, `uint32`, `uint64` (unsigned integers)

2. **Logical:** `true` (1) or `false` (0)

3. **Character and String:**

   - `char` - character array (older)
   - `string` - string array (newer, more features)

4. **Cell Arrays:** Can store different data types

5. **Structures:** Named fields containing different data types

### Variable Scope:

- **Local variables**: Exist only within a function
- **Global variables**: Accessible from any function (declared with `global`)
- **Persistent variables**: Retain value between function calls

---

## 3. Arrays and Matrices

### Matrix vs Array:

- **Matrix**: 2D array specifically
- **Array**: Can be 1D (vector), 2D (matrix), or multi-dimensional

### Row-Major vs Column-Major Order:

MATLAB uses **column-major** order:

- Elements stored column by column in memory
- Accessing columns is faster than rows in loops
- Linear indexing proceeds down columns first

Example:

```
A = [1 2 3; 4 5 6]
Linear indices: 1→1, 2→4, 3→2, 4→5, 5→3, 6→6
```

### Array Operations:

**Matrix operations** (linear algebra):

- `A * B` - Matrix multiplication
- `A ^ 2` - Matrix to the power of 2

**Element-wise operations** (requires `.` operator):

- `A .* B` - Element-wise multiplication
- `A ./ B` - Element-wise division
- `A .^ 2` - Each element squared

### Important Concepts:

- **Broadcasting**: Automatic expansion of arrays for operations
- **Vectorization**: Using array operations instead of loops (faster)
- **Preallocation**: Allocating memory before loops (improves performance)

---

## 4. Control Structures

### Types of Control Structures:

**1. Selection (Conditional):**

- `if-elseif-else-end`
- `switch-case-otherwise-end`

**2. Repetition (Loops):**

- `for` loop - Known number of iterations
- `while` loop - Condition-based repetition
- `break` - Exit loop prematurely
- `continue` - Skip to next iteration

### Loop Efficiency:

- Avoid growing arrays inside loops
- Use vectorization when possible
- Preallocate arrays before loops

---

## 5. Functions

### Types of Functions:

**1. Script Files (.m):**

- Series of commands
- No input/output arguments
- Share workspace with base environment

**2. Function Files (.m):**

- Can have input/output arguments
- Own workspace (local variables)
- Must be saved with function name as filename

**3. Anonymous Functions:**

- Single expression functions
- Created with `@` operator
- Can be stored in variables

**4. Nested Functions:**

- Functions defined inside other functions
- Can access parent function variables

**5. Subfunctions:**

- Multiple functions in one file
- Only first function visible externally

### Function Components:

```matlab
function [out1, out2] = myFunction(in1, in2)
% MYFUNCTION Brief description
%   Detailed help text

    % Function body
    out1 = in1 + in2;
    out2 = in1 * in2;
end
```

### Pass by Value vs Reference:

MATLAB uses **copy-on-write**:

- Variables passed by reference initially
- Copied only when modified inside function
- Efficient for large arrays that aren't modified

---

## 6. File I/O Operations

### Types of File Operations:

**1. MAT Files (.mat):**

- Native MATLAB format
- Binary, compressed
- `save`, `load` commands

**2. Text Files:**

- `fopen`, `fclose` for file handling
- `fprintf`, `fscanf` for formatted I/O
- `fgetl`, `fgets` for reading lines

**3. Data Files:**

- `readmatrix`, `writematrix` for numeric data
- `readtable`, `writetable` for tabular data
- `readcell`, `writecell` for mixed data

### File Access Modes:

- `'r'` - Read only
- `'w'` - Write (overwrite existing)
- `'a'` - Append
- `'r+'` - Read and write

---

## 7. Plotting and Visualization

### Plot Components:

1. **Figure**: Container for plots
2. **Axes**: Coordinate system for data
3. **Plot objects**: Lines, markers, etc.

### Types of Plots:

- **2D plots**: `plot`, `scatter`, `bar`, `histogram`, `pie`
- **3D plots**: `plot3`, `surf`, `mesh`, `contour`
- **Specialized**: `loglog`, `semilogx`, `semilogy`, `polarplot`

### Plot Customization:

- `xlabel`, `ylabel`, `title`
- `legend`
- `grid on/off`
- `xlim`, `ylim` - Set axis limits
- `hold on/off` - Overlay multiple plots

### Figure Handle:

- `gcf` - Get current figure
- `gca` - Get current axes
- `clf` - Clear figure
- `close all` - Close all figures

---

## 8. Error Handling

### Common Errors:

**1. Syntax Errors:**

- Missing `end` statements
- Mismatched brackets/parentheses
- Incorrect function syntax

**2. Runtime Errors:**

- Division by zero
- Dimension mismatch in operations
- Index out of bounds

**3. Logical Errors:**

- Wrong algorithm
- Incorrect conditions
- Off-by-one errors in loops

### Error Handling Constructs:

```matlab
try
    % Code that might cause error
catch ME
    % Handle error
    fprintf('Error: %s\n', ME.message);
end
```

---

## 9. Performance Optimization

### Best Practices:

1. **Vectorize operations** instead of loops
2. **Preallocate arrays** before loops
3. **Avoid growing arrays** dynamically
4. **Use built-in functions** (optimized)
5. **Profile code** to find bottlenecks
6. **Use appropriate data types**
7. **Clear unused variables**
8. **Avoid global variables**

## 10. Advantages and Disadvantages

### Advantages:

1. Easy to learn and use
2. Excellent for matrix operations
3. Rich visualization capabilities
4. Large collection of built-in functions
5. Interactive development environment
6. Extensive documentation
7. Cross-platform compatibility

### Disadvantages:

1. Proprietary (expensive licensing)
2. Slower than compiled languages (C, C++)
3. Limited for general-purpose programming
4. Memory intensive for large datasets
5. Limited support for object-oriented programming
6. Not suitable for embedded systems

---
