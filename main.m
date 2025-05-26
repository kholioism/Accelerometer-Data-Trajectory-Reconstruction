clc; clear; close all;

% Load Data
data = readmatrix('Accelerometer_Dataset.csv');
time = data(:,1);
accX = data(:,2);
accY = data(:,3);

% Task 1: Numerical Double Integration
[vx, x] = integrate_trapezoidal(time, accX);
[vy, y] = integrate_trapezoidal(time, accY);

% Plot results
plot_results(time, accX, vx, x, accY, vy, y);

% Task 2: Polynomial Approximation (Newton + Filtering)
[x_fit, y_fit] = polynomial_fit(time, x, y, 0);
plot_polynomial_fit(time, x, y, x_fit, y_fit);

% Task 3: Root Finding to reach d = 10.5 using interpolated values
distance_fun = @(t_query) ...
    sqrt(interp1(time, x_fit, t_query).^2 + interp1(time, y_fit, t_query).^2) - 10.5;

fprintf('Number of iterations:\n')
tbisect = bisection_method(distance_fun, time(1), time(end), 1e-12);
tnewton = newton_method(distance_fun, @(t) derivative(distance_fun, t), time(round(end/2)), 1e-12);
tsecant = secant_method(distance_fun, time(1), time(end), 1e-12);
tfalse = false_position_method(distance_fun, time(1), time(end), 1e-12);

fprintf('Time to reach 10.5m:\nBisection: %.4f s\nNewton: %.4f s\nSecant: %.4f s\nFalse Position: %.4f s\n', tbisect, tnewton, tsecant, tfalse);
