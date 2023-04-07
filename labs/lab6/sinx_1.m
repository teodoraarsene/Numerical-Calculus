# cubic spline interpolation
# ex 1

x = [ 0, pi / 2, pi, 3 * pi / 2, 2 * pi ]; 
f = sin(x);

# a. display at x = pi / 4:
point = pi / 4;
  # value of the function
printf("sin(pi/4) = %d\n", sin(point));

  # the value of the cubic natural spline
s1 = csape(x, f, 'variational'); 
val1 = fnval(s1, point)

  # the value of cubic clamped spline function 
s2 = csape(x, f, 'complete', [1, 1]);
val2 = fnval(s2, point)

# b. plot the graphs of the function, the cubic natural spline and the cubic clamped spline function, in the same figure
xx = 0 : 0.01 : 2 * pi; 
ff = sin(xx);
plot(xx, ff, xx, fnval(s1, xx), xx, fnval(s2, xx))