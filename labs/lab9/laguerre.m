# ex 4
# laguerre

# integral from 0 to inf of x * e^(-x) * sin(x) dx  (= 1/2)

f = @(x) sin(x);
m = 8;

a = 1;

alpha = [a + 1];
beta0 = gamma(a + 1);
beta = [];

k = 1;
while (k < m) 
  alpha(end+1) = 2 * k + a + 1;
  beta(k) = k * (k + a);
  k += 1;
endwhile

I = orthogonal_poly(f, m, alpha, beta0, beta);

printf("laguerre\n");
printf("integral from 0 to inf of x * e^(-x) * sin(x) dx = 1/2 = %.4f\n", 1/2);
printf("integral from 0 to inf of x * e^(-x) * sin(x) dx ~= %.4f\n", I);
