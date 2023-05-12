# ex 3
# solve the system Ax = b using QR factorization

function x = QR(A, b)
  [Q, R] = qr(A);
  x = backward(R, Q' * b);
endfunction  