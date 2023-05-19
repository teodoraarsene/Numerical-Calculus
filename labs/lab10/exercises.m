# examples from the table 
#{
AA = [2 4 2; 0 -1 1; 0 0 -1];
bb = [8; 0; -1];
  
xx = backward(AA, bb)

AA = [1 0 0; 0.5 1 0; 0.5 1 1];
bb = [8; 4; 3];

xx = forward(AA, bb)

AA=[1 -1 1; -2 2 1; -3 -1 5];
bb=[-1 2 -5];

xx = gaussian_elim(AA, bb)
#}


# ex from pdf

printf("ex. 1\n");
n = 3
AA1 = 5 * eye(n) - diag(ones(n-1, 1), -1) - diag(ones(n-1, 1), 1)
bb1 = 3 * ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n)

printf("gaussian elimination:\n");
g1 = gaussian_elim(AA1, bb1)

printf("LUP factorization:\n");
l1 = lup(AA1, bb1)

printf("cholesky factorization:\n");
c1 = cholesky(AA1, bb1)

printf("QR factorization:\n");
q1 = QR(AA1, bb1)

printf("\n#######################################\n\n");

printf("ex. 2\n");
n = 7
AA2 = 5 * eye(n) - diag(ones(n-1, 1), 1) - diag(ones(n-1, 1), -1) - diag(ones(n-3, 1), 3) - diag(ones(n-3, 1), -3)
bb2 = ones(n, 1) + triu(ones(n, 1)) + tril(ones(n, 1), 1-n) + triu(ones(n, 1), -2) + tril(ones(n, 1), 3-n)

printf("gaussian elimination:\n");
g2 = gaussian_elim(AA2, bb2)

printf("LUP factorization:\n");
l2 = lup(AA2, bb2)

printf("cholesky factorization:\n");
c2 = cholesky(AA2, bb2)

printf("QR factorization:\n");
q2 = QR(AA2, bb2)