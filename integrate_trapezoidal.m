function [velocity, position] = integrate_trapezoidal(t, a)
    alpha = 0.2;  % Adjust filter strength as needed
    a = low_pass_filter(a, alpha);  % Apply low-pass filter

    n = length(t);
    velocity = zeros(n,1);
    position = zeros(n,1);
    for i = 2:n
        dt = t(i) - t(i-1);
        velocity(i) = velocity(i-1) + 0.5 * (a(i) + a(i-1)) * dt;
        position(i) = position(i-1) + 0.5 * (velocity(i) + velocity(i-1)) * dt;
    end
end
