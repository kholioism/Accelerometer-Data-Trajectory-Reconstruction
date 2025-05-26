function root = newton_method(f, df, x0, tol)
    max_iter = 1000;
    i = 0;
    for i = 1:max_iter
        fx = f(x0);
        dfx = df(x0);
        if abs(dfx) < 1e-10, break; end
        x1 = x0 - fx / dfx;
        if abs(x1 - x0) < tol, root = x1; fprintf('Newton: %d\n',i); return; end
        x0 = x1;
    end
    root = x0;
    fprintf('Newton: %d\n',i);
end
