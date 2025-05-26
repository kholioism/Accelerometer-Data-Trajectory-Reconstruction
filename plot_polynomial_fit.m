function plot_polynomial_fit(t, x, y, x_fit, y_fit)
    figure;
    plot(x, y, 'b--'); hold on;
    plot(x_fit, y_fit, 'r'); title('Newton Interpolated Trajectory');
    legend('Original Position', 'Newton Fit'); xlabel('X'); ylabel('Y');
end
