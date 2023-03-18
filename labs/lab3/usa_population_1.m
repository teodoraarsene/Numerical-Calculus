# ex 1
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

x = 1930 : 10 : 1980;
y = [123203, 131669, 150697, 179323, 203212, 226505];
xx =[1955, 1995];

res = lagrange(x, y, xx);

printf("f(1955) ~= %d \nf(1995) ~= %d \n", res(1), res(2));
