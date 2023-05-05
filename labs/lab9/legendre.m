# ex 3
# legendre

# integral from -1 to 1 of sin(x^2) dx

f = @(x) sin(x^2);
m = 8;

alpha = zeros(1, m);
beta0 = 2;
beta = [];

k = 1;
while (k < m) 
  beta(k) = (4 - k^(-2))^(-1);
  k += 1;
endwhile

I = orthogonal_poly(f, m, alpha, beta0, beta);

printf("legendre\n");
printf("integral from -1 to 1 of sin(x^2) dx ~= %.4f\n", I);
