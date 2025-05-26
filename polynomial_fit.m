function [x_fit, y_fit] = polynomial_fit(t, x, y, ~)
    alpha = 0.2;
    %x = low_pass_filter(x, alpha);
    %y = low_pass_filter(y, alpha);

    % Use subset of points to avoid Runge phenomenon
    subset = round(linspace(1, length(t), 15));
    t_sub = t(subset);
    x_sub = x(subset);
    y_sub = y(subset);

    coeffs_x = newton_divided_diff(t_sub, x_sub);
    coeffs_y = newton_divided_diff(t_sub, y_sub);

    x_fit = eval_newton_poly(coeffs_x, t_sub, t);
    y_fit = eval_newton_poly(coeffs_y, t_sub, t);
end
