function y_interp = eval_newton_poly(coeffs, t_data, t_query)
    n = length(coeffs);
    y_interp = zeros(size(t_query));
    for k = 1:length(t_query)
        y_interp(k) = coeffs(n);
        for i = n-1:-1:1
            y_interp(k) = y_interp(k) * (t_query(k) - t_data(i)) + coeffs(i);
        end
    end
end
