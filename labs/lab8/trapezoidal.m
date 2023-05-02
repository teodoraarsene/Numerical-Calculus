function result_integration = trapezoidal(f, a, b, n)
    h = (b - a) / n;
    result = 0.5*f(a) + 0.5*f(b);
    for i = 1:(n-1)
        result = result + f(a + i*h);
    end
    result_integration = h*result;
endfunction