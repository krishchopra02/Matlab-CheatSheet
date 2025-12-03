# 📘 Numerical Methods

---

# 1. **Bisection Method**

A bracketing method to find roots by repeatedly halving an interval
containing a sign change.

### **Formula**

Midpoint: \[ m=`\frac{a+b}{2}`{=tex} \]

### **Example**

Find root of ( f(x)=x\^3-x-2 ) in (\[1,2\]).

### **Practice**

- Solve ( `\cos `{=tex}x - x = 0 ) in (\[0,1\]).

---

# 2. **Newton--Raphson Method**

Uses tangent lines to rapidly converge to a root.

### **Formula**

\[ x\_{n+1}=x_n-`\frac{f(x_n)}{f'(x_n)}`{=tex} \]

### **Practice**

- Find root of (x\^3 - 2x - 5) starting from (x_0 = 2).

---

# 3. **Secant Method**

A derivative-free alternative to Newton's method.

### **Formula**

\[ x\_{n+1}=x*n - f(x_n)`\frac{x_n-x*{n-1}}{f(x*n)-f(x*{n-1})}`{=tex} \]

### **Example**

Roots of ( f(x)=x\^2-4 ): start with (x_0=1), (x_1=3).

### **Practice**

- Solve ( e\^x + x = 0 ) using two initial points.

---

# 4. **Fixed Point Iteration**

Rewrite equation as (x=g(x)) and iterate.

### **Formula**

\[ x\_{n+1}=g(x_n) \]

### **Example**

Solve (x = `\cos `{=tex}x).

### **Practice**

- Use (g(x)=`\sqrt{3x+1}`{=tex}) to solve (x\^2-3x-1=0).

---

# 5. **Gaussian Elimination**

Used to solve linear systems by converting to upper triangular form.

### **Example**

Solve: \[ x+y=3,`\quad `{=tex}2x+3y=7 \]

### **Practice**

- Solve a 3×3 system of your choice.

---

# 6. **Gauss--Jordan Elimination**

Reduces matrix to Reduced Row Echelon Form (RREF).

### **Example**

Solve: \[

```{=tex}
\begin{cases}
x+y=2\\
x-y=0
\end{cases}
```

\]

### **Practice**

- Reduce any 3x3 linear system to RREF.

---

# 7. **Gauss--Seidel Iteration**

Iterative method for large linear systems.

### **Formula**

\[
x*i^{(k+1)}=`\frac{1}{a*{ii}}`{=tex}`\left`{=tex}(b_i-`\sum`{=tex}*{j\<i}a*{ij}x_j^{(k+1)}-`\sum`{=tex}*{j\>i}a*{ij}x_j\^{(k)}`\right`{=tex})
\]

### **Example**

Solve: \[ 3x+y=5,`\quad `{=tex}x+3y=4 \]

### **Practice**

- Perform 3 iterations for the above system.

---

# 8. **LU Decomposition**

Factor a matrix into: \[ A = LU \]

### **Example**

Solve 3×3 system using LU factorization.

### **Practice**

- Decompose any 3×3 matrix of your choice.

---

# 9. **Trapezoidal Rule**

Approximates area using trapezoids.

### **Formula**

\[ `\int`{=tex}\_a\^b
f(x),dx`\approx `{=tex}`\frac{h}{2}`{=tex}\[f(x_0)+2f(x_1)+`\cdots`{=tex}+f(x_n)\]
\]

### **Practice**

- Approximate (`\int`{=tex}\_0\^2 x\^2 dx) using (n=4).

---

# 10. **Simpson's 1/3 Rule**

More accurate integration using parabolas.

### **Formula**

\[ `\int`{=tex}\_a\^b f(x),dx `\approx `{=tex}`\frac{h}{3}`{=tex}
\[f_0 + 4f_1 + 2f_2 + 4f_3 + `\dots `{=tex}+ f_n\] \]

_Requires even n._

### **Practice**

- Evaluate (`\int`{=tex}\_0\^3 (x\^3) dx) with (n=6).

---

# 11. **Simpson's 3/8 Rule**

Uses cubic interpolation; works when n is a multiple of 3.

### **Formula**

\[ `\int`{=tex}\_a\^b f(x),dx `\approx `{=tex}`\frac{3h}{8}`{=tex}
\[f_0 + 3f_1 + 3f_2 + 2f_3 + `\dots `{=tex}+ f_n\] \]

### **Practice**

- Approximate (`\int`{=tex}\_0\^1 e\^x dx) with (n=3).

---

# 12. **Euler's Method**

Numerically solves ODEs.

### **Formula**

\[ y\_{n+1}=y_n + h f(x_n,y_n) \]

### **Practice**

- Solve (y' = y - x), (y(0)=1), for 3 steps.

---

# 13. **Runge--Kutta 4 (RK4)**

A high-accuracy ODE solver.

### **Formula**

\[

```{=tex}
\begin{aligned}
k_1 &= f(x_n, y_n) \\
k_2 &= f(x_n + h/2, y_n + h k_1/2) \\
k_3 &= f(x_n + h/2, y_n + h k_2/2) \\
k_4 &= f(x_n + h, y_n + hk_3) \\
y_{n+1} &= y_n + \frac{h}{6}(k_1 + 2k_2 + 2k_3 + k_4)
\end{aligned}
```

\]

### **Practice**

- Apply RK4 to (y' = x+y), (y(0)=1), step (h=0.1).

---

# 14. **Numerical Differentiation**

Finite difference approximations.

### **Formulas**

Forward: \[ f'(x) `\approx `{=tex}`\frac{f(x+h)-f(x)}{h}`{=tex} \]

Backward: \[ f'(x) `\approx `{=tex}`\frac{f(x)-f(x-h)}{h}`{=tex} \]

Central: \[ f'(x) `\approx `{=tex}`\frac{f(x+h)-f(x-h)}{2h}`{=tex} \]

### **Practice**

- Approximate derivative of (f(x)=`\sin `{=tex}x) at (x=`\pi`{=tex}/4)
  with (h=0.01).

---

# 15. **Least Squares Regression**

Fits best line to data.

### **Formula**

\[ y = mx + c \] where \[ m =
`\frac{n\sum xy - (\sum x)(\sum y)}{n\sum x^2 - (\sum x)^2}`{=tex} \] \[
c = `\frac{\sum y - m\sum x}{n}`{=tex} \]

### **Practice**

- Fit a line through points: (1,2), (2,3), (3,5), (4,4).
