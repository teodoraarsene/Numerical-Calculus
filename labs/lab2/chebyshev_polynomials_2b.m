# ex 2 b
# Tn+1(x) = 2 * x * Tn(x) - Tn-1(x)    -1 <= x <= 1
# T0(x) = 1 
# T1(x) = x

n = 10;
x = -1 : 0.01 : 1;
T0 = 1;
T1 = x;

hold on
plot(x, T0, x, T1);

for i = 2:n 
	T2 = 2 * x .* T1 - T0;
	plot(x, T2);
	T0 = T1;
	T1 = T2;
end

hold off