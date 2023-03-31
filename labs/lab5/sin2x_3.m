# ex 2
x = [1 2];
f = [0 0.6931];
f_deriv = [1 0.5];
x0 = 1.5;

function res = hermite(time, dist, velocity, t0)
  len = length(time);

  z = zeros(1, 2*len);
  # put the time values doubled one after the other
  z(1:2:end) = time;
  z(2:2:end) = time;

  f = zeros(1, 2*len);
  # put the distance values doubled one after the other
  f(1:2:end) = dist;
  f(2:2:end) = dist;

  # divided difference table
  div_diff = zeros(2*len, 2*len);
  # first column is the distance doubled
  div_diff(:,1) = f';
  # second column is the velocity(derivative) on the odd positions
  div_diff(1:2:end, 2) = velocity';
  # second column is the divided difference on the even positions
  div_diff(2:2:2*len-1, 2) = (dist(2:len) - dist(1:len-1)) ./ (time(2:len) - time(1:len-1));

  # each column
  for k = 3 : 2*len
    for i = 1 : 2*len - k + 1
      div_diff(i, k) = (div_diff(i+1, k-1) - div_diff(i, k-1)) / (z(i+k-1) - z(i));
    endfor
  endfor

  # hermite
  pr = 1;
  sum = div_diff(1, 1);

  for i = 1:2*len - 1
    pr = pr * (t0 - z(i));
    sum = sum + pr * div_diff(1, i+1);
  endfor

  res = sum;
end

sol = hermite(x, f, f_deriv, x0);
printf("ln(%d) = %d\n", x0, sol)
printf("absolute approximation error: %d\n", abs(log(x0) - sol));