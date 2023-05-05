# ex 5
# chebyshev 1

# integral from -1 to 1 of x^2 / (1 - x^2)^(1/2) dx = (pi/2)

f = @(x) x^2;
m = 8;

alpha = zeros(1, m);
beta0 = pi;
beta1 = 1/2;

beta = zeros(1, m-1);
beta += 1/4;
beta(1) = beta1;

I = orthogonal_poly(f, m, alpha, beta0, beta);

printf("chebyshev 1\n");
printf("integral from -1 to 1 of x^2 / (1 - x^2)^(1/2) dx = pi/2 = %.4f\n", pi/2);
printf("integral from -1 to 1 of x^2 / (1 - x^2)^(1/2) dx ~= %.4f\n", I);
