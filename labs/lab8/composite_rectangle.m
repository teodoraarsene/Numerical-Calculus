function result_integration = composite_rectangle(f, a, b, n)
    h = (b - a) / n;
    result = 0;
    for i = 0:(n-1)
        result = result + f(a + (i + 1/2) * h);
    end
    result_integration = h*result;
end