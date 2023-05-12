# ex 3
# solve the system Ax = b using Cholesky factorization

function x = cholesky(A, b)
  U = chol(A);
  y = forward(U', b);
  x = backward(U, y);
endfunction  