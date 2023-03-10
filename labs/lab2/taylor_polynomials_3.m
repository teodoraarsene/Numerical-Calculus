# ex 3
x = -1 : 0.01 : 3;
n = 6;
prev_term = 1;

hold on;
plot(x, prev_term);

for i = 1:n
  term = prev_term + x .^ i / factorial(i);
  plot(x, term);
  prev_term = term;
end

hold off 