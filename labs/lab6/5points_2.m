# cubic spline interpolation
# ex 2

[x,y] = ginput(5); # take 5 points
t = 0 : 0.01 : 1;

s = csape(x, y, 'variational');
val = fnval(s, t);

plot(t, val, x, y, 'x');