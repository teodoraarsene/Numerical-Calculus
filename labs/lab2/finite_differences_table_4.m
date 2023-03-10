# ex 4
h = 0.25;

x = [];
m = 6;
for i = 0:m
    x = [x 1 + i * h];
end   

f = sqrt(5 * x.^2 + 1);

# get all values of f(x)
table = [f];

prev_table = f;
for i = 1:m
  new_table = [];
  for j = 1:m-i+1
    new_table = [new_table prev_table(j+1) - prev_table(j)];
  endfor
  new_table = [new_table zeros(1, i)];
  table = [table ; new_table];
  prev_table = new_table;
endfor
  
table'
