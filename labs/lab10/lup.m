# ex 3
# solve the system Ax = b using LUP factorization

function x = lup(A, b)
  [L, U, P] = lu(A);
  y = forward(L, P*b);
  x = backward(U, y);
endfunction
