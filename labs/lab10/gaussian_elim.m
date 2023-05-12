# ex 2
# gaussian elimination with partial pivoting

function x = gaussian_elim(A, b)
  n = size(A, 1);

  x = zeros(n, 1);
  l = zeros(n, n-1);

  # reduce A to upper triangular form
  for k = 1 : n-1
    # partial-pivoting
    for p = k+1 : n
      if (abs(A(k, k)) < abs(A(p, k)))
        A([k p], :) = A([p k], :);
        b([k p]) = b([p k]);
        endif
    endfor

    # set A to triangular form
    for i = k+1 : n
      l(i, k) = A(i, k) / A(k, k);
        for j = k+1 : n
          A(i, j) = A(i, j) - l(i, k) * A(k, j);
        endfor
        
        b(i) = b(i) - l(i, k) * b(k);
    endfor
  endfor

  for k = 1 : n-1
    for i = k+1 : n
      A(i, k) = 0;
    endfor
  endfor

  # backward substitution of A
  x = backward(A, b);
endfunction
