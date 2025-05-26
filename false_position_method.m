function root = false_position_method(f, x0, x1, tol)
    max_iter = 1000;
    if f(x0) * f(x1) > 0
        error('Function has same signs at x0 and x1. Root may not be bracketed.');
    end
    for i = 1:max_iter
        f0 = f(x0); f1 = f(x1);
        x2 = x1 - f1 * (x1 - x0) / (f1 - f0);
        f2 = f(x2);

        if abs(f2) < tol || abs(x2 - x1) < tol
            root = x2;
            fprintf('False Position: %d\n', i);
            return;
        end
        if f0 * f2 < 0
            x1 = x2;
        else
            x0 = x2;
        end
    end

    fprintf('False Position: %d\n', i);
    root = x2;
end
