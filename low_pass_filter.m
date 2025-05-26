function filtered = low_pass_filter(data, alpha)
    % Simple exponential low-pass filter
    filtered = zeros(size(data));
    filtered(1) = data(1);
    for i = 2:length(data)
        filtered(i) = alpha * data(i) + (1 - alpha) * filtered(i-1);
    end
end
