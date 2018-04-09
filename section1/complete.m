function U = complete(M, u, N)
h = 1/(N+1);

U = zeros(N+2, N+2);
for i = 1:N+2
    for j = 1:N+2
        if i == 1 || i == N+2 || j == 1 || j == N+2
            U(i, j) = u((i-1)*h,(j-1)*h);
        else
            U(i, j) = M(i-1, j-1);
        end
    end
end
end