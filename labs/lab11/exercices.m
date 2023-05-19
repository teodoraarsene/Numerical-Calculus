# ex from pdf

e = 1e-5;
maxit = 100;
omega = 1.2;

printf("ex. 1\n");
n = 3
AA1 = 5 * eye(n) - diag(ones(n-1, 1), -1) - diag(ones(n-1, 1), 1)
bb1 = 3 * ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n)
xx0 = zeros(n,1)

printf("jacobi method:\n");
[j1, it11] = jacobi(AA1, bb1, xx0, e, maxit)

printf("gauss-seidel method:\n");
[gs1, it12] = gauss_seidel(AA1, bb1, xx0, e, maxit)

printf("sor method:\n");
[s1, it13] = sor(AA1, bb1, xx0, e, maxit, omega)

printf("\n#######################################\n\n");

printf("ex. 2\n");
n = 7
AA2 = 5 * eye(n) - diag(ones(n-1, 1), 1) - diag(ones(n-1, 1), -1) - diag(ones(n-3, 1), 3) - diag(ones(n-3, 1), -3)
bb2 = ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n) + triu(ones(n, 1), -2) + tril(ones(n, 1), 3-n)
xx0 = zeros(n,1)

printf("jacobi method:\n");
[j2, it21] = jacobi(AA2, bb2, xx0, e, maxit)

printf("gauss-seidel method:\n");
[gs2, it22] = gauss_seidel(AA2, bb2, xx0, e, maxit)

printf("sor method:\n");
[s2, it23] = sor(AA2, bb2, xx0, e, maxit, omega)