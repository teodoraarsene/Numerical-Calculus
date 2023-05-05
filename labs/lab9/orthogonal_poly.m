function I = orthogonal_poly(f, m, alpha, beta0, beta)
  J = diag(alpha) + diag(sqrt(beta), -1) + diag(sqrt(beta), 1);
  [v, d] = eig(J);
  nodes = diag(d);
  
  A = []; 
  I = 0;
  for k = 1:m
    A(k) = beta0 * v(1, k)^2;
    I += A(k) * f(nodes(k));
  endfor
  
endfunction