function lab11(cfg, N)
% Lab 11: implement our own integral() using central diff in the middle
% and fwd/bwd diff at the boundary.
% cfg: 1: y = sin(x); 2: y = exp(-x) .* sin(x);
% N: number of samples.

close all;

x = linspace(0, 3, N);

if cfg == 1
    y = sin(x);
else
    y = exp(-x) .* sin(x);
end

dgrad = gradient(y, x);

figure;
plot(x, y, 'r-o');
hold on;
plot(x, dgrad, 'b--s');
legend('f(x)','f''(x)');
grid on;

% Forward Diff
d_fwd = diff(y) ./ diff(x); 
mean(abs(dgrad(1:end-1) - d_fwd))

% Bwd Diff
d_bwd = diff(y) ./ diff(x);
mean(abs(dgrad(2:end) - d_bwd))

% My gradient():
d_mygrad = mygradient(y, x);
e = dgrad - d_mygrad
mean(abs(dgrad - d_mygrad))

figure;
plot(x, dgrad, 'r-o');
hold on;
plot(x(1:end-1), d_fwd, 'b--s');
hold on;
plot(x(2:end), d_bwd, 'k:*');
hold on;
plot(x, d_mygrad, 'g-.', 'LineWidth', 2);
legend('gradient()', 'Forward', 'Backward', 'My gradient()');
grid on;

end



