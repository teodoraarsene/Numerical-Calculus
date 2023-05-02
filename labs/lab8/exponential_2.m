# ex 2
# approximate integral from 0 to 1 of e^(-e^2) dx using adaptive quadratures

fun = @(x) exp(-(x^2));
aa = 0;
bb = 1;
e = 0.005;
mm = 20;

res1 = adquad(fun, aa, bb, e, @composite_rectangle, mm);
printf("adaptive\n");
printf("e^(-x^2) ~= %.3f\n", res1);

res2 = adquad(fun, aa, bb, e, @trapezoidal, mm);
printf("trapezoidal\n");
printf("e^(-x^2) ~= %.3f\n", res2);

res3 = adquad(fun, aa, bb, e, @simpson, mm);
printf("trapezoidal\n");
printf("e^(-x^2) ~= %.3f\n", res3);
