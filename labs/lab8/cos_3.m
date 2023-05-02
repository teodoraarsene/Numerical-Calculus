# ex 3
# approximate integral from 0 to 2*pi of dx / (2 + cos(x)) = 2*pi/3^(1/2)
# using Romberg’s method for the composite trapezoidal rule


### does not work :( ###

f = @(x) (1 / (2 + cos(x)));

function res = romberg(f, a, b, R, n)
  h = @(x) (b-a) / 2^(x-1);
  
  R(1, 1) = (b-a)/2 * (f(a) + f(b));
  
  for i : n
    j = 1;
    while(j != n)
      R(i, j) = 
    endwhile
  endfor
endfunction
