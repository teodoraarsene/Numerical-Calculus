# least squares approximation
# ex 3

t = [0, 10, 20, 30, 40, 60, 80, 100];
p = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

# a. best liniar least squares polynomial and use it to approximate the pressure P at T = 45
p1 = polyfit(t, p, 1);
val1 = polyval(p1, 45)

# b. 2 different degrees of the polynomials
p2 = polyfit(t, p, 3); 
val2 = polyval(p2, 45)

p3 = polyfit(t, p, 6);
val3 = polyval(p3, 45)

# c. compute the errors P(45) = 0.095848
p = 0.095848;
err1 = abs(p - val1)
err2 = abs(p - val2)
err3 = abs(p - val3)

# d. plot the interpolation points, the 3 least squares approximants and the interpolation polynomial
range = [0 : 0.01 : 100];
plot(t, p, 'x');
hold on;
plot(range, polyval(p1, range), 'r-'); 
hold on;
plot(range, polyval(p2, range), 'g-');
hold on;
plot(range, polyval(p3, range), 'b-');
hold on;

function w_i = compute_W_i(i, x)
  n = length(x);
  p = 1;
  for j = 1:n
    if i ~= j
      p = p * (x(i) - x(j));
    endif
  end
  w_i = 1 / p;
endfunction

function L = lagrange(x, y, xx)  
  n = length(x);
  N = length(xx);
  
  P = zeros(1, n);
  L = zeros(1, N);
  
  for j = 1:N
    s1 = 0;
    s2 = 0;
    for i = 1:n
      P(i) = compute_W_i(i, x);
      s1 = s1 + P(i) * y(i) / (xx(j) - x(i));
      s2 = s2 + P(i) / (xx(j) - x(i));
    endfor
    
  L(j) = s1 / s2;
  end
endfunction

x = linspace(0, 10, 100);
res = lagrange(x, f(x), t);
plot(t, res, 'o');
