# ex 3

clear

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

# x = linspace(0, 10, 21);
x = 0 : 0.01 : 10;
f = @(_x) (1 + cos(pi * _x)) ./ (1 + _x);

xx = linspace(0, 10, 21);

plot(x, f(x));

hold on;

res = lagrange(xx, f(xx), x);

plot(x, res, 'r');
