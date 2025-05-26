function root = bisection_method(f, a, b, tol)
    iter = 0;
    while (b-a)/2 > tol
        c = (a+b)/2;
        if f(c) == 0
            break;
        elseif sign(f(c)) == sign(f(a))
            a = c;
        else
            b = c;
        end
        iter = iter + 1;
    end
    root = (a+b)/2;
    fprintf('Bisection: %d\n',iter);
end
