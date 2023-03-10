# ex 5
x = [2 4 6 8];
n = 4;
f = [4 8 14 16];

table = [x ; f];

for i = 2:n
	new_table = [];
	for j = 1:n-i+1
		new_table = [new_table (table(i, j+1) - table(i, j)) / (table(1, j+i-1) - table(1, j))];
	endfor
	new_table = [new_table zeros(1, i-1)];
	table = [table ; new_table];
	prev_table = new_table;
endfor

table'
