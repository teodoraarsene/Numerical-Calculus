# ex 1
# l1(x) = x
subplot(2, 2, 1);
x = 0 : 0.01 : 1;
l1 = x;
plot(x, l1);

# l2(x) = 3/2 * x^2 - 1/2
subplot(2, 2, 2);
l2 = 3 * x.^2 / 2 - 1/2;
plot(x, l2);

# l3(x) = 5/2 * x^3 - 3/2 * x
subplot(2, 2, 3);
l3 = 5/2 * x.^3 - 3/2 * x;
plot(x, l3);

# l4(x) = 35/8 * x^4 -15/4 * x^2 + 3/8;
subplot(2, 2, 4);
l4 = 35/8 * x.^4 - 15/4 * x.^2 + 3/8;
plot(x, l4);