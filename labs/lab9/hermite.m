# ex 1
# hermite

# integral from -inf to inf of e^(-x^2) dx  (= pi^(1/2))

f = @(x) 1;
m = 8;

alpha = zeros(1, m);
beta0 = sqrt(pi);
beta = [];

k = 1;
while (k < m) 
  beta(k) = k / 2;
  k += 1;
endwhile

I = orthogonal_poly(f, m, alpha, beta0, beta);

printf("hermite\n");
printf("integral from -inf to inf of e^(-x^2) dx = pi^(1/2) = %.4f\n", sqrt(pi));
printf("integral from -inf to inf of e^(-x^2) dx ~= %.4f\n", I);
