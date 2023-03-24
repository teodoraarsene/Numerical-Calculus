# ex 1 facultative

clear

function u_i = compute_U_i(xi, x)
  n = length(x);
  p = 1;
  for j = 1:n
    p = p * (xi - x(j));
  end
  u_i = p;
endfunction

function l_i = compute_L_i(x, y, xx)  
  n = length(x);
  m = length(xx);
  
  u_i_x = zeros(1, n);
  u_i_x_i = zeros(1, n);
  l_i = zeros(1, m);
  
  for j = 1:m
    s1 = 0;
    s2 = 0;
    for i = 1:n
      u_i_x = compute_U_i(xx(j), x);
      u_i_x_i = compute_U_i(x(i), x);
    endfor
    
  l_i(j) = u_i_x / u_i_x_i;
  end
endfunction


x = -pi/4 : 0.01 : pi/2;
f = cos(x);
xx = [0, pi/4, pi/3];

res = compute_L_i(x, f, xx);

plot(x, res);
