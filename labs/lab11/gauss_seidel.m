# gauss-seidel method

function [x, nit] = gauss_seidel(A, b, x0, err, maxnit)
  D = diag(diag(A));
  L = (-1) * tril(A, -1);
  U = (-1) * triu(A, 1);
  
  T = inv(D - L) * U;
  c = inv(D - L) * b;
  
  x = x0;
  
  nit = 1;
  e = inf;
  
  while nit < maxnit && e > err
    x = T * x0 + c;
    e = norm(x - x0, inf);
    x0 = x;
    nit = nit + 1;
  endwhile
endfunction