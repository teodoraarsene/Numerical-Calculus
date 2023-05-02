function result_integration = simpson(f, a, b, n)
   h = (b - a) / n;
   m = n / 2;
   result = (1/3) * (f(a) + f(b));
   for i = 1:m
      result = result + 4/3 * f(a + (2*i-1)*h);
   endfor
   for i = 1:(m-1)
      result = result + 2/3 * f(a + 2*i*h);
   endfor
   result_integration = h*result;
endfunction  
