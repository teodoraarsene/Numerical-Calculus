# ex 1
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
  
x = [1 1.5 2 3 4];
y = [0 0.17609 0.30103 0.47712 0.60206];
xx = [2.5 3.25];

# newton interpolation polynomial
nwt = newton(x, y, xx);
printf("lg 2.5 = %d, lg 3.25 = %d \n", nwt(1), nwt(2));

# max interpolation error
i = 10 : 1 : 35;
yi = i ./ 10;
nwt = newton(x, y, yi);
err = max(abs(log10(yi) - nwt));
printf("maximum interpolation error = %d\n", err);