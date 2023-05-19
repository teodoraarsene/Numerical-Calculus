# SOR method

function [x, nit] = sor(A, b, x0, err, maxnit, omega)
  D = diag(diag(A));
  L = (-1) * tril(A, -1);
  U = (-1) * triu(A, 1);
  
  T = inv(1/omega * D - L) * ((1-omega)/omega * D + U);
  c = inv(1/omega * D - L) * b;
  
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