# ex 1
# forward substitution for solving a lower triangular linear system

function x = forward(A, b)
  n = size(A, 1);
  x = zeros(n, 1);
  
  x(1) = b(1) / A(1, 1);
  
  for i = 2 : n
    s = 0;
    for j = 1 : i-1
      s = s + A(i, j) * x(j);
    endfor
    
    x(i) = (b(i) - s) / A(i, i);
  endfor
endfunction