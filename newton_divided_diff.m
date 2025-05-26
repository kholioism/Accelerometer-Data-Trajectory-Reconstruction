function coeffs = newton_divided_diff(t, y)
    n = length(t);
    coeffs = y;
    for j = 2:n
        for i = n:-1:j
            coeffs(i) = (coeffs(i) - coeffs(i-1)) / (t(i) - t(i-j+1));
        end
    end
end
