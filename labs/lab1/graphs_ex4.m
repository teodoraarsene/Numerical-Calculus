# ex 4
x = -1 : 0.01 : 0
f1 = x .^ 3 + (1 - x) .^ 0.5
y = 0.01 : 0.01 : 1
f2 = y .^ 3 - (1 - y) .^ 0.5
plot(x, f1, y, f2)
