# ex 1
# f:[0, 1] -> R
x = 0 : 0.01 : 1
f = exp(10 * x .* (x - 1)) .* sin(12 * pi * x)
plot(x, f)
plot(x, f, '*')
plot(x, f, 'r')
plot(x, f, '*r')


