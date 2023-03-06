# ex 2
t = 0 : 0.01 : 10 * pi
a = 5
b = 7
x = (a + b) * cos(t) - b * cos((a/b + 1) * t)
y = (a + b) * sin(t) - b * sin((a/b + 1) * t)
plot(x, y)
