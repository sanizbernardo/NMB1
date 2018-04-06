function F = fMatrix(f, u, N)
h = 1/(N+1);

F = zeros(N+1,N+1);
for i = 1:N+1
    for j = 1:N+1
        F(i,j) = f((i-1)*h,(j-1)*h)*h^2;
    end
    F(i,1) = F(i,1) - u((i-1)*h, 0);
    F(i,N+1) = F(i,N+1) - u((i-1)*h, 1);
end
for i = 1:N+1
    F(1,i) = F(1,i) - u(0, (i-1)*h);
    F(N+1,i) = F(N+1,i) - u(1, (i-1)*h);
end
end