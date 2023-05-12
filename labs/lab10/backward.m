# ex 1
# backward substitution for solving an upper triangular linear system

function x = backward(A, b)
  n = size(A, 1);
  x = zeros(n, 1);
  
  x(n) = b(n) / A(n, n);
  
  for i = n-1 : -1 : 1
    s = 0;
    for j = i+1 : n
      s = s + A(i, j) * x(j);
    endfor
    
    x(i) = (b(i) - s) / A(i, i);
  endfor
endfunction
