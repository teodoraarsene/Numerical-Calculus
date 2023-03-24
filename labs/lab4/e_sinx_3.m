# ex 3
1;
function div_diff = divided_diff(x, y)
  n = length(x);
  div_diff = [y', zeros(n, n-1)];
  for k = 2 : n
    for i = 1 : n-k+1
      div_diff(i, k) = (div_diff(i+1, k-1) - div_diff(i, k-1)) / (x(i+k-1) - x(i));
    endfor
  endfor
endfunction

function nwt = newton(x, y, xx)
  n = length(x) - 1;
  div_diff = divided_diff(x, y);
  
  len_xx = length(xx);
  poly_term = ones(1, len_xx);
  sol = div_diff(1, 1) * ones(1, len_xx);
  
  for j = 1 : len_xx
    for i = 1 : n
      poly_term(j) = poly_term(j) * (xx(j) - x(i));
      sol(j) = sol(j) + poly_term(j) * div_diff(1, i+1);
    endfor
  endfor
  nwt = sol;
endfunction    

f = @(x)(exp(sin(x)));
x = linspace(0,6,13);
y = f(x);

xx = 0 : 0.01 : 6;
nwt = newton(x, y, xx);

#hold on;
plot(x, f(x), 'ob');    # interpolation points
hold on;
plot(xx, f(xx), 'r');   # function plot
hold on;
plot(xx, nwt, 'yg');    # newton interpolation poly