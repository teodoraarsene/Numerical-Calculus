a = [ 1 2 13; 4 5 6; 7 8 9]
b = [ 4 8 12; -1 0 5; 2 3 8]
[m, n] = size(a)
t = b'
c = a * b
d = a .* b
e = a.^2
size(a)
length(a)
m = mean(a) # mean of every column
m1 = mean(a, 2) # mean of every row
#g = geomean(a)
s = sum(a)
s1 = sum(a, 2)
p = prod(a)
p1 = prod(a, 2)
max(a)
min(a)
diag(a)
m > 2
a > b
inv(b)
det(b)
f = abs(b)
b = [16 15 24]'
x = a \ b # solves the system a * x = b
triu(a)
tril(a)
m = [2 3 5; 7 11 13; 17 19 23]
m(2,1)
