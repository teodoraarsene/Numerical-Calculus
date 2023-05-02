# ex 1
# approximate ln 2 with 3 correct decimals
# using the composite rectangle, trapezoidal and Simpson’s rule

fun = @(x) 1/(1+x);
aa = 0;
bb = 1;
nn1 = 13;
nn2 = 14;

res1 = composite_rectangle(fun, aa, bb, nn1);
printf("composite rectangle\n");
printf("ln(2) ~= %.3f\n", res1);

res2 = trapezoidal(fun, aa, bb, nn1);
printf("trapezoidal\n");
printf("ln(2) ~= %.3f\n", res2);

res3 = simpson(fun, aa, bb, nn2);
printf("simpson\n");
printf("ln(2) ~= %.3f\n", res3);
