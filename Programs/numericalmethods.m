
% Numerical Methods Library in MATLAB (.m file)
% Each function implements one numerical method.

%% 1. Bisection Method
function root = bisection(f, a, b, tol, max_iter)
    for i = 1:max_iter
        m = (a + b)/2;
        if f(m) == 0 || (b-a)/2 < tol
            root = m;
            return;
        end
        if f(a)*f(m) < 0
            b = m;
        else
            a = m;
        end
    end
    root = m;
end

%% 2. Newton–Raphson Method
function root = newton(f, df, x0, tol, max_iter)
    x = x0;
    for i = 1:max_iter
        x1 = x - f(x)/df(x);
        if abs(x1 - x) < tol
            root = x1;
            return;
        end
        x = x1;
    end
    root = x;
end

%% 3. Secant Method
function root = secant(f, x0, x1, tol, max_iter)
    for i = 1:max_iter
        x2 = x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0));
        if abs(x2 - x1) < tol
            root = x2;
            return;
        end
        x0 = x1;
        x1 = x2;
    end
    root = x2;
end

%% 4. Fixed Point Iteration
function root = fixed_point(g, x0, tol, max_iter)
    x = x0;
    for i = 1:max_iter
        x1 = g(x);
        if abs(x1 - x) < tol
            root = x1;
            return;
        end
        x = x1;
    end
    root = x;
end

%% 5. Gaussian Elimination
function x = gaussian_elimination(A, b)
    n = length(b);
    for k = 1:n-1
        for i = k+1:n
            m = A[i,k]/A[k,k];
            A[i,k:n] = A[i,k:n] - m*A[k,k:n];
            b[i] = b[i] - m*b[k];
        end
    end
    x = zeros(n,1);
    for i = n:-1:1
        x(i) = (b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end

%% 6. Gauss–Seidel
function x = gauss_seidel(A, b, x0, tol, max_iter)
    n = length(b);
    x = x0;
    for k = 1:max_iter
        x_old = x;
        for i = 1:n
            x(i) = (b(i) - A(i,[1:i-1,i+1:n]) * x([1:i-1,i+1:n])) / A(i,i);
        end
        if norm(x - x_old, inf) < tol
            return;
        end
    end
end

%% 7. LU Decomposition
function [L, U] = lu_decompose(A)
    n = size(A,1);
    L = eye(n);
    U = A;
    for k = 1:n-1
        for i = k+1:n
            L(i,k) = U(i,k)/U(k,k);
            U(i,k:n) = U(i,k:n) - L(i,k)*U(k,k:n);
        end
    end
end

%% 8. Trapezoidal Rule
function result = trapezoidal(f, a, b, n)
    h = (b - a)/n;
    s = 0.5*(f(a) + f(b));
    for i = 1:n-1
        s = s + f(a + i*h);
    end
    result = h * s;
end

%% 9. Simpson 1/3 Rule
function result = simpson13(f, a, b, n)
    h = (b - a)/n;
    s = f(a) + f(b);
    for i = 1:n-1
        if mod(i,2) == 0
            s = s + 2*f(a + i*h);
        else
            s = s + 4*f(a + i*h);
        end
    end
    result = h/3 * s;
end

%% 10. Simpson 3/8 Rule
function result = simpson38(f, a, b, n)
    h = (b - a)/n;
    s = f(a) + f(b);
    for i = 1:n-1
        if mod(i,3) == 0
            s = s + 2*f(a + i*h);
        else
            s = s + 3*f(a + i*h);
        end
    end
    result = 3*h/8 * s;
end

%% 11. Euler Method
function [x, y] = euler(f, x0, y0, h, n)
    x = zeros(1,n+1);
    y = zeros(1,n+1);
    x(1) = x0;
    y(1) = y0;
    for i = 1:n
        y(i+1) = y(i) + h*f(x(i), y(i));
        x(i+1) = x(i) + h;
    end
end

%% 12. Runge–Kutta 4
function [x, y] = rk4(f, x0, y0, h, n)
    x = zeros(1,n+1);
    y = zeros(1,n+1);
    x(1) = x0;
    y(1) = y0;
    for i = 1:n
        k1 = f(x(i), y(i));
        k2 = f(x(i)+h/2, y(i)+h*k1/2);
        k3 = f(x(i)+h/2, y(i)+h*k2/2);
        k4 = f(x(i)+h, y(i)+h*k3);
        y(i+1) = y(i) + (h/6)*(k1+2*k2+2*k3+k4);
        x(i+1) = x(i) + h;
    end
end

%% 13. Numerical Differentiation
function d = diff_forward(f, x, h)
    d = (f(x+h) - f(x)) / h;
end

function d = diff_backward(f, x, h)
    d = (f(x) - f(x-h)) / h;
end

function d = diff_central(f, x, h)
    d = (f(x+h) - f(x-h)) / (2*h);
end

%% 14. Least Squares Regression
function [m, c] = least_squares(x, y)
    n = length(x);
    m = (n*sum(x.*y) - sum(x)*sum(y)) / (n*sum(x.^2) - (sum(x))^2);
    c = (sum(y) - m*sum(x)) / n;
end
