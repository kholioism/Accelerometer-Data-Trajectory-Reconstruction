function df = derivative(f, x)
    h = 1e-5;
    df = (f(x+h) - f(x-h)) / (2*h);
end
