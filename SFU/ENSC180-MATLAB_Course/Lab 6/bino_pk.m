function theoryout = bino_pk(n, p)
pk = zeros(1, n + 1);
for k = 0 : n
    pk(k + 1) = nchoosek(n, k) * (p^k) * (1 - p)^(n - k);
end
theoryout=pk;
end
