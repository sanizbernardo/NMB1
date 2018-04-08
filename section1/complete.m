function U = complete(M, u, N)
h = 1/(N+1);

x = 1:N+2;
y = 1:N+2;
[X, Y] = meshgrid(x,y);

U = u((X-1).*h, (Y-1).*h);

for i = 1:N+2
    for j = 1:N+2
        if ~(i == 1 || i == N+2 || j == 1 || j == N+2)
            U(i, j) = M(i-1, j-1);
        end
    end
end
end