function root = secant_method(f, x0, x1, tol)
    max_iter = 1000;
    for i = 1:max_iter
        f0 = f(x0); f1 = f(x1);
        if abs(f1 - f0) < 1e-10, break; end
        x2 = x1 - f1 * (x1 - x0) / (f1 - f0);
        if abs(x2 - x1) < tol, root = x2; fprintf('Secant: %d\n',i); return; end
        x0 = x1; x1 = x2;
    end
    fprintf('Secant: %d\n',i);
    root = x1;
end
